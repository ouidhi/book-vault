
-- 1. To show books with quantity more than or equal to 6 
SELECT title, quantity 
FROM book
WHERE quantity >= 6;

------------------------------------------------------------------------

-- 2. To show genres with popularity rank less than or equal to 3
SELECT genrename, popularityrank
FROM genre
WHERE popularityrank <=3;

------------------------------------------------------------------------

-- 3. To show the members who do not have any transactions.
SELECT firstname, lastname
FROM members m LEFT OUTER JOIN transactions t
ON m.memberID = t.memberID 
WHERE transactionid IS NULL;

------------------------------------------------------------------------

-- 4. To show books with publishers and quantity whose genre is science fiction or fantasy
CREATE OR REPLACE VIEW publisher_genre AS
SELECT title, publishername, genrename
FROM book b JOIN genre g
ON b.genreid = g.genreid 
JOIN publisher p ON b.publisherid = p.publisherid
WHERE lower(genrename) LIKE 'science fiction' OR
lower(genrename) LIKE 'fantasy' ;


SELECT * FROM publisher_genre;

------------------------------------------------------------------------

-- 5. To find city with max members and min members in ascending order

-- finding count in each city
SELECT city, COUNT(memberid) AS "COUNT"
FROM members
GROUP BY city;

-- finding the max number of members
SELECT MAX(COUNT)
FROM (SELECT COUNT(memberid) AS "COUNT"
     FROM members
     GROUP BY city);
    
-- finding min number of members
SELECT MIN(COUNT)
FROM (SELECT COUNT(memberid) AS "COUNT"
     FROM members
     GROUP BY city);
     
-- final query
-- city with max members
(SELECT city, COUNT(memberid) AS "NO_OF_MEMBERS"
FROM members
GROUP BY city
HAVING COUNT(memberid) = (SELECT MAX(COUNT)
                          FROM (SELECT city, COUNT(memberid) AS "COUNT"
                                FROM members
                                GROUP BY city))
)
UNION
-- city with min members
(SELECT city, COUNT(memberid) AS "NO_OF_MEMBERS"
FROM members
GROUP BY city
HAVING COUNT(memberid) = (SELECT MIN(COUNT)
                          FROM (SELECT city, COUNT(memberid) AS "COUNT"
                                FROM members
                                GROUP BY city))
)
ORDER BY NO_OF_MEMBERS;

------------------------------------------------------------------------

-- 6. To find cities with number of address that contain 'avenue' 
--in their adresses in ascending order
SELECT city, count(address) AS "HAS_AVENUE"
FROM members
WHERE lower(address) LIKE '%avenue%'
GROUP BY city
ORDER BY HAS_AVENUE;

------------------------------------------------------------------------

-- 7. find the memberid with number of transactions greater than that of memberid 23
SELECT COUNT(transactionid)
FROM transactions
WHERE memberid = 23
GROUP BY memberid;

-- final query
SELECT memberid, COUNT(transactionid) AS "NO_OF_TRANSACTIONS"
FROM transactions
GROUP BY memberid
HAVING COUNT(transactionid) > (SELECT COUNT(transactionid)
                               FROM transactions
                               WHERE memberid = 23
                               GROUP BY memberid)
ORDER BY NO_OF_TRANSACTIONS DESC;

------------------------------------------------------------------------

--8. find memberids and the number of books checked out in the month of November  
SELECT memberid, TO_CHAR(checkoutdate, 'MON') AS "MONTH", COUNT(bookid) AS "COUNT_BOOKS"
FROM transactions
WHERE EXTRACT(MONTH FROM checkoutdate) = 11
GROUP BY memberid, checkoutdate
ORDER BY memberid, COUNT(bookid);