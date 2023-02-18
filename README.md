
# Deprem Dayanışması

Ülkecek geçirdiğimiz bu kara ve yaslı günlerde birbirimize bir nebze olsun ulaşabilmek ve yardım edebilmek adına yaptığım Deprem Dayanışma projesinin amacı, kişilerin konumlatıyla beraber ihtiyaçlarını paylaşabilmesi ve ihtiyaç sahiplerinin harita üzerinde görünüp analizinin yapılmasıdır.

# TO-DO
[ ] Pager yapısı geliştirilecek

[ ] Uygulama çalışırken bazı noktalarda kararlı davranmıyor, araştırılacak

[ ] Haritalar responsive hale getirilecek. Bu aşamada haritalar responsive olmadığı için mobile daha çok uyumlu olsun diye boyutu küçük oluşturuldu

# Site
https://depremdayanismasi.streamlit.app/ sitesi KVKK nedeniyle inaktif edilmiştir.

# Süreç Nasıl İşliyor?

Uygulama 2 sekmeden oluşuyor.

## Yardım Çağrısı Sekmesi
Yardım Çağrısı sekmesi, konumla beraber ihtiyacınızı veya mesajınız girmenizi sağlar. İster kendiniz ister endişe ettiğiniz yakınlarınız için paylaşımda bulunabilirsiniz.

Sistem açılır açılmaz konumunuz varsayılan olarak işaretli gelir. (Konum bulunurken ip kullanıldığı için şaşmalar olabilmektedir)

- Enlem: Enlem alanı zorunlu alandır ancak elle girmek zorunda değilsiniz. Adres alanına bir adres girdiğinizde enlem alanı otomatik dolmaktadır

- Boylam: Boylam alanı zorunlu alandır ancak elle girmek zorunda değilsiniz. Adres alanına bir adres girdiğinizde enlem alanı otomatik dolmaktadır

- Enlem ve boylam alanlarını elle girebilirsiniz. Bu alanları doldurduktan sonta Enlem ve boylam'a göre Arama Yap butonuna basarsanız bu enlem ve boylam koordinatları baz alınır. Ancak dikkat etmeniz gereken şey, bu koordinatlar Türkiye dışındaysa İl varsayılan olarak İstanbul, ilçe Esenyurt ve adres de İstanbul olarak değiştirilmektedir. Harita girdiğiniz enlem ve boylam değerini gösterir

- İl: Zorunlu alandır

- İlçe: Zorunlu alandır

- Adres: Bu alan zorunludur. Koordinat girip otomatik doldurtmanın yanı sıra kendiniz de bir girdi girip otomatik adres doldurtabilirsiniz. Eğer Adresi benim için otomatik doldur derseniz yazdığınız prompt'a göre adres otomatik olarak tamamlanmaktadır. Eğer bu checkbox seçili değilse yazdığınız adres otomatik tamamlanmayacaktır. Bunu test edebilmek için adres kısmına Cevahir AVM yazıp test gerçekleştirebilirsiniz

- İhtiyaç/Açıklama: Bu alan zorunludur. İhtiyacınız ve mesajınızı bu alana yazabilirsiniz.

- İletişim Bilgileri: Bu alan opsiyoneldir. Sizin veya adına yazdığınız sevdikleriniz için iletişim bilgierinin bulunduğu kısımdır. bu alanlar public olarak depolanmaktadır ve herkes tarafından görülebilmektedir.

- Gönder butonuna bastığınızda mesajınız sisteme kaydolmaktadır. 2 dakika sıklıkla mesaj gönderebileceğiniz. unutmayın. 

## Yoğunluk Haritası

Bu sekmede ise gönderilen mesajların konumları harita üzerinde ısı haritası olarak görülebilmektedir. Bu bilginin dışında gönderilen tüm mesajları bu sekmede görebilir ve filtreleyebilirsiniz.

### İllere Göre Yardım Çağrı Sayısı:
İl başına kaç mesaj gönderildiğinin gösterildiği kısımdır

### Son Yardım Çağrıları
Bu kısım gönderilen tüm mesajların detaylarıyla beraber gösterildiği bölümdür. Burada gönderilen mesajları 3 kritere göre filtreleyebilirsiniz:
    - Filtrele Alanı: burada herhangi bir text girip bu text üzerinden filtreleme yapabilirsiniz
    - Başlangış Tarihi: Tarih filtresi için başlangıç tarihinin verildiği kısımdır
    - Bitiş Tarihi: Tarih filtresi için bitiş tarihinin verildiği kısımdır

Bu alanların altında 3 buton bulunmaktadır:
    - Filtrele: Filtre kriterlerinizi girdikten sonra bu butona basarsınız veriler filtrelenir
    - Filtreyi Temizle: Yaptığınız filtreyi kaldırıp tüm veirlein tekrar yüklenmesini sağlar
    - Yenile: Sayfaya girdiğiniz andan sonra gönderilen mesajları hem haritada, hem il mesaj sayaç ekranında hem de listede görebilmenizi sağlar

Ekranın en altında ise sayfalamayı sağlayan butonlar bulunmaktadır.

# Hangi Teknolojiler ve Kütüphaneler Kullanıldı?
- Python
- MSSQL (pyodbc)
- Stored Procedure
- Redis
- Streamlit
- Google Maps API
- Folium

# Demo

1. Uygulamayı ayağa kaldırmak için aşağıdaki alanların doldurulduğu bir .env dosyası oluşturmalısınız:
```bash
MSSQL_CONNECTION_STRING='......'
GOOGLE_MAPS_API_KEY='.......'
GOOGLE_MAPS_BASE_URL='........'
REDIS_HOST='.........'
REDIS_PORT='....'
REDIS_DB='0'
REDIS_PASSWORD='.......'
```

2. Veritabanını migrate edebilmek için db/seed_queries/initial_seed.sql scriptini MSSQL bir veritabanında çalıştırmalısınız


# SON SÖZ
Uygulamada eksik olarak gördüğünüz kısımlar için PR açabilirsiniz. Umuyorum ki bu kara günleri birlik, beraberlik ve dayanışmayla atlatacağız.

