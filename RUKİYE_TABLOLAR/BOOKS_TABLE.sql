CREATE TABLE BOOKS
(
    ID_             NUMBER GENERATED BY DEFAULT AS IDENTITY START WITH 1 PRIMARY KEY,
    ISBN_ID         VARCHAR2(8),
    BOOK_NAME       VARCHAR2(50),
    NUMBEROF_PAGES  NUMBER,
    AUTHOR_NAME     VARCHAR2(50),
    PUBLISHER       VARCHAR2(20),
    BOOK_TYPE      VARCHAR2(20)

);
