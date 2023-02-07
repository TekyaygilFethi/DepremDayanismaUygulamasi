import numpy as np
from streamlit_folium import folium_static, st_folium
from helpers import address_helper as ah, streamlit_helper as sh, streamlit_events as se
import streamlit as st

province_list = None, None

payload = {}

def InitComponents():
    global payload, province_list

    province_list = ah.GetProvinceList()

    my_province, my_district, my_open_address, my_latlong = ah.GetCurrentLocationInfo()
    sh.SetInitialStreamlitStates(my_province, my_district, my_open_address, my_latlong)


InitComponents()

st.title("Deprem Dayanışması")
st.caption("Deprem Dayanışması için oluşturulan platform!")

st.info("UYARI: Hata alırsanız lütfen sayfayı yenileyin!")

tab1, tab2 = st.tabs(["Yardım Çağrısı", "Yoğunluk Haritası"])

with tab1:
    folium_static(fig=st.session_state.map, height=200, width=300)

    payload["lat"] = st.text_input("Enlem (Latitude) [ZORUNLU]", key="latitude")

    payload["long"] = st.text_input("Boylam (Longitude) [ZORUNLU]", key="longitude")

    st.button("Enlem ve Boylam'a göre Arama Yap", key="lat_long_button", on_click=se.on_lat_long_button_click)

    payload["province"] = st.selectbox(
        label="İl [ZORUNLU]", options=np.array(province_list), key="province",
        on_change=se.province_changed
    )

    payload["district"] = st.selectbox(
        label="İlçe [ZORUNLU]", options=st.session_state.selectable_districts, index=st.session_state.district_index,
        key="district", on_change=se.district_changed
    )

    payload["address"] = st.text_area(
        label="Adres [ZORUNLU]", key='address', on_change=se.address_changed
    )
    st.checkbox(label="Adresi benim için otomatik doldur", key="is_address_autofill")

    payload["need"] = st.text_area(
        label="İhtiyaç/Açıklama [ZORUNLU]", key="need"
    )

    payload["contact_info"] = st.text_area(
        label="İletişim Bilgileri [OPSİYONEL]", key="contact_info"
    )

    st.button("Gönder", key="submit_button", on_click=se.on_submit_button_click, args=(payload,))
    if st.session_state.is_success:
        st.success('Mesajınız alındı!', icon="✅")
    if st.session_state.is_error:
        st.error(st.session_state.error_message, icon="🚨")
with tab2:
    folium_static(st.session_state.density_map, height=200, width=300)
    st.subheader("İllere Göre Yardım Çağrı Sayısı: ")
    st.text(st.session_state.province_record_counts_str)

    st.subheader("Son yardım çağrıları:")

    col1, col2, col3 = st.columns(3)
    with col1:
        st.text_input("Filtrele", key="filter_text_input")
    with col2:
        st.date_input(label="Başlangıç Tarihi", key="start_date_filter", on_change=se.start_date_filter_changed,
                      value=st.session_state.start_date_value)
    with col3:
        st.date_input(label="Bitiş Tarihi", key="end_date_filter", on_change=se.end_date_filter_changed,
                      value=st.session_state.end_date_value)

    col4, col5, col6 = st.columns(3, gap="small")
    with col4:
        st.button("Filtrele", key="filter_button", on_click=se.filter_click)
    with col5:
        st.button("Filtreyi Temizle", key="clear_filter_button", on_click=se.refresh_click)
    with col6:
        st.button("Yenile", key="refresh_button", on_click=se.refresh_click)

    for rec in st.session_state.last_help_records:
        st.code(rec, language="markdown")

    total_page_count = st.session_state.last_help_record_count / 10
    cols = st.columns(int(total_page_count) + 1)

    for i in range(int(total_page_count) + 1):
        cols[i].button(str(i + 1), on_click=se.pager_button_click, args=(i,))
