# 📚 Book Vault: A Library Management System Database

Welcome to **Book Vault** – a structured and scalable SQL database project designed to manage the inner workings of a modern library. From members and books to genres, publishers, and transactions, this database is a full-stack backend solution to streamline library operations.

### Features
-  Query-ready, relational database with meaningful schema design
-  Normalized structure for data integrity
-  Complex SQL queries for deep insights
-  ERD designed using Draw.io
-  Built using Oracle SQL
#
## 🛠️ Tech Stack & Skills
- **Language**: SQL
- **Tools**: Oracle SQL, draw.io, GitHub
- **Skills**: Database design, Normalization, Advanced SQL querying
#

## 🧱 Database Schema

| Table        | Description |
|--------------|-------------|
| `members`    | Personal and contact details of library members |
| `genres`     | Categorized genres with popularity rankings |
| `authors`    | Biographical info on book authors |
| `publishers` | Publisher info with contacts and website |
| `books`      | Book inventory with links to author, genre, and publisher |
| `transactions` | Track member-book borrow records |

### Database components

The database includes the following relations/ tables:

**1. Members**

   > memberID: Unique identifier for each member. <br>
   firstName, lastName: Personal details of the member. <br>
   phone, email: Contact details of the member. <br>

**2. Genres**

   > genreID: Unique genre identifier. <br>
   GenreName, Category: Name and category of the genre. <br>
   PopularityRank: A rank for the genre based on its demand. <br>
   
**3. Authors**

   > authorID: Unique identifier for authors. <br>
   AuthorName: Name of the author. <br>
   BirthDate: Author’s date of birth. <br>
   Nationality, Gender: Personal information about the author. <br>
   
**4. Publishers**

   > publisherID: Unique publisher identifier. <br>
   PublisherName: Name of the publisher. <br>
   ContactName: Name of the publisher's contact person. <br>
   Website, Address: Contact details of the publisher. <br>
   
**5. Books**

   > bookID: Unique identifier for each book. <br>
   authorID, publisherID, genreID: Foreign keys linking to the author, publisher, and genre. <br>
   Title: The title of the book. <br>
   Quantity: Number of copies available. <br>
    
**6. Transactions**

   > transactionID: Unique identifier for each transaction. <br>
   bookID, memberID, publisherID: Foreign keys linking to the book, member, and publisher. <br>
   checkoutDate: The date the book was borrowed. <br>
#
### Entity-Retlationship Diagram (ERD)

![image](https://github.com/user-attachments/assets/48e3f578-9ec0-4070-807c-7a01aae5a3ec)

#

### Creating the database using SQL

We use SQL to create the database and insert values to it. Please refer to the script below for detailed code. <br>

[Database creation](https://github.com/ouidhi/library-db-design/blob/1233e04c9b75c86a1a65439fbe11b4b2cc641755/dbs_creation.sql)
#
## 🔍 Example Queries & Insights

| Query | Description |
|-------|-------------|
| `Books with ≥ 6 copies` | Inventory insights |
| `Top 3 popular genres` | Genre demand ranking |
| `Members with no transactions` | Inactive user discovery |
| `Books from Sci-Fi & Fantasy` | Genre-based filtering via view |
| `City with most members` | Demographic insights |
| `Addresses with ‘Avenue’` | Address pattern search |
| `Members more active than ID 23` | Transaction volume comparison |
| `Books checked out in November` | Monthly usage trends |

See [`queries.sql`](https://github.com/ouidhi/library-db-design/blob/1233e04c9b75c86a1a65439fbe11b4b2cc641755/queries.sql) for the SQL statements.

---

## 📊 Sample Output

### 1. **Genres with Popularity Rank Less Than or Equal to 3**

This query retrieves the genres that have a popularity rank of 3 or better.

```sql
SELECT genrename, popularityrank
FROM genre
WHERE popularityrank <= 3;
```
<img width="402" alt="Screenshot 2025-05-27 at 4 46 27 PM" src="https://github.com/user-attachments/assets/9e8ecd10-43ee-43a3-9de5-fa74b481d58d" />

#

### 2. **City with Maximum and Minimum Members in Ascending Order**

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
<img width="207" alt="Screenshot 2025-05-27 at 4 55 55 PM" src="https://github.com/user-attachments/assets/0a55ce07-31e8-4277-a5d6-3f1607c9dde1" />

#

### 3. **Cities with Addresses Containing 'Avenue'**

This query finds the number of addresses that contain the word 'Avenue' in each city, ordered by the number of occurrences.

```sql
SELECT city, count(address) AS "HAS_AVENUE"
FROM members
WHERE lower(address) LIKE '%avenue%'
GROUP BY city
ORDER BY HAS_AVENUE;
```
<img width="204" alt="Screenshot 2025-05-27 at 4 56 29 PM" src="https://github.com/user-attachments/assets/2d478780-783a-4b93-921b-88a641548838" />


### 4. **Number of Books Checked Out in November by Each Member**

This query retrieves member IDs and the number of books they checked out during the month of November.

```sql
SELECT memberid, TO_CHAR(checkoutdate, 'MON') AS "MONTH", COUNT(bookid) AS "COUNT_BOOKS"
FROM transactions
WHERE EXTRACT(MONTH FROM checkoutdate) = 11
GROUP BY memberid, checkoutdate
ORDER BY memberid, COUNT(bookid);
```
<img width="337" alt="Screenshot 2025-05-27 at 4 58 39 PM" src="https://github.com/user-attachments/assets/5f1f0f83-7999-4794-913e-e644ad4a0b9a" />

#

### Conclusion

This SQL database project demonstrates the creation and management of a library system database. The design follows best practices for relational databases, including the use of normalization to reduce redundancy and maintain data integrity through primary and foreign key constraints. 

Key takeaways from the project include:
- Proper database structuring, ensuring easy retrieval and management of data for members, books, authors, publishers, genres, and transactions.
- Complex queries utilizing `JOINs`, views, and aggregations to deliver insights such as identifying top genres, members with more transactions, and books from specific genres.
- Data integrity is maintained by enforcing constraints on relationships between entities, such as foreign key relationships between books and authors, books and genres, and transactions involving members.
  
The database is ready for integration into a larger system that could include a user interface for library staff to manage inventory, members, and transactions efficiently. This system also ensures scalability and the ability to run complex queries for future reporting and analysis needs.

## 📬 Contact

🔗 [LinkedIn](https://www.linkedin.com/in/vidhi-parmar777/) | [Email](vidhi30th@gmail.com) 



