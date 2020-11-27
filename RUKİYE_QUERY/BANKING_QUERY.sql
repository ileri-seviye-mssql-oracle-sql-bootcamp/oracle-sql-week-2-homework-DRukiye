
--Yýlýn 4. aylarýnda en çok hangi amaçla kredi çekilmi?tir?
SELECT COUNT(L.purpose),l.purpose FROM TRANSACTIONS T
INNER JOIN ACCOUNTS A ON T.account_ýd = A.account_ýd
INNER JOIN LOANS L ON L.account_ýd = A.account_ýd
WHERE L.month = 4
group by l.purpose;

--Hangi yýllarda kaç hesap açýlmýþtýr?
select count(account_ýd) as Hesap_Numarasý ,year as Yýl from accounts group by year order by 2 ;

-- Ýþlemlerin tiplerine göre toplam sayýlarýnýn büyükten küçüðe sýralamasý nedir?-
select count(type) as ISLEM_SAYISI, type AS ISLEM_TURU from transactýons group by type;

-- Ýþlemlerin tiplerine göre toplam tutarlarýnýn büyükten küçüðe sýralamasý nedir?
select COUNT(BALANCE)AS TOPLAM_TUTAR ,TYPE AS ISLEM_TUR FROM transactýons GROUP BY TYPE ORDER BY 1;

-- Bankanýn 50 ve ya 51 yaþýnda kadýn müþterilerinden ayný isme sahip olan müþterisi/müþterileri var mý? Varsa isimleri neler?
select COUNT(DISTINCT FIRST),FIRST from clýents
where AGE BETWEEN 50 AND 51
AND SEX = 'Female'
GROUP BY FIRST;