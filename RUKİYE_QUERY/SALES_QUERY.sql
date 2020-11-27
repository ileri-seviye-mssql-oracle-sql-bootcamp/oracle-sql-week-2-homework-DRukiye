--SALES QUERY

-- Birim fiyatý 150'den büyük olan order_itemlarý bulunuz. 
select * from order_ýtems where UNIT_PRICE >150;

-- Ýþe alým tarihi Mayýs 2016 olan çalýþanlarý bulunuz.
SELECT * FROM EMPLOYEES WHERE HIRE_DATE BETWEEN '01/05/2016' AND '30/05/2016';

-- Adý Charlie ya da Charlsie olan contactlarý bulunuz.
SELECT * FROM CONTACTS WHERE FIRST_NAME = 'Charlie' OR FIRST_NAME = 'Charlsie' ;

-- Adet sayýsý 10dan büyük 50den küçük envanterleri bulunuz.
SELECT * FROM INVENTORIES WHERE QUANTITY > 10 AND QUANTITY<50;

-- Manager'ý olmayan çalýþanlar hangileridir? 
SELECT * FROM EMPLOYEES WHERE MANAGER_ID IS NULL;

-- State bilgisi boþ olan lokasyonlarý bulunuz
SELECT * FROM LOCATIONS WHERE STATE IS NULL;

-- Durumu iptal olan ve satýcýlarý olmayan emirler hangileridir?
SELECT * FROM ORDERS WHERE STATUS = 'Canceled' AND SALESMAN_ID IS NULL;

-- Ocak 2016 ile Haziran 2016 arasýnda verilen sipariþler hangileridir?
SELECT * FROM ORDERS WHERE ORDER_DATE BETWEEN '01/01/2016' AND '30/06/2016';

-- Unvaný 'S' ile baþlamayan çalýþanlarý bulunuz.
SELECT * FROM EMPLOYEES WHERE JOB_TITLE NOT LIKE 'S%' ORDER BY job_týtle;

-- Herhangi bir çeþit Intel Xeon ürünler hangileridir?
SELECT * FROM productS WHERE PRODUCT_NAME LIKE 'Intel Xeon%';

-- Ýsmi 'C' ile baþlayan kontaklar hangileridir? Soyadýna göre alfabetik sýra ile sýralayalým.
SELECT * FROM CONTACTS WHERE FIRST_NAME LIKE 'C%' ORDER BY LAST_NAME ;

-- Ürün adý 'Asus' ile baþlayan ve liste fiyatý standart ücretinden küçük olan ürünleri bulunuz.
SELECT * FROM PRODUCTS WHERE PRODUCT_NAME LIKE 'Asus%' AND LIST_PRICE < STANDARD_COST ;

-- 1,2,4,5 id'li kategorilerin bilgilerini bulunuz. 
SELECT * FROM PRODUCT_CATEGORIES WHERE CATEGORY_ID BETWEEN 1 AND 5;

-- Sipariþ durumu 'Shipped'den farklý olan müþterilerin bilgilerini bulunuz.
SELECT * FROM ORDERS WHERE STATUS! = 'Shipped';

-- Adet sayýsý 100e eþit olan envanterlerin product bilgisini bulunuz.
SELECT * FROM INVENTORIES I
LEFT JOIN PRODUCTS P
ON I.product_ýd = P.product_ýd
WHERE QUANTITY = 100;

-- Beijing (8 numaralý warehouse)'da kaç farklý envanter vardýr?
SELECT COUNT(W.WAREHOUSE_ID)AS ENVARTER_KAYIT_SAYISI FROM INVENTORIES I
INNER JOIN WAREHOUSES W
ON I.warehouse_ýd = W.warehouse_ýd
WHERE W.WAREHOUSE_ID = 8;

-- Liste fiyati 1000 ile 3000 arasinda olan kaç product var?
SELECT * FROM PRODUCTS WHERE LIST_PRICE BETWEEN 1000 AND 3000;

-- Bir sipariþte toplam 100.0000'den fazla ücret ödeyen emirler nedir?
SELECT ORDER_ID FROM ORDER_ITEMS 
WHERE (QUANTITY * UNIT_PRICE) > 100000
GROUP BY ORDER_ID
ORDER BY 1;








