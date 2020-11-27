
--Y�l�n 4. aylar�nda en �ok hangi ama�la kredi �ekilmi?tir?
SELECT COUNT(L.purpose),l.purpose FROM TRANSACTIONS T
INNER JOIN ACCOUNTS A ON T.account_�d = A.account_�d
INNER JOIN LOANS L ON L.account_�d = A.account_�d
WHERE L.month = 4
group by l.purpose;

--Hangi y�llarda ka� hesap a��lm��t�r?
select count(account_�d) as Hesap_Numaras� ,year as Y�l from accounts group by year order by 2 ;

-- ��lemlerin tiplerine g�re toplam say�lar�n�n b�y�kten k����e s�ralamas� nedir?-
select count(type) as ISLEM_SAYISI, type AS ISLEM_TURU from transact�ons group by type;

-- ��lemlerin tiplerine g�re toplam tutarlar�n�n b�y�kten k����e s�ralamas� nedir?
select COUNT(BALANCE)AS TOPLAM_TUTAR ,TYPE AS ISLEM_TUR FROM transact�ons GROUP BY TYPE ORDER BY 1;

-- Bankan�n 50 ve ya 51 ya��nda kad�n m��terilerinden ayn� isme sahip olan m��terisi/m��terileri var m�? Varsa isimleri neler?
select COUNT(DISTINCT FIRST),FIRST from cl�ents
where AGE BETWEEN 50 AND 51
AND SEX = 'Female'
GROUP BY FIRST;