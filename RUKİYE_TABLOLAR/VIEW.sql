CREATE VIEW KODLUYORUZ_VIEW
AS
    SELECT m.name_,m.surname,b.book_name,b.author_name,b.numberof_pages 
    FROM l�brarys l
    INNER JOIN books b ON l.books_�d = b.�d_
    INNER JOIN members m ON l.members_�d = m.�d_;
