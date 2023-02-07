import datetime
import streamlit as st
from helpers import folium_helper as fh, address_helper as ah
from services.record_service import RecordService
import numpy as np
from datetime import datetime, timedelta

record_service = RecordService()


def FillHelpRecordString(last_records):
    last_records_list = []
    for rec in last_records:
        last_records_list.append(f"""
                Tarih: {rec[5].strftime("%d/%m/%Y, %H:%M:%S")}   |   İl: {rec[0]}   |   İlçe: {rec[1]}

Adres: {rec[2]}

İhtiyaç: {rec[3]}

İletişim Bilgisi: {rec[4]}
            """)
    return last_records_list


def ValidatePayload(payload):
    if payload is None or len(payload) == 0 or payload["province"] == "" or payload["district"] == "" or payload[
        "address"] == "" or payload["need"] == "" or payload["lat"] == "" or payload["long"] == "":
        PopupError("Lütfen tüm zorunlu alanları doldurun!")
        return False

    return True


def PopupError(error_message):
    st.session_state.is_error = True
    st.session_state.is_success = False
    st.session_state.error_message = error_message


def PopupSuccess():
    st.session_state.is_success = True
    st.session_state.is_error = False


def SetAddressFields(my_province, my_district, my_latlong, my_open_address=None, is_from_lat_long_button=False):
    province_district_dict = ah.GetProvincesAndDistricts()

    if my_open_address is not None:
        st.session_state.address = my_open_address

    if not is_from_lat_long_button:
        st.session_state.latitude = str(my_latlong[0])
        st.session_state.longitude = str(my_latlong[1])

    prev_district = st.session_state.district
    prev_selectable_districts = st.session_state.selectable_districts
    try:
        st.session_state.map = fh.CreateMap(my_latlong, is_marker=True)
        if my_province is not None:
            st.session_state.province = my_province
            st.session_state.selectable_districts = np.array(province_district_dict[my_province])
            if my_district is not None:
                st.session_state.district = my_district
    except:
        st.session_state.district = prev_district
        st.session_state.selectable_districts = prev_selectable_districts


def SetHelpRecordsState(page_size=10, page=0, search=None, start_date=None, end_date=None):
    st.session_state.current_page = page

    last_records = record_service.GetLastHelpRecords(page_size, page, search, start_date, end_date)
    last_records_list = FillHelpRecordString(last_records)

    st.session_state.last_help_record_count = record_service.GetLastHelpRecordCount(search, start_date, end_date)[0]
    st.session_state.last_help_records = last_records_list

    return last_records


def SetInitialStreamlitStates(my_province, my_district, my_open_address, my_latlong):
    province_district_dict = ah.GetProvincesAndDistricts()
    province_list = list(province_district_dict.keys())

    if 'latitude' not in st.session_state:
        st.session_state.latitude = str(my_latlong[0])

    if 'longitude' not in st.session_state:
        st.session_state.longitude = str(my_latlong[1])

    if 'is_success' not in st.session_state:
        st.session_state.is_success = False

    if 'is_error' not in st.session_state:
        st.session_state.is_error = False

    if 'error_message' not in st.session_state:
        st.session_state.error_message = ""

    if 'province' not in st.session_state:
        if my_province is not None or my_province != '':
            st.session_state.province = str(my_province)
        else:
            st.session_state.province = province_list

    if 'district_index' not in st.session_state:
        st.session_state.district_index = 0

    if 'selectable_districts' not in st.session_state:
        prev_district_index = st.session_state.district_index
        prev_selectable_districts = None
        try:
            if my_province is not None and my_district is not None:
                st.session_state.selectable_districts = province_district_dict[my_province]
                st.session_state.district = my_district

            else:
                prev_selectable_districts = st.session_state.selectable_districts
                st.session_state.selectable_districts = province_district_dict[province_list[0]]
        except:
            st.session_state.district_index = prev_district_index
            if prev_selectable_districts is not None:
                st.session_state.selectable_districts = prev_selectable_districts

    if 'address' not in st.session_state:
        st.session_state.address = my_open_address

    if 'map' not in st.session_state and my_latlong is not None:
        st.session_state.map = fh.CreateMap(my_latlong, is_marker=True)

    if 'density_map' not in st.session_state:
        st.session_state.density_map = fh.CreateHeatMap(zoom_start=5)

    if 'province_record_counts_str' not in st.session_state:
        st.session_state.province_record_counts_str = GetProvinceRecordCounts()

    if 'last_help_records' not in st.session_state:
        SetHelpRecordsState()

    if 'current_page' not in st.session_state:
        st.session_state.current_page = 0

    if 'start_date_value' not in st.session_state:
        st.session_state.start_date_value = datetime.today()

    if 'end_date_value' not in st.session_state:
        st.session_state.end_date_value = datetime.today() + timedelta(days=2)

    if 'min_end_data_filter_value' not in st.session_state:
        st.session_state.min_end_data_filter_value = None

    if 'is_filtered' not in st.session_state:
        st.session_state.is_filtered = False

    if 'message_send_date' not in st.session_state:
        st.session_state.message_send_date = datetime.now() - timedelta(minutes=5)


def GetProvinceRecordCounts(recordIds=None):
    # buraya filtre ekleyeğiz
    province_record_counts = record_service.GetAllRecordCountsByProvince(recordIds)

    province_record_count_str = ""
    idx = 0
    for key, value in province_record_counts.items():
        province_record_count_str += f"{key}: {value}           "
        if idx % 3 == 0 and idx > 0:
            province_record_count_str += "\n\n"
        idx += 1
    return province_record_count_str
