--TELCO QUERY

-- Kotasý limitsiz olan ürünler hangileridir?
SELECT * FROM PRODUCT WHERE QUOTA ='LIMITLESS';

-- Statüsü 'Initial' olan müþterileri bulunuz.
SELECT CUSTOMER_NUM,NAME,SURNAME,STATUS FROM CUSTOMER WHERE STATUS = 'INITIAL';
SELECT * FROM CUSTOMER WHERE STATUS = 'INITIAL';

-- Þehir bilgisi 'ISTANBUL' olan adresleri bulunuz.
SELECT * FROM ADDRESS WHERE CITY = 'Istanbul';

-- Hesap ödeme þekli nakit olmayan hesaplar hangileridir?
SELECT * FROM ACCOUNT WHERE PAYMENT_TYPE! = 'CASH'
ORDER BY 13;

SELECT * FROM ACCOUNT WHERE NOT(PAYMENT_TYPE = 'CASH')
ORDER BY 13;

-- Statüsü deaktif olan müþterilerin baðlantý kesim tarihleri nedir? 
SELECT CUSTOMER_NUM,NAME,SURNAME,DISCONNECTION_DATE FROM customer WHERE STATUS = 'DEACTIVE';

-- Hesap kapanýþ tarihi dolu olan hesaplarý bulunuz.
SELECT * FROM ACCOUNT WHERE ACCOUNT_CLOSING_DATE IS NOT NULL ;

-- Elektronik fatura mail adresi (E_bill_email) olan hesaplar hangileridir? 
SELECT * FROM account WHERE E_BILL_EMAIL IS NOT NULL ;

-- Sözleþme bitiþ tarihi 1 Ocak 2000'den büyük , 1 Ocak 2005'ten küçük olan sözleþmeleri bulunuz.
SELECT * FROM AGREEMENT 
WHERE COMMITMENT_END_DATE > '2000/01/01' AND COMMITMENT_END_DATE < '2005/01/01';

SELECT * FROM AGREEMENT 
WHERE COMMITMENT_END_DATE BETWEEN '2000/01/01' AND '2005/01/01';

-- Sözleþme baþlangýç tarihi Ocak 2010'dan büyük olan sözleþmeleri bulunuz. 
SELECT * FROM AGREEMENT WHERE COMMITMENT_START_DATE > '2010/01/01';

-- Ýsmi E ile baþlayan müþterileri bulunuz
SELECT * FROM CUSTOMER WHERE NAME LIKE 'E%';

-- Product tipi 'DSL' ile biten ürünleri bulunuz. 
SELECT * FROM PRODUCT WHERE PRODUCT_TYPE LIKE '%DSL';

-- Ýsminde ya da soyisminde 'ü' harfi geçen müþteriler hangileridir? 
SELECT * FROM CUSTOMER WHERE NAME LIKE '%ü%' OR SURNAME LIKE '%ü%';

-- Ülke kodu UK ve AU olan adresleri bulunuz.
SELECT * FROM ADDRESS WHERE COUNTRY_CD = 'UK' OR COUNTRY_CD = 'AU';

-- Taahhüt süresi 240 ve 120 ay olan bütün sözleþmeleri bulmak istiyoruz.
SELECT * FROM AGREEMENT WHERE COMMITMENT_DURATION = '240 MONTHS' OR COMMITMENT_DURATION = '120 MONTHS' ORDER BY 11; 

--Sözleþme alt tipi MAIN olan kaç tane sözleþme vardýr?
SELECT  COUNT(SUBTYPE) FROM AGREEMENT WHERE SUBTYPE='MAIN';

-- Ýletiþim tipi olarak email ve statusu kullanýmda olan kaç müþteri var?
SELECT COUNT(*) FROM ACCOUNT WHERE STATUS = 'ACTIVE' AND E_BILL_EMAIL IS NOT NULL;

-- Deaktif müþterilerin sayýsýný bulunuz.
SELECT COUNT(STATUS) FROM CUSTOMER WHERE STATUS = 'DEACTIVE';

-- Birincil iletiþim bilgisi olmayan telefon numaralarýný bulunuz.
SELECT * FROM CONTACT WHERE CNT_TYPE = 'PHONE' AND IS_PRIMARY = 0;

-- 2005 yýlýndan önce yapýlan ve hala aktif olan subscriptionlar hangileridir?
SELECT * FROM subscrýptýon WHERE CREATE_DATE < '01/01/2005' AND STATUS = 'ACTIVE';

















