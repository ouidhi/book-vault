-- SIMPLE WHERE CLAUSE
-- to show books with quantity more than or equal to 6 
SELECT title, quantity 
FROM book
WHERE quantity >= 6;

-- to show genres with popularity rank less than or equal to 3
SELECT genrename, popularityrank
FROM genre
WHERE popularityrank <=3;


-- JOIN 
-- to show the members who do not have any transactions.
SELECT firstname, lastname
FROM members m LEFT OUTER JOIN transactions t
ON m.memberID = t.memberID 
WHERE transactionid IS NULL;


-- VIEW
--to show books with publishers and quantity whose genre is sience fiction or fantasy
CREATE OR REPLACE VIEW publisher_genre AS
SELECT title, publishername, genrename
FROM book b JOIN genre g
ON b.genreid = g.genreid 
JOIN publisher p ON b.publisherid = p.publisherid
WHERE lower(genrename) LIKE 'science fiction' OR
lower(genrename) LIKE 'fantasy' ;


SELECT * FROM publisher_genre;



SELECT b.Title, b.Quantity, g.GenreName
FROM book b
JOIN genre g ON b.genreID = g.genreID
WHERE b.Quantity <= 5 AND g.genreID BETWEEN 500 AND 599;

SELECT b.Title, a.AuthorName, p.PublisherName, p.Address AS PublisherAddress
FROM book b
JOIN author a ON b.authorID = a.authorID
JOIN publisher p ON b.publisherID = p.publisherID;



