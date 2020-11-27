--SALES QUERY

-- Birim fiyat� 150'den b�y�k olan order_itemlar� bulunuz. 
select * from order_�tems where UNIT_PRICE >150;

-- ��e al�m tarihi May�s 2016 olan �al��anlar� bulunuz.
SELECT * FROM EMPLOYEES WHERE HIRE_DATE BETWEEN '01/05/2016' AND '30/05/2016';

-- Ad� Charlie ya da Charlsie olan contactlar� bulunuz.
SELECT * FROM CONTACTS WHERE FIRST_NAME = 'Charlie' OR FIRST_NAME = 'Charlsie' ;

-- Adet say�s� 10dan b�y�k 50den k���k envanterleri bulunuz.
SELECT * FROM INVENTORIES WHERE QUANTITY > 10 AND QUANTITY<50;

-- Manager'� olmayan �al��anlar hangileridir? 
SELECT * FROM EMPLOYEES WHERE MANAGER_ID IS NULL;

-- State bilgisi bo� olan lokasyonlar� bulunuz
SELECT * FROM LOCATIONS WHERE STATE IS NULL;

-- Durumu iptal olan ve sat�c�lar� olmayan emirler hangileridir?
SELECT * FROM ORDERS WHERE STATUS = 'Canceled' AND SALESMAN_ID IS NULL;

-- Ocak 2016 ile Haziran 2016 aras�nda verilen sipari�ler hangileridir?
SELECT * FROM ORDERS WHERE ORDER_DATE BETWEEN '01/01/2016' AND '30/06/2016';

-- Unvan� 'S' ile ba�lamayan �al��anlar� bulunuz.
SELECT * FROM EMPLOYEES WHERE JOB_TITLE NOT LIKE 'S%' ORDER BY job_t�tle;

-- Herhangi bir �e�it Intel Xeon �r�nler hangileridir?
SELECT * FROM productS WHERE PRODUCT_NAME LIKE 'Intel Xeon%';

-- �smi 'C' ile ba�layan kontaklar hangileridir? Soyad�na g�re alfabetik s�ra ile s�ralayal�m.
SELECT * FROM CONTACTS WHERE FIRST_NAME LIKE 'C%' ORDER BY LAST_NAME ;

-- �r�n ad� 'Asus' ile ba�layan ve liste fiyat� standart �cretinden k���k olan �r�nleri bulunuz.
SELECT * FROM PRODUCTS WHERE PRODUCT_NAME LIKE 'Asus%' AND LIST_PRICE < STANDARD_COST ;

-- 1,2,4,5 id'li kategorilerin bilgilerini bulunuz. 
SELECT * FROM PRODUCT_CATEGORIES WHERE CATEGORY_ID BETWEEN 1 AND 5;

-- Sipari� durumu 'Shipped'den farkl� olan m��terilerin bilgilerini bulunuz.
SELECT * FROM ORDERS WHERE STATUS! = 'Shipped';

-- Adet say�s� 100e e�it olan envanterlerin product bilgisini bulunuz.
SELECT * FROM INVENTORIES I
LEFT JOIN PRODUCTS P
ON I.product_�d = P.product_�d
WHERE QUANTITY = 100;

-- Beijing (8 numaral� warehouse)'da ka� farkl� envanter vard�r?
SELECT COUNT(W.WAREHOUSE_ID)AS ENVARTER_KAYIT_SAYISI FROM INVENTORIES I
INNER JOIN WAREHOUSES W
ON I.warehouse_�d = W.warehouse_�d
WHERE W.WAREHOUSE_ID = 8;

-- Liste fiyati 1000 ile 3000 arasinda olan ka� product var?
SELECT * FROM PRODUCTS WHERE LIST_PRICE BETWEEN 1000 AND 3000;

-- Bir sipari�te toplam 100.0000'den fazla �cret �deyen emirler nedir?
SELECT ORDER_ID FROM ORDER_ITEMS 
WHERE (QUANTITY * UNIT_PRICE) > 100000
GROUP BY ORDER_ID
ORDER BY 1;








