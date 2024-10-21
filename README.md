## Library Management System Database 

### Objective
This project involves creating a SQL database for a library management system. The database manages information about members, books, transactions, publishers, authors, and genres. It ensures a structured and efficient way to keep track of library books, their authors, genres, and transactions made by members.
#
### Table of contents

1. Key Skills and Tools Used
2. Database components
3. Entity-Retlationship Diagram (ERD)
4. Creating the database using SQL
5. Querying some results
6. Conclusion
#
### Key Skills and Tools Used

**Programming Languages:** SQL <br>

**Skills:** Database design,Advanced SQL querying <br>

**Other tools used:** draw.io (for ERD), Oracle SQL, GitHub <br>
#
### Database components

The database includes the following key components:

**1. Members**

   Attributes: <br>
   
   memberID: Unique identifier for each member. <br>
   firstName, lastName: Personal details of the member. <br>
   phone, email: Contact details of the member. <br>

**2. Genres**

   Attributes: <br>
   
   genreID: Unique genre identifier. <br>
   GenreName, Category: Name and category of the genre. <br>
   PopularityRank: A rank for the genre based on its demand. <br>
   
**3. Authors**

   Attributes: <br>
   
   authorID: Unique identifier for authors. <br>
   AuthorName: Name of the author. <br>
   BirthDate: Author’s date of birth. <br>
   Nationality, Gender: Personal information about the author. <br>
   
**4. Publishers**

   Attributes: <br>
   
   publisherID: Unique publisher identifier. <br>
   PublisherName: Name of the publisher. <br>
   ContactName: Name of the publisher's contact person. <br>
   Website, Address: Contact details of the publisher. <br>
   
**5. Books**

   Attributes: <br>
   
   bookID: Unique identifier for each book. <br>
   authorID, publisherID, genreID: Foreign keys linking to the author, publisher, and genre. <br>
   Title: The title of the book. <br>
   Quantity: Number of copies available. <br>
    
**6. Transactions**

   Attributes: <br> 
   
   transactionID: Unique identifier for each transaction. <br>
   bookID, memberID, publisherID: Foreign keys linking to the book, member, and publisher. <br>
   checkoutDate: The date the book was borrowed. <br>
#
### Entity-Retlationship Diagram (ERD)

#

### Creating the database using SQL

We use SQL to create the database and insert values to it. Please refer to the script below for detailed code. <br>

Script: https://github.com/ouidhi/library-db-design/blob/1233e04c9b75c86a1a65439fbe11b4b2cc641755/dbs_creation.sql
#
### Querying some results

Script: https://github.com/ouidhi/library-db-design/blob/1233e04c9b75c86a1a65439fbe11b4b2cc641755/queries.sql

After setting up the database, we can use SQL queries to retrieve meaningful data from it. <br>
Below are some example queries:

#

### 1. **Books with Quantity Greater Than or Equal to 6**

This query fetches all book titles that have a stock of 6 or more copies.

```sql
SELECT title, quantity 
FROM book
WHERE quantity >= 6;
```

#

### 2. **Genres with Popularity Rank Less Than or Equal to 3**

This query retrieves the genres that have a popularity rank of 3 or better.

```sql
SELECT genrename, popularityrank
FROM genre
WHERE popularityrank <= 3;
```

#

### 3. **Members Without Any Transactions**

This query finds the members who have not made any transactions in the library by using a `LEFT OUTER JOIN`.

```sql
SELECT firstname, lastname
FROM members m 
LEFT OUTER JOIN transactions t ON m.memberID = t.memberID 
WHERE transactionid IS NULL;
```

#

### 4. **Books with Publishers Whose Genre is Science Fiction or Fantasy**

This query creates a view that shows book titles, their publishers, and genre for books classified as science fiction or fantasy.

```sql
CREATE OR REPLACE VIEW publisher_genre AS
SELECT title, publishername, genrename
FROM book b 
JOIN genre g ON b.genreid = g.genreid 
JOIN publisher p ON b.publisherid = p.publisherid
WHERE lower(genrename) = 'science fiction' 
   OR lower(genrename) = 'fantasy';

SELECT * FROM publisher_genre;
```

#

### 5. **City with Maximum and Minimum Members in Ascending Order**

This query finds the cities with the maximum and minimum number of members, sorted by the number of members in ascending order.

```sql
-- City with max members
(SELECT city, COUNT(memberid) AS "NO_OF_MEMBERS"
FROM members
GROUP BY city
HAVING COUNT(memberid) = (SELECT MAX(COUNT)
                          FROM (SELECT city, COUNT(memberid) AS "COUNT"
                                FROM members
                                GROUP BY city)))
UNION
-- City with min members
(SELECT city, COUNT(memberid) AS "NO_OF_MEMBERS"
FROM members
GROUP BY city
HAVING COUNT(memberid) = (SELECT MIN(COUNT)
                          FROM (SELECT city, COUNT(memberid) AS "COUNT"
                                FROM members
                                GROUP BY city)))
ORDER BY NO_OF_MEMBERS;
```

#

### 6. **Cities with Addresses Containing 'Avenue'**

This query finds the number of addresses that contain the word 'Avenue' in each city, ordered by the number of occurrences.

```sql
SELECT city, count(address) AS "HAS_AVENUE"
FROM members
WHERE lower(address) LIKE '%avenue%'
GROUP BY city
ORDER BY HAS_AVENUE;
```

#

### 7. **Members with More Transactions Than MemberID 23**

This query identifies members who have more transactions than the member with `memberID` 23.

```sql
SELECT memberid, COUNT(transactionid) AS "NO_OF_TRANSACTIONS"
FROM transactions
GROUP BY memberid
HAVING COUNT(transactionid) > (SELECT COUNT(transactionid)
                               FROM transactions
                               WHERE memberid = 23
                               GROUP BY memberid)
ORDER BY NO_OF_TRANSACTIONS DESC;
```

#

### 8. **Number of Books Checked Out in November by Each Member**

This query retrieves member IDs and the number of books they checked out during the month of November.

```sql
SELECT memberid, TO_CHAR(checkoutdate, 'MON') AS "MONTH", COUNT(bookid) AS "COUNT_BOOKS"
FROM transactions
WHERE EXTRACT(MONTH FROM checkoutdate) = 11
GROUP BY memberid, checkoutdate
ORDER BY memberid, COUNT(bookid);
```

#

## 4. Conclusion

This SQL database project demonstrates the creation and management of a library system database. The design follows best practices for relational databases, including the use of normalization to reduce redundancy and maintain data integrity through primary and foreign key constraints. 

Key takeaways from the project include:
- Proper database structuring, ensuring easy retrieval and management of data for members, books, authors, publishers, genres, and transactions.
- Complex queries utilizing `JOINs`, views, and aggregations to deliver insights such as identifying top genres, members with more transactions, and books from specific genres.
- Data integrity is maintained by enforcing constraints on relationships between entities, such as foreign key relationships between books and authors, books and genres, and transactions involving members.
  
The database is ready for integration into a larger system that could include a user interface for library staff to manage inventory, members, and transactions efficiently. This system also ensures scalability and the ability to run complex queries for future reporting and analysis needs.
 







