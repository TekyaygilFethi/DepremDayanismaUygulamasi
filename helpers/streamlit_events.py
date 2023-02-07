import streamlit as st
from helpers.db_helper import DbHelper
from helpers import streamlit_helper as sh, address_helper as ah, folium_helper as fh
import numpy as np
from services.record_service import RecordService
from datetime import datetime, timedelta
from math import ceil

db_helper = DbHelper()
record_service = RecordService()


def province_changed():
    selected_province = st.session_state.province
    province_district_dict = ah.GetProvinceDistrictDict()
    st.session_state.selectable_districts = np.array(province_district_dict[selected_province])
    st.session_state.district_index = 0


def district_changed():
    selected_district = st.session_state.district
    my_province, my_district, my_open_address, my_latlong = ah.GetCurrentLocationInfo(
        address=selected_district)

    if my_latlong is not None and len(my_latlong) == 2:
        sh.SetAddressFields(my_province, my_district, my_latlong)


def address_changed():
    if len(st.session_state['address']) > 5:
        my_province, my_district, my_open_address, my_latlong = ah.GetCurrentLocationInfo(
            address=st.session_state.address)
        if my_latlong is not None and len(my_latlong) == 2:
            if not st.session_state.is_address_autofill:
                my_open_address = None
            sh.SetAddressFields(my_province, my_district, my_latlong, my_open_address)


def on_submit_button_click(payload):
    diff_seconds = (datetime.now() - st.session_state.message_send_date).total_seconds()
    if diff_seconds > 120:
        if sh.ValidatePayload(payload):
            sp_values = (payload["province"], payload["district"], payload["address"],
                         payload["need"], payload["contact_info"], payload["lat"], payload["long"])
            db_helper.ExecuteQuery(
                "EXEC AddNewRecord @Province = ?,@District = ?,@Address = ?,@NeedDescription = ?,@ContactInfoDescription = ?, @LAT = ?, @LONG = ? ",
                sp_values, is_sp=False)

            sh.PopupSuccess()

            sh.SetHelpRecordsState()
            st.session_state.message_send_date = datetime.now()
    else:
        sh.PopupError(
            f"Bu kadar sık mesaj gönderemezsiniz. Lütfen {ceil((diff_seconds / 60) + 1)} dakika sonra tekrar deneyin")


def on_lat_long_button_click():
    my_province, my_district, my_open_address, my_latlong = ah.GetCurrentLocationInfo(
        lat_long=[st.session_state.latitude, st.session_state.longitude])

    sh.SetAddressFields(my_province, my_district, my_latlong, my_open_address, True)


def pager_button_click(i):
    filter_text = st.session_state.filter_text_input
    start_date, end_date = None, None
    if st.session_state.is_filtered:
        start_date = st.session_state.start_date_filter
        end_date = st.session_state.end_date_filter

    sh.SetHelpRecordsState(page=i, search=filter_text, start_date=start_date, end_date=end_date)


def refresh_click():
    st.session_state.is_filtered = False
    sh.SetHelpRecordsState(page=st.session_state.current_page)
    # last_records = record_service.GetLastHelpRecords(page=i)
    # st.session_state.last_help_records = sh.FillHelpRecordString(last_records)

    st.session_state.density_map = fh.CreateHeatMap(zoom_start=5)
    st.session_state.province_record_counts_str = sh.GetProvinceRecordCounts()


def start_date_filter_changed():
    st.session_state.start_date_value = st.session_state.start_date_filter
    if st.session_state.start_date_value > st.session_state.end_date_filter:
        st.session_state.end_date_value = st.session_state.start_date_value + timedelta(days=1)


def end_date_filter_changed():
    st.session_state.end_date_value = st.session_state.end_date_filter
    if st.session_state.end_date_value < st.session_state.start_date_value:
        st.session_state.start_date_value = st.session_state.end_date_value + timedelta(-1)


def filter_click():
    filter_text = st.session_state.filter_text_input
    start_date = st.session_state.start_date_filter
    end_date = st.session_state.end_date_filter
    st.session_state.is_filtered = True

    last_records = sh.SetHelpRecordsState(search=filter_text, start_date=start_date, end_date=end_date)
    address_ids = ','.join([str(i[6]) for i in last_records])

    st.session_state.density_map = fh.CreateHeatMap(address_ids, zoom_start=5)

    record_ids = ','.join([str(i[7]) for i in last_records])

    st.session_state.province_record_counts_str = sh.GetProvinceRecordCounts(record_ids)
