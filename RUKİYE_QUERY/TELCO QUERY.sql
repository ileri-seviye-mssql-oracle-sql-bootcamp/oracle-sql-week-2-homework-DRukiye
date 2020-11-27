--TELCO QUERY

-- Kotas� limitsiz olan �r�nler hangileridir?
SELECT * FROM PRODUCT WHERE QUOTA ='LIMITLESS';

-- Stat�s� 'Initial' olan m��terileri bulunuz.
SELECT CUSTOMER_NUM,NAME,SURNAME,STATUS FROM CUSTOMER WHERE STATUS = 'INITIAL';
SELECT * FROM CUSTOMER WHERE STATUS = 'INITIAL';

-- �ehir bilgisi 'ISTANBUL' olan adresleri bulunuz.
SELECT * FROM ADDRESS WHERE CITY = 'Istanbul';

-- Hesap �deme �ekli nakit olmayan hesaplar hangileridir?
SELECT * FROM ACCOUNT WHERE PAYMENT_TYPE! = 'CASH'
ORDER BY 13;

SELECT * FROM ACCOUNT WHERE NOT(PAYMENT_TYPE = 'CASH')
ORDER BY 13;

-- Stat�s� deaktif olan m��terilerin ba�lant� kesim tarihleri nedir? 
SELECT CUSTOMER_NUM,NAME,SURNAME,DISCONNECTION_DATE FROM customer WHERE STATUS = 'DEACTIVE';

-- Hesap kapan�� tarihi dolu olan hesaplar� bulunuz.
SELECT * FROM ACCOUNT WHERE ACCOUNT_CLOSING_DATE IS NOT NULL ;

-- Elektronik fatura mail adresi (E_bill_email) olan hesaplar hangileridir? 
SELECT * FROM account WHERE E_BILL_EMAIL IS NOT NULL ;

-- S�zle�me biti� tarihi 1 Ocak 2000'den b�y�k , 1 Ocak 2005'ten k���k olan s�zle�meleri bulunuz.
SELECT * FROM AGREEMENT 
WHERE COMMITMENT_END_DATE > '2000/01/01' AND COMMITMENT_END_DATE < '2005/01/01';

SELECT * FROM AGREEMENT 
WHERE COMMITMENT_END_DATE BETWEEN '2000/01/01' AND '2005/01/01';

-- S�zle�me ba�lang�� tarihi Ocak 2010'dan b�y�k olan s�zle�meleri bulunuz. 
SELECT * FROM AGREEMENT WHERE COMMITMENT_START_DATE > '2010/01/01';

-- �smi E ile ba�layan m��terileri bulunuz
SELECT * FROM CUSTOMER WHERE NAME LIKE 'E%';

-- Product tipi 'DSL' ile biten �r�nleri bulunuz. 
SELECT * FROM PRODUCT WHERE PRODUCT_TYPE LIKE '%DSL';

-- �sminde ya da soyisminde '�' harfi ge�en m��teriler hangileridir? 
SELECT * FROM CUSTOMER WHERE NAME LIKE '%�%' OR SURNAME LIKE '%�%';

-- �lke kodu UK ve AU olan adresleri bulunuz.
SELECT * FROM ADDRESS WHERE COUNTRY_CD = 'UK' OR COUNTRY_CD = 'AU';

-- Taahh�t s�resi 240 ve 120 ay olan b�t�n s�zle�meleri bulmak istiyoruz.
SELECT * FROM AGREEMENT WHERE COMMITMENT_DURATION = '240 MONTHS' OR COMMITMENT_DURATION = '120 MONTHS' ORDER BY 11; 

--S�zle�me alt tipi MAIN olan ka� tane s�zle�me vard�r?
SELECT  COUNT(SUBTYPE) FROM AGREEMENT WHERE SUBTYPE='MAIN';

-- �leti�im tipi olarak email ve statusu kullan�mda olan ka� m��teri var?
SELECT COUNT(*) FROM ACCOUNT WHERE STATUS = 'ACTIVE' AND E_BILL_EMAIL IS NOT NULL;

-- Deaktif m��terilerin say�s�n� bulunuz.
SELECT COUNT(STATUS) FROM CUSTOMER WHERE STATUS = 'DEACTIVE';

-- Birincil ileti�im bilgisi olmayan telefon numaralar�n� bulunuz.
SELECT * FROM CONTACT WHERE CNT_TYPE = 'PHONE' AND IS_PRIMARY = 0;

-- 2005 y�l�ndan �nce yap�lan ve hala aktif olan subscriptionlar hangileridir?
SELECT * FROM subscr�pt�on WHERE CREATE_DATE < '01/01/2005' AND STATUS = 'ACTIVE';

















