CREATE TABLE Addresses (
    Id NOT INT IDENTITY PRIMARY KEY,
    Description NVARCHAR(300) NOT NULL,
    DistrictId INT NOT NULL,
    Latitude NVARCHAR(20),
    Longitude NVARCHAR(20)
) CREATE TABLE Districts (
    Id INT IDENTITY PRIMARY KEY,
    Name NVARCHAR(70) NOT NULL,
    ProvinceId INT NOT NULL
) CREATE TABLE Provinces (
    Id INT IDENTITY PRIMARY KEY,
    Name NVARCHAR(70) NOT NULL,
    IsActive bit
) CREATE TABLE Records (
    Id INT IDENTITY PRIMARY KEY,
    Description NVARCHAR(MAX) NOT NULL,
    AddressId INT NOT NULL,
    ContactDescription NVARCHAR(MAX),
    SendDate datetime
)
INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (1, N 'ADANA', 1);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (2, N 'ADIYAMAN', 1);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (3, N 'AFYON', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (4, N'AĞRI', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (5, N'AMASYA', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (6, N 'ANKARA', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (7, N 'ANTALYA', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (8, N 'ARTVİN', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (9, N 'AYDIN', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (10, N'BALIKESİR', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (11, N'BİLECİK', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (12, N 'BİNGÖL', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (13, N'BİTLİS', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (14, N'BOLU', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (15, N'BURDUR', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (16, N'BURSA', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (17, N 'ÇANAKKALE', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (18, N 'ÇANKIRI', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (19, N'ÇORUM', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (20, N 'DENİZLİ', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (21, N'DİYARBAKIR', 1);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (22, N 'EDİRNE', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (23, N'ELAZIĞ', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (24, N 'ERZİNCAN', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (25, N'ERZURUM', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (26, N'ESKİŞEHİR', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (27, N 'GAZİANTEP', 1);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (28, N 'GİRESUN', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (29, N 'GÜMÜŞHANE', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (30, N'HAKKARİ', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (31, N'HATAY', 1);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (32, N'ISPARTA', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (33, N'İÇEL', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (34, N 'İSTANBUL', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (35, N'İZMİR', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (36, N'KARS', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (37, N 'KASTAMONU', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (38, N'KAYSERİ', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (39, N'KIRKLARELİ', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (40, N'KIRŞEHİR', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (41, N'KOCAELİ', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (42, N 'KONYA', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (43, N'KÜTAHYA', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (44, N'MALATYA', 1);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (45, N 'MANİSA', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (46, N 'KAHRAMANMARAŞ', 1);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (47, N 'MARDİN', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (48, N'MUĞLA', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (49, N'MUŞ', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (50, N 'NEVŞEHİR', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (51, N 'NİĞDE', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (52, N'ORDU', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (53, N'RİZE', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (54, N'SAKARYA', 1);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (55, N 'SAMSUN', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (56, N'SİİRT', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (57, N 'SİNOP', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (58, N'SİVAS', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (59, N'TEKİRDAĞ', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (60, N'TOKAT', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (61, N 'TRABZON', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (62, N 'TUNCELİ', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (63, N 'ŞANLIURFA', 1);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (64, N'UŞAK', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (65, N 'VAN', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (66, N'YOZGAT', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (67, N 'ZONGULDAK', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (68, N'AKSARAY', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (69, N'BAYBURT', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (70, N 'KARAMAN', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (71, N'KIRIKKALE', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (72, N 'BATMAN', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (73, N 'ŞIRNAK', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (74, N 'BARTIN', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (75, N 'ARDAHAN', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (76, N'IĞDIR', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (77, N'YALOVA', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (78, N'KARABÜK', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (79, N'KİLİS', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (80, N 'OSMANİYE', null);

INSERT INTO
    Provinces (Id, Name, IsActive)
VALUES
    (81, N'DÜZCE', null);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (1, N'ALADAĞ', 1);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (2, N 'CEYHAN', 1);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (3, N'ÇUKUROVA', 1);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (4, N'FEKE', 1);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (5, N'İMAMOĞLU', 1);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (6, N'KARAİSALI', 1);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (7, N'KARATAŞ', 1);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (8, N 'KOZAN', 1);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (9, N 'POZANTI', 1);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (10, N'SAİMBEYLİ', 1);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (11, N'SARIÇAM', 1);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (12, N 'SEYHAN', 1);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (13, N 'TUFANBEYLİ', 1);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (14, N'YUMURTALIK', 1);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (15, N'YÜREĞİR', 1);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (16, N 'BESNİ', 2);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (17, N 'ÇELİKHAN', 2);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (18, N'GERGER', 2);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (19, N'GÖLBAŞI', 2);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (20, N'KAHTA', 2);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (21, N'MERKEZ', 2);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (22, N'SAMSAT', 2);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (23, N 'SİNCİK', 2);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (24, N'TUT', 2);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (25, N'BAŞMAKÇI', 3);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (26, N'BAYAT', 3);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (27, N 'BOLVADİN', 3);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (28, N'ÇAY', 3);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (29, N 'ÇOBANLAR', 3);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (30, N'DAZKIRI', 3);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (31, N 'DİNAR', 3);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (32, N'EMİRDAĞ', 3);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (33, N'EVCİLER', 3);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (34, N'HOCALAR', 3);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (35, N 'İHSANİYE', 3);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (36, N'İSCEHİSAR', 3);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (37, N 'KIZILÖREN', 3);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (38, N'MERKEZ', 3);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (39, N 'SANDIKLI', 3);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (40, N 'SİNANPAŞA', 3);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (41, N 'SULTANDAĞI', 3);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (42, N'ŞUHUT', 3);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (43, N 'DİYADİN', 4);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (44, N'DOĞUBAYAZIT', 4);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (45, N'ELEŞKİRT', 4);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (46, N'HAMUR', 4);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (47, N'MERKEZ', 4);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (48, N 'PATNOS', 4);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (49, N'TAŞLIÇAY', 4);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (50, N'TUTAK', 4);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (51, N 'AĞAÇÖREN', 68);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (52, N'ESKİL', 68);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (53, N'GÜLAĞAÇ', 68);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (54, N'GÜZELYURT', 68);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (55, N'MERKEZ', 68);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (56, N'ORTAKÖY', 68);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (57, N'SARIYAHŞİ', 68);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (58, N 'SULTANHANI', 68);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (59, N 'GÖYNÜCEK', 5);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (60, N'GÜMÜŞHACIKÖY', 5);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (61, N'HAMAMÖZÜ', 5);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (62, N'MERKEZ', 5);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (63, N 'MERZİFON', 5);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (64, N'SULUOVA', 5);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (65, N'TAŞOVA', 5);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (66, N'AKYURT', 6);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (67, N 'ALTINDAĞ', 6);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (68, N'AYAŞ', 6);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (69, N'BALA', 6);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (70, N'BEYPAZARI', 6);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (71, N'ÇAMLIDERE', 6);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (72, N 'ÇANKAYA', 6);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (73, N'ÇUBUK', 6);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (74, N'ELMADAĞ', 6);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (75, N'ETİMESGUT', 6);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (76, N 'EVREN', 6);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (77, N'GÖLBAŞI', 6);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (78, N'GÜDÜL', 6);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (79, N 'HAYMANA', 6);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (80, N 'KAHRAMANKAZAN', 6);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (81, N'KALECİK', 6);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (82, N 'KEÇİÖREN', 6);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (83, N'KIZILCAHAMAM', 6);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (84, N'MAMAK', 6);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (85, N 'NALLIHAN', 6);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (86, N'POLATLI', 6);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (87, N'PURSAKLAR', 6);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (88, N 'SİNCAN', 6);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (89, N'ŞEREFLİKOÇHİSAR', 6);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (90, N 'YENİMAHALLE', 6);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (91, N'AKSEKİ', 7);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (92, N'AKSU', 7);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (93, N 'ALANYA', 7);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (94, N'DEMRE', 7);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (95, N'DÖŞEMEALTI', 7);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (96, N'ELMALI', 7);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (97, N 'FİNİKE', 7);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (98, N'GAZİPAŞA', 7);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (99, N 'GÜNDOĞMUŞ', 7);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (100, N'İBRADI', 7);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (101, N'KAŞ', 7);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (102, N'KEMER', 7);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (103, N'KEPEZ', 7);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (104, N 'KONYAALTI', 7);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (105, N'KORKUTELİ', 7);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (106, N'KUMLUCA', 7);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (107, N 'MANAVGAT', 7);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (108, N'MURATPAŞA', 7);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (109, N'SERİK', 7);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (110, N'ÇILDIR', 75);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (111, N'DAMAL', 75);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (112, N'GÖLE', 75);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (113, N 'HANAK', 75);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (114, N'MERKEZ', 75);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (115, N'POSOF', 75);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (116, N 'ARDANUÇ', 8);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (117, N'ARHAVİ', 8);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (118, N'BORÇKA', 8);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (119, N'HOPA', 8);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (120, N'KEMALPAŞA', 8);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (121, N'MERKEZ', 8);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (122, N'MURGUL', 8);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (123, N'ŞAVŞAT', 8);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (124, N'YUSUFELİ', 8);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (125, N 'BOZDOĞAN', 9);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (126, N 'BUHARKENT', 9);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (127, N 'ÇİNE', 9);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (128, N'DİDİM', 9);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (129, N'EFELER', 9);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (130, N 'GERMENCİK', 9);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (131, N 'İNCİRLİOVA', 9);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (132, N'KARACASU', 9);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (133, N'KARPUZLU', 9);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (134, N'KOÇARLI', 9);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (135, N'KÖŞK', 9);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (136, N'KUŞADASI', 9);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (137, N'KUYUCAK', 9);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (138, N 'NAZİLLİ', 9);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (139, N'SÖKE', 9);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (140, N 'SULTANHİSAR', 9);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (141, N 'YENİPAZAR', 9);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (142, N'ALTIEYLÜL', 10);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (143, N'AYVALIK', 10);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (144, N'BALYA', 10);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (145, N 'BANDIRMA', 10);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (146, N'BİGADİÇ', 10);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (147, N 'BURHANİYE', 10);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (148, N 'DURSUNBEY', 10);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (149, N'EDREMİT', 10);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (150, N'ERDEK', 10);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (151, N'GÖMEÇ', 10);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (152, N 'GÖNEN', 10);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (153, N 'HAVRAN', 10);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (154, N 'İVRİNDİ', 10);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (155, N'KARESİ', 10);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (156, N'KEPSUT', 10);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (157, N 'MANYAS', 10);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (158, N'MARMARA', 10);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (159, N'SAVAŞTEPE', 10);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (160, N 'SINDIRGI', 10);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (161, N'SUSURLUK', 10);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (162, N'AMASRA', 74);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (163, N'KURUCAŞİLE', 74);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (164, N'MERKEZ', 74);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (165, N'ULUS', 74);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (166, N'BEŞİRİ', 72);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (167, N'GERCÜŞ', 72);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (168, N 'HASANKEYF', 72);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (169, N'KOZLUK', 72);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (170, N'MERKEZ', 72);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (171, N 'SASON', 72);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (172, N 'AYDINTEPE', 69);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (173, N'DEMİRÖZÜ', 69);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (174, N'MERKEZ', 69);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (175, N'BOZÜYÜK', 11);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (176, N'GÖLPAZARI', 11);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (177, N 'İNHİSAR', 11);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (178, N'MERKEZ', 11);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (179, N 'OSMANELİ', 11);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (180, N'PAZARYERİ', 11);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (181, N'SÖĞÜT', 11);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (182, N 'YENİPAZAR', 11);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (183, N'ADAKLI', 12);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (184, N 'GENÇ', 12);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (185, N'KARLIOVA', 12);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (186, N'KİĞI', 12);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (187, N'MERKEZ', 12);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (188, N 'SOLHAN', 12);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (189, N'YAYLADERE', 12);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (190, N'YEDİSU', 12);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (191, N'ADİLCEVAZ', 13);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (192, N'AHLAT', 13);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (193, N'GÜROYMAK', 13);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (194, N 'HİZAN', 13);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (195, N'MERKEZ', 13);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (196, N'MUTKİ', 13);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (197, N 'TATVAN', 13);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (198, N 'DÖRTDİVAN', 14);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (199, N'GEREDE', 14);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (200, N 'GÖYNÜK', 14);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (201, N'KIBRISCIK', 14);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (202, N 'MENGEN', 14);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (203, N'MERKEZ', 14);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (204, N 'MUDURNU', 14);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (205, N 'SEBEN', 14);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (206, N 'YENİÇAĞA', 14);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (207, N 'AĞLASUN', 15);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (208, N 'ALTINYAYLA', 15);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (209, N'BUCAK', 15);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (210, N'ÇAVDIR', 15);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (211, N'ÇELTİKÇİ', 15);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (212, N'GÖLHİSAR', 15);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (213, N 'KARAMANLI', 15);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (214, N'KEMER', 15);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (215, N'MERKEZ', 15);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (216, N 'TEFENNİ', 15);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (217, N'YEŞİLOVA', 15);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (218, N 'BÜYÜKORHAN', 16);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (219, N'GEMLİK', 16);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (220, N'GÜRSU', 16);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (221, N 'HARMANCIK', 16);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (222, N 'İNEGÖL', 16);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (223, N 'İZNİK', 16);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (224, N'KARACABEY', 16);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (225, N'KELES', 16);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (226, N'KESTEL', 16);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (227, N 'MUDANYA', 16);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (228, N'MUSTAFAKEMALPAŞA', 16);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (229, N 'NİLÜFER', 16);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (230, N 'ORHANELİ', 16);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (231, N 'ORHANGAZİ', 16);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (232, N 'OSMANGAZİ', 16);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (233, N 'YENİŞEHİR', 16);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (234, N'YILDIRIM', 16);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (235, N'AYVACIK', 17);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (236, N'BAYRAMİÇ', 17);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (237, N'BİGA', 17);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (238, N'BOZCAADA', 17);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (239, N 'ÇAN', 17);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (240, N'ECEABAT', 17);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (241, N 'EZİNE', 17);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (242, N'GELİBOLU', 17);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (243, N'GÖKÇEADA', 17);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (244, N'LAPSEKİ', 17);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (245, N'MERKEZ', 17);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (246, N 'YENİCE', 17);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (247, N'ATKARACALAR', 18);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (248, N 'BAYRAMÖREN', 18);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (249, N'ÇERKEŞ', 18);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (250, N 'ELDİVAN', 18);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (251, N'ILGAZ', 18);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (252, N'KIZILIRMAK', 18);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (253, N 'KORGUN', 18);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (254, N 'KURŞUNLU', 18);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (255, N'MERKEZ', 18);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (256, N'ORTA', 18);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (257, N 'ŞABANÖZÜ', 18);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (258, N'YAPRAKLI', 18);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (259, N'ALACA', 19);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (260, N'BAYAT', 19);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (261, N'BOĞAZKALE', 19);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (262, N'DODURGA', 19);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (263, N'İSKİLİP', 19);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (264, N'KARGI', 19);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (265, N 'LAÇİN', 19);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (266, N'MECİTÖZÜ', 19);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (267, N'MERKEZ', 19);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (268, N'OĞUZLAR', 19);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (269, N'ORTAKÖY', 19);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (270, N 'OSMANCIK', 19);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (271, N 'SUNGURLU', 19);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (272, N'UĞURLUDAĞ', 19);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (273, N'ACIPAYAM', 20);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (274, N'BABADAĞ', 20);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (275, N 'BAKLAN', 20);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (276, N'BEKİLLİ', 20);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (277, N'BEYAĞAÇ', 20);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (278, N'BOZKURT', 20);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (279, N 'BULDAN', 20);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (280, N'ÇAL', 20);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (281, N'ÇAMELİ', 20);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (282, N'ÇARDAK', 20);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (283, N'ÇİVRİL', 20);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (284, N 'GÜNEY', 20);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (285, N 'HONAZ', 20);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (286, N'KALE', 20);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (287, N 'MERKEZEFENDİ', 20);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (288, N'PAMUKKALE', 20);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (289, N'SARAYKÖY', 20);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (290, N 'SERİNHİSAR', 20);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (291, N'TAVAS', 20);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (292, N'BAĞLAR', 21);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (293, N'BİSMİL', 21);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (294, N'ÇERMİK', 21);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (295, N 'ÇINAR', 21);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (296, N 'ÇÜNGÜŞ', 21);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (297, N'DİCLE', 21);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (298, N'EĞİL', 21);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (299, N 'ERGANİ', 21);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (300, N 'HANİ', 21);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (301, N'HAZRO', 21);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (302, N 'KAYAPINAR', 21);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (303, N'KOCAKÖY', 21);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (304, N'KULP', 21);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (305, N'LİCE', 21);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (306, N 'SİLVAN', 21);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (307, N'SUR', 21);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (308, N 'YENİŞEHİR', 21);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (309, N'AKÇAKOCA', 81);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (310, N'CUMAYERİ', 81);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (311, N'ÇİLİMLİ', 81);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (312, N'GÖLYAKA', 81);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (313, N'GÜMÜŞOVA', 81);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (314, N 'KAYNAŞLI', 81);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (315, N'MERKEZ', 81);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (316, N'YIĞILCA', 81);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (317, N 'ENEZ', 22);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (318, N'HAVSA', 22);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (319, N'İPSALA', 22);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (320, N 'KEŞAN', 22);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (321, N'LALAPAŞA', 22);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (322, N'MERİÇ', 22);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (323, N'MERKEZ', 22);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (324, N'SÜLOĞLU', 22);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (325, N 'UZUNKÖPRÜ', 22);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (326, N 'AĞIN', 23);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (327, N'ALACAKAYA', 23);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (328, N'ARICAK', 23);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (329, N'BASKİL', 23);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (330, N 'KARAKOÇAN', 23);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (331, N 'KEBAN', 23);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (332, N 'KOVANCILAR', 23);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (333, N 'MADEN', 23);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (334, N'MERKEZ', 23);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (335, N'PALU', 23);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (336, N'SİVRİCE', 23);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (337, N'ÇAYIRLI', 24);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (338, N'İLİÇ', 24);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (339, N'KEMAH', 24);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (340, N'KEMALİYE', 24);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (341, N'MERKEZ', 24);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (342, N'OTLUKBELİ', 24);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (343, N'REFAHİYE', 24);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (344, N 'TERCAN', 24);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (345, N'ÜZÜMLÜ', 24);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (346, N'AŞKALE', 25);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (347, N'AZİZİYE', 25);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (348, N'ÇAT', 25);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (349, N 'HINIS', 25);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (350, N 'HORASAN', 25);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (351, N'İSPİR', 25);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (352, N 'KARAÇOBAN', 25);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (353, N'KARAYAZI', 25);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (354, N'KÖPRÜKÖY', 25);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (355, N 'NARMAN', 25);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (356, N'OLTU', 25);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (357, N'OLUR', 25);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (358, N 'PALANDÖKEN', 25);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (359, N 'PASİNLER', 25);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (360, N'PAZARYOLU', 25);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (361, N 'ŞENKAYA', 25);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (362, N 'TEKMAN', 25);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (363, N'TORTUM', 25);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (364, N 'UZUNDERE', 25);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (365, N'YAKUTİYE', 25);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (366, N'ALPU', 26);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (367, N'BEYLİKOVA', 26);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (368, N'ÇİFTELER', 26);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (369, N 'GÜNYÜZÜ', 26);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (370, N 'HAN', 26);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (371, N 'İNÖNÜ', 26);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (372, N'MAHMUDİYE', 26);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (373, N'MİHALGAZİ', 26);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (374, N'MİHALIÇÇIK', 26);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (375, N 'ODUNPAZARI', 26);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (376, N'SARICAKAYA', 26);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (377, N'SEYİTGAZİ', 26);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (378, N'SİVRİHİSAR', 26);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (379, N'TEPEBAŞI', 26);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (380, N 'ARABAN', 27);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (381, N'İSLAHİYE', 27);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (382, N'KARKAMIŞ', 27);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (383, N 'NİZİP', 27);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (384, N 'NURDAĞI', 27);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (385, N'OĞUZELİ', 27);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (386, N 'ŞAHİNBEY', 27);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (387, N'ŞEHİTKAMİL', 27);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (388, N'YAVUZELİ', 27);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (389, N'ALUCRA', 28);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (390, N 'BULANCAK', 28);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (391, N'ÇAMOLUK', 28);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (392, N 'ÇANAKÇI', 28);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (393, N'DERELİ', 28);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (394, N 'DOĞANKENT', 28);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (395, N'ESPİYE', 28);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (396, N 'EYNESİL', 28);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (397, N'GÖRELE', 28);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (398, N'GÜCE', 28);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (399, N'KEŞAP', 28);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (400, N'MERKEZ', 28);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (401, N'PİRAZİZ', 28);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (402, N 'ŞEBİNKARAHİSAR', 28);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (403, N'TİREBOLU', 28);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (404, N'YAĞLIDERE', 28);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (405, N'KELKİT', 29);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (406, N'KÖSE', 29);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (407, N 'KÜRTÜN', 29);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (408, N'MERKEZ', 29);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (409, N 'ŞİRAN', 29);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (410, N'TORUL', 29);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (411, N'ÇUKURCA', 30);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (412, N'DERECİK', 30);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (413, N'MERKEZ', 30);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (414, N 'ŞEMDİNLİ', 30);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (415, N'YÜKSEKOVA', 30);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (416, N 'ALTINÖZÜ', 31);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (417, N 'ANTAKYA', 31);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (418, N'ARSUZ', 31);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (419, N 'BELEN', 31);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (420, N 'DEFNE', 31);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (421, N'DÖRTYOL', 31);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (422, N 'ERZİN', 31);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (423, N'HASSA', 31);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (424, N 'İSKENDERUN', 31);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (425, N 'KIRIKHAN', 31);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (426, N'KUMLU', 31);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (427, N'PAYAS', 31);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (428, N 'REYHANLI', 31);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (429, N 'SAMANDAĞ', 31);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (430, N'YAYLADAĞI', 31);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (431, N'ARALIK', 76);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (432, N 'KARAKOYUNLU', 76);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (433, N'MERKEZ', 76);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (434, N'TUZLUCA', 76);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (435, N'AKSU', 32);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (436, N'ATABEY', 32);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (437, N'EĞİRDİR', 32);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (438, N 'GELENDOST', 32);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (439, N 'GÖNEN', 32);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (440, N'KEÇİBORLU', 32);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (441, N'MERKEZ', 32);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (442, N 'SENİRKENT', 32);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (443, N'SÜTÇÜLER', 32);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (444, N'ŞARKİKARAAĞAÇ', 32);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (445, N'ULUBORLU', 32);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (446, N'YALVAÇ', 32);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (447, N 'YENİŞARBADEMLİ', 32);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (448, N'ADALAR', 34);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (449, N 'ARNAVUTKÖY', 34);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (450, N'ATAŞEHİR', 34);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (451, N'AVCILAR', 34);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (452, N'BAĞCILAR', 34);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (453, N'BAHÇELİEVLER', 34);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (454, N'BAKIRKÖY', 34);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (455, N'BAŞAKŞEHİR', 34);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (456, N'BAYRAMPAŞA', 34);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (457, N'BEŞİKTAŞ', 34);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (458, N'BEYKOZ', 34);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (459, N'BEYLİKDÜZÜ', 34);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (460, N'BEYOĞLU', 34);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (461, N'BÜYÜKÇEKMECE', 34);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (462, N'ÇATALCA', 34);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (463, N'ÇEKMEKÖY', 34);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (464, N 'ESENLER', 34);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (465, N 'ESENYURT', 34);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (466, N 'EYÜPSULTAN', 34);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (467, N'FATİH', 34);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (468, N 'GAZİOSMANPAŞA', 34);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (469, N 'GÜNGÖREN', 34);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (470, N'KADIKÖY', 34);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (471, N 'KAĞITHANE', 34);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (472, N'KARTAL', 34);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (473, N'KÜÇÜKÇEKMECE', 34);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (474, N'MALTEPE', 34);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (475, N 'PENDİK', 34);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (476, N 'SANCAKTEPE', 34);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (477, N'SARIYER', 34);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (478, N'SİLİVRİ', 34);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (479, N 'SULTANBEYLİ', 34);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (480, N 'SULTANGAZİ', 34);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (481, N'ŞİLE', 34);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (482, N'ŞİŞLİ', 34);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (483, N'TUZLA', 34);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (484, N 'ÜMRANİYE', 34);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (485, N'ÜSKÜDAR', 34);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (486, N 'ZEYTİNBURNU', 34);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (487, N'ALİAĞA', 35);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (488, N'BALÇOVA', 35);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (489, N 'BAYINDIR', 35);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (490, N'BAYRAKLI', 35);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (491, N'BERGAMA', 35);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (492, N'BEYDAĞ', 35);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (493, N 'BORNOVA', 35);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (494, N'BUCA', 35);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (495, N'ÇEŞME', 35);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (496, N'ÇİĞLİ', 35);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (497, N'DİKİLİ', 35);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (498, N'FOÇA', 35);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (499, N'GAZİEMİR', 35);

INSERT INTO
    Districts (Id, Name, ProvinceId)
VALUES
    (500, N'GÜZELBAHÇE', 35);

CREATE FUNCTION FN_SplitString (
    @List nvarchar(max),
    @Delim nvarchar(255)
) RETURNS TABLE AS RETURN (
    SELECT
        [Value]
    FROM
        (
            SELECT
                [Value] = LTRIM(
                    RTRIM(
                        SUBSTRING(
                            @List,
                            [Number],
                            CHARINDEX(@Delim, @List + @Delim, [Number]) - [Number]
                        )
                    )
                )
            FROM
                (
                    SELECT
                        Number = ROW_NUMBER() OVER (
                            ORDER BY
                                name
                        )
                    FROM
                        sys.all_columns
                ) AS x
            WHERE
                Number <= LEN(@List)
                AND SUBSTRING(@Delim + @List, [Number], DATALENGTH(@Delim) / 2) = @Delim
        ) AS y
) 


CREATE PROCEDURE AddNewRecord @Province NVARCHAR(100) = NULL,
@District NVARCHAR(100) = NULL,
@Address NVARCHAR(MAX) = NULL,
@NeedDescription NVARCHAR(100) = NULL,
@ContactInfoDescription NVARCHAR(100) = NULL,
@LAT NVARCHAR(10) = NULL,
@LONG NVARCHAR(10) = NULL 
AS 
BEGIN

DECLARE @ProvinceId INT;

SET
    @ProvinceId = (
        SELECT
            Id
        FROM
            Provinces
        WHERE
            Name = @Province
    );

DECLARE @DistrictId INT;

SET
    @DistrictId = (
        SELECT
            Id
        FROM
            Districts
        WHERE
            Name = @District
            AND ProvinceId = @ProvinceId
    )
INSERT INTO
    Addresses (Description, DistrictId, Latitude, Longitude)
VALUES
    (@Address, @DistrictId, @LAT, @LONG) DECLARE @AddressId INT;

SET
    @AddressId = SCOPE_IDENTITY();

INSERT INTO
    Records (
        Description,
        AddressId,
        ContactDescription,
        SendDate
    )
VALUES
    (
        @NeedDescription,
        @AddressId,
        @ContactInfoDescription,
        GETDATE()
    )
END 


CREATE PROCEDURE GetAllLatLongs @AddressIds NVARCHAR(MAX) = NULL,
@Delimiter NVARCHAR(MAX) = NULL  DECLARE @AddressIdTable TABLE ([Value] NVARCHAR(MAX)) IF @AddressIds IS NOT NULL
BEGIN IF @Delimiter IS NULL
BEGIN
SET
    @Delimiter = ','
END
INSERT INTO
    @AddressIdTable ([Value])
SELECT
    *
FROM
    FN_SplitString(@AddressIds, @Delimiter)
SELECT
    a.Latitude,
    a.Longitude
FROM
    Addresses a
WHERE
    a.Id IN (
        SELECT
            *
        FROM
            @AddressIdTable
    )
END
ELSE BEGIN
SELECT
    a.Latitude,
    a.Longitude
FROM
    Addresses a
END
END 

CREATE PROCEDURE GetHelpRecordCount @Search NVARCHAR(MAX) = NULL,
@StartDate DATETIME = NULL,
@EndDate DATETIME = NULL 
AS 
BEGIN IF @Search = '' BEGIN
SET
    @Search = NULL
END
SELECT
    COUNT(*) AS RecordCount
FROM
    Records r
    JOIN Addresses a on r.AddressId = a.Id
    JOIN Districts d on d.Id = a.DistrictId
    JOIN Provinces p on p.Id = d.ProvinceId
WHERE
    (
        (
            @Search IS NULL
            OR a.Description LIKE '%' + @Search + '%'
        )
        OR (
            @Search IS NULL
            OR p.Name LIKE '%' + @Search + '%'
        )
        OR (
            @Search IS NULL
            OR d.Name LIKE '%' + @Search + '%'
        )
        OR (
            @Search IS NULL
            OR r.Description LIKE '%' + @Search + '%'
        )
        OR (
            @Search IS NULL
            OR r.Description LIKE '%' + @Search + '%'
        )
        OR (
            @Search IS NULL
            OR r.ContactDescription LIKE '%' + @Search + '%'
        )
    )
    AND (
        @StartDate IS NULL
        OR r.SendDate > @StartDate
    )
    AND (
        @EndDate IS NULL
        OR r.SendDate < @EndDate
    )
END 

CREATE PROCEDURE GetHelpRecordCountPerProvince @RecordIds NVARCHAR(MAX) = NULL,
@Delimiter NVARCHAR(MAX) = NULL 
AS 
BEGIN
 DECLARE @RecordIdsTable TABLE ([Value] NVARCHAR(MAX)) IF @RecordIds IS NOT NULL
BEGIN IF @Delimiter IS NULL
BEGIN
SET
    @Delimiter = ','
END
INSERT INTO
    @RecordIdsTable
SELECT
    *
FROM
    FN_SplitString(@RecordIds, @Delimiter)
SELECT
    p.Name,
    COUNT(*) AS RecordCount
FROM
    Records r
    JOIN Addresses a ON a.Id = r.AddressId
    JOIN Districts d ON d.Id = a.DistrictId
    JOIN Provinces p on p.Id = d.ProvinceId
WHERE
    r.Id IN (
        SELECT
            *
        FROM
            @RecordIdsTable
    )
GROUP BY
    p.Name
ORDER BY
    RecordCount DESC
END
ELSE BEGIN
SELECT
    p.Name,
    COUNT(*) AS RecordCount
FROM
    Records r
    JOIN Addresses a ON a.Id = r.AddressId
    JOIN Districts d ON d.Id = a.DistrictId
    JOIN Provinces p on p.Id = d.ProvinceId
GROUP BY
    p.Name
ORDER BY
    RecordCount DESC
END
END


CREATE PROCEDURE GetHelpRecords @PageSize INT = NULL,
@Page INT = NULL,
@Search NVARCHAR(MAX) = NULL,
@StartDate DATETIME = NULL,
@EndDate DATETIME = NULL 
AS 
BEGIN
 IF @PageSize IS NULL
SET
    @PageSize = 10
END
IF @Page IS NULL
BEGIN
SET
    @Page = 0
END
IF @Search = '' BEGIN
SET
    @Search = NULL
END
SELECT
    p.Name AS ProvinceName,
    d.Name AS DistrictName,
    A.Description + '  (' + A.Latitude + ' , ' + A.Longitude + ')' AS Address,
    r.Description AS Need,
    r.ContactDescription,
    r.SendDate,
    a.Id AS AddressId,
    r.Id AS RecordId
FROM
    Records r
    JOIN Addresses a on r.AddressId = a.Id
    JOIN Districts d on d.Id = a.DistrictId
    JOIN Provinces p on p.Id = d.ProvinceId
WHERE
    (
        (
            @Search IS NULL
            OR a.Description LIKE '%' + @Search + '%'
        )
        OR (
            @Search IS NULL
            OR p.Name LIKE '%' + @Search + '%'
        )
        OR (
            @Search IS NULL
            OR d.Name LIKE '%' + @Search + '%'
        )
        OR (
            @Search IS NULL
            OR r.Description LIKE '%' + @Search + '%'
        )
        OR (
            @Search IS NULL
            OR r.Description LIKE '%' + @Search + '%'
        )
        OR (
            @Search IS NULL
            OR r.ContactDescription LIKE '%' + @Search + '%'
        )
        OR (
            @Search IS NULL
            OR a.Latitude LIKE '%' + @Search + '%'
        )
        OR (
            @Search IS NULL
            OR a.Longitude LIKE '%' + @Search + '%'
        )
    )
    AND (
        @StartDate IS NULL
        OR r.SendDate > @StartDate
    )
    AND (
        @EndDate IS NULL
        OR r.SendDate < @EndDate
    )
ORDER BY
    r.SendDate DESC OFFSET (@Page) * @PageSize ROWS FETCH NEXT @PageSize ROWS ONLY
END 


CREATE PROCEDURE GetProvincesAndDistricts 
AS 
BEGIN

SELECT
    d.Name as DistrictName,
    p.Name as ProvinceName
FROM
    Districts d
    JOIN Provinces p ON d.ProvinceId = p.Id
ORDER BY
    p.IsActive;

END