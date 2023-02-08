from collections import defaultdict
from .db_helper import DbHelper
from .string_helper import tr_upper
import os
import requests
from services.redis_service import RedisService
import models.GLOBALS as GLOBALS
import json

db_helper = DbHelper()
redis_client = RedisService()


def GetProvincesAndDistricts():
    sql_result = db_helper.ExecuteQuery("EXEC GetProvincesAndDistricts", is_sp=True)
    province_district_dict = defaultdict(list)

    for district in sql_result:
        province_district_dict[district[1]].append(district[0])

    return province_district_dict


def GetCurrentLocationInfo(address=None, lat_long=None):
    my_province, my_district, my_open_address = None, None, None
    if lat_long is not None:
        my_province, my_district, my_open_address = __GetLocationInfoByLatLong(lat_long)
    else:
        if address is None:
            address = "İstanbul"

        base_url = os.getenv('GOOGLE_MAPS_BASE_URL')
        endpoint = f"{base_url}?address={address}&key={os.getenv('GOOGLE_MAPS_API_KEY')}"
        r = requests.get(endpoint)
        if r.status_code not in range(200, 299):
            return None, None, None, None

        try:
            results = r.json()['results'][0]
            lat = results['geometry']['location']['lat']
            long = results['geometry']['location']['lng']
            lat_long = [lat, long]
            my_province, my_district, my_open_address = __GetLocationInfoByLatLong(lat_long)
        except:
            pass

    my_province, my_district, my_open_address = __CheckProvinceAvailability(my_province, my_district, my_open_address)

    return my_province, my_district, my_open_address, lat_long


def __CheckProvinceAvailability(my_province, my_district, my_open_address):
    my_province_and_districts = GetProvinceDistrictDict()

    if my_province not in my_province_and_districts:
        my_province = "İSTANBUL"
        my_district = "ESENYURT"
        my_open_address = "İstanbul"
    else:
        if not any(my_district in districts for districts in my_province_and_districts.values()):
            my_district = my_province_and_districts[my_province][0]


    return (my_province, my_district, my_open_address)


def __GetLocationInfoByLatLong(lat_long):
    if lat_long is not None and len(lat_long) == 2:
        base_url = os.getenv('GOOGLE_MAPS_BASE_URL')
        latlong_param = ','.join([str(i) for i in lat_long])
        endpoint = f"{base_url}?latlng={latlong_param}&key={os.getenv('GOOGLE_MAPS_API_KEY')}"
        r = requests.get(endpoint)
        if r.status_code not in range(200, 299):
            return None, None, None

        my_province, my_district, my_open_address = None, None, None
        try:
            results = r.json()['results'][0]
            my_province = tr_upper(
                [i["long_name"] for i in results["address_components"] if "administrative_area_level_1" in i["types"]][
                    0])

            my_district = tr_upper(
                [i["long_name"] for i in results["address_components"] if
                 "sublocality" in i["types"] or "administrative_area_level_2" in i["types"]][0])
            my_open_address = results["formatted_address"]
        except:
            pass

        return (my_province, my_district, my_open_address)


def GetAllLatLongs(addressIds=None):
    sql_result = db_helper.ExecuteQuery("EXEC GetAllLatLongs @AddressIds = ?", values=(addressIds,),
                                        is_sp=True)

    lat_long_list = []

    for district in sql_result:
        lat_long_list.append((float(district[0]), float(district[1])))

    return lat_long_list


def GetProvinceDistrictDict():
    province_district_dict = redis_client.Get(GLOBALS.PROVINCE_DISTRICT_DICT_CACHE_KEY)
    if province_district_dict is None:
        province_district_dict = GetProvincesAndDistricts()
        redis_client.Set(GLOBALS.PROVINCE_DISTRICT_DICT_CACHE_KEY, json.dumps(province_district_dict))
    else:
        province_district_dict = json.loads(province_district_dict)

    return province_district_dict


def GetProvinceList():
    province_district_dict = GetProvinceDistrictDict()
    province_list = redis_client.Get(GLOBALS.PROVINCE_LIST_CACHE_KEY)
    if province_list is None:
        province_list = list(province_district_dict.keys())
        redis_client.Set(GLOBALS.PROVINCE_LIST_CACHE_KEY, json.dumps(province_list))
    else:
        province_list = json.loads(province_list)

    return province_list
