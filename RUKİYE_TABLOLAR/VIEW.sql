CREATE VIEW KODLUYORUZ_VIEW
AS
    SELECT m.name_,m.surname,b.book_name,b.author_name,b.numberof_pages 
    FROM lýbrarys l
    INNER JOIN books b ON l.books_ýd = b.ýd_
    INNER JOIN members m ON l.members_ýd = m.ýd_;
