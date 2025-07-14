--table members
DROP TABLE member
CREATE TABLE members(
memberID INT PRIMARY KEY,
firstName VARCHAR(25) NOT NULL,
lastName VARCHAR(25) NOT NULL,
address VARCHAR(35),
city VARCHAR(25) NOT NULL,
postalcode VARCHAR(20),
phone NUMBER(11) NOT NULL,
email VARCHAR(30) NOT NULL,
CONSTRAINT memberID CHECK
(memberID BETWEEN 1 AND 90)
);

INSERT ALL
INTO members VALUES (1, 'Liam', 'Turner', '123 Maple Street' , 'Toronto', 'M5A 1A1', 2345678901, 'liam.turner@email.com')
INTO members VALUES (2, 'Olivia', 'Thompson', '456 Oak Avenue', 'Ottawa', 'K2B 3C4',3456789012, 'olivia.thompson@email.com') 
INTO members VALUES (3, 'Ethan', 'Mitchell', '789 Pine Road', 'Hamilton', 'L8P 2E5', 4567890123, 'ethan.mitchell@email.com') 
INTO members VALUES (4, 'Emma', 'White', '101 Birch Lane', 'London', 'N6A 3J3', 5678901234, 'emma.white@email.com') 
INTO members VALUES (5, 'Noah', 'Martin', '222 Cedar Street', 'Mississauga', 'L5N 2W8', 6789012345, 'noah.martin@email.com') 
INTO members VALUES (6, 'Sophia', 'Anderson', '333 Elm Drive', 'Markham', 'L7L 4V7', 7890123456,'sophia.anderson@email.com') 
INTO members VALUES (7, 'Jackson', 'Wilson', '444 Spruce Court', 'Hamilton', 'L5C 9A2', 8901234567, 'jackson.wilson@email.com') 
INTO members VALUES (8, 'Ava', 'Robinson', '555 Fir Lane', 'Brampton', 'L6T 1A2', 9012345678, 'ava.robinson@email.com') 
INTO members VALUES (9, 'Aiden', 'Walker', '666 Aspen Road', 'Toronto', 'L1H 2V4', 1234567890, 'aiden.walker@email.com') 
INTO members VALUES (10, 'Isabella', 'Harris', '777 Birch Avenue', 'Mississauga', 'L1H 4E6', 2109876543, 'isabella.harris@email.com') 
INTO members VALUES (11, 'Lucas', 'Smith', '888 Maple Court', 'Brampton', 'L4M 3L1', 3210987654,'lucas.smith@email.com') 
INTO members VALUES (12, 'Mia', 'Taylor', '999 Oak Street', 'Ottawa', 'K2G 1A1', 4321098765, 'mia.taylor@email.com') 
INTO members VALUES (13, 'Jacob', 'Brown', '111 Pine Drive', 'Markham', 'L3R 5K6', 5432109876, 'jacob.brown@email.com') 
INTO members VALUES (14, 'Emily', 'Miller', '222 Cedar Lane', 'London', 'N2L 3G1', 6543210987, 'emily.miller@email.com') 
INTO members VALUES (15, 'Logan', 'Davis', '333 Spruce Road', 'Vaughan', 'L4H 1A2', 7654321098, 'logan.davis@email.com') 
INTO members VALUES (16, 'Grace', 'Clark', '444 Elm Court', 'Toronto', 'L4C 5K8', 8765432109, 'grace.clark@email.com') 
INTO members VALUES (17, 'Oliver', 'Wilson', '555 Birch Drive', 'Vaughan', 'L2E 2G2', 9876543210, 'oliver.wilson@email.com') 
INTO members VALUES (18, 'Amelia', 'Evans', '666 Oak Lane', 'Pickering', 'L1V 1B2', 8765432101, 'amelia.evans@email.com') 
INTO members VALUES (19, 'Benjamin', 'Turner', '777 Pine Avenue', 'Toronto', 'L7M 2W3', 7654321092, 'benjamin.turner@email.com') 
INTO members VALUES (20, 'Lily', 'Mitchell', '888 Cedar Road', 'Hamilton', 'L9T 1A5', 6543210983, 'lily.mitchell@email.com') 
INTO members VALUES (21, 'Samuel', 'White', '999 Maple Lane', 'Mississauga', 'L1N 2Y6', 5432109874, 'samuel.white@email.com') 
INTO members VALUES (22, 'Zoey', 'Thompson', '111 Oak Court', 'Vaughan', 'L1S 3J5', 4321098765, 'zoey.thompson@email.com') 
INTO members VALUES (23, 'Henry', 'Anderson', '222 Elm Drive', 'Brampton', 'L2R 3M2', 3210987656, 'henry.anderson@email.com') 
INTO members VALUES (24, 'Addison', 'Robinson', '333 Pine Street', 'Pickering', 'P7A 1A1', 2109876547, 'addison.robinson@email.com') 
INTO members VALUES (25, 'Daniel', 'Walker', '444 Cedar Avenue', 'Toronto', 'M6A 1B2', 9876543210, 'daniel.walker@email.com') 

SELECT * FROM DUAL;


-- table genres

CREATE TABLE GENRE (
   genreID INT PRIMARY KEY,
   GenreName VARCHAR(25) NOT NULL,
   Category VARCHAR(25) NOT NULL,
   PopularityRank INT NOT NULL,
   Description VARCHAR(255)
);
 
INSERT ALL
   INTO GENRE VALUES (500, 'Science Fiction', 'Fiction', 1, 'Explores futuristic concepts of science and technology')
   INTO GENRE VALUES (501, 'Fantasy', 'Fiction', 2, 'Features magical and supernatural elements')
   INTO GENRE VALUES (502, 'Mystery', 'Fiction', 3, 'Involves solving a crime or puzzle')
   INTO GENRE VALUES (503, 'Thriller', 'Fiction', 4, 'Creates suspense and excitement')
   INTO GENRE VALUES (504, 'Romance', 'Fiction', 5, 'Focuses on romantic relationships')
   INTO GENRE VALUES (505, 'Horror', 'Fiction', 6, 'Arouses fear and terror')
   INTO GENRE VALUES (506, 'Historical Fiction', 'Fiction', 7, 'Set in the past, often with historical events or figures')
   INTO GENRE VALUES (507, 'Young Adult', 'Fiction', 8, 'Targeted at young adults, typically featuring adolescent protagonists')
   INTO GENRE VALUES (508, 'Contemporary', 'Fiction', 9, 'Set in the present time period')
   INTO GENRE VALUES (509, 'Non-Fiction', 'Non-Fiction', 1, 'Based on real events, facts, or people')
   INTO GENRE VALUES (510, 'Biography', 'Non-Fiction', 2, 'Details the life of a person, written by another individual')
   INTO GENRE VALUES (511, 'Autobiography', 'Non-Fiction', 3, 'Tells the life story of the author themselves')
   INTO GENRE VALUES (512, 'Self-Help', 'Non-Fiction', 4, 'Provides guidance and advice for personal improvement')
   INTO GENRE VALUES (513, 'Travel', 'Non-Fiction', 5, 'Focuses on travel experiences and destinations')
   INTO GENRE VALUES (514, 'Cookbook', 'Non-Fiction', 6, 'Contains recipes and cooking instructions')
   INTO GENRE VALUES (515, 'History', 'Non-Fiction', 7, 'Examines past events and their significance')
   INTO GENRE VALUES (516, 'Science', 'Non-Fiction', 8, 'Explores scientific principles and discoveries')
   INTO GENRE VALUES (517, 'Psychology', 'Non-Fiction', 9, 'Studies the human mind and behavior')
   INTO GENRE VALUES (518, 'Philosophy', 'Non-Fiction', 10, 'Addresses fundamental questions about existence and knowledge')
   INTO GENRE VALUES (519, 'Poetry', 'Poetry', 1, 'Expresses emotions and ideas through verse and language')
   INTO GENRE VALUES (520, 'Drama', 'Poetry', 2, 'Presents stories through dialogue and performance')
   INTO GENRE VALUES (521, 'Epic', 'Poetry', 3, 'Long narrative poem recounting heroic deeds')
   INTO GENRE VALUES (522, 'Satire', 'Poetry', 4, 'Uses humor and irony to criticize society or individuals')
   INTO GENRE VALUES (523, 'Lyric', 'Poetry', 5, 'Expresses personal emotions or feelings')
   INTO GENRE VALUES (524, 'Adventure', 'Fiction', 10, 'Involves exciting and daring experiences')
SELECT * FROM dual;
 

-- table author

CREATE TABLE AUTHOR (
   authorID INT PRIMARY KEY,
   AuthorName VARCHAR(35) NOT NULL,
   BirthDate DATE NOT NULL,
   Nationality VARCHAR(25),
   Gender VARCHAR(10)
);
 
INSERT ALL
   INTO AUTHOR VALUES (200, 'James Patterson', TO_DATE('1947-03-22', 'YYYY-MM-DD'), 'American', 'Male')
   INTO AUTHOR VALUES (201, 'J.K. Rowling', TO_DATE('1965-07-31', 'YYYY-MM-DD'), 'British', 'Female')
   INTO AUTHOR VALUES (202, 'Stephen King', TO_DATE('1947-09-21', 'YYYY-MM-DD'), 'American', 'Male')
   INTO AUTHOR VALUES (203, 'Agatha Christie', TO_DATE('1890-09-15', 'YYYY-MM-DD'), 'British', 'Female')
   INTO AUTHOR VALUES (204, 'Dan Brown', TO_DATE('1964-06-22', 'YYYY-MM-DD'), 'American', 'Male')
   INTO AUTHOR VALUES (205, 'Harper Lee', TO_DATE('1926-04-28', 'YYYY-MM-DD'), 'American', 'Female')
   INTO AUTHOR VALUES (206, 'Margaret Atwood', TO_DATE('1939-11-18', 'YYYY-MM-DD'), 'Canadian', 'Female')
   INTO AUTHOR VALUES (207, 'George Orwell', TO_DATE('1903-06-25', 'YYYY-MM-DD'), 'British', 'Male')
   INTO AUTHOR VALUES (208, 'Neil Gaiman', TO_DATE('1960-11-10', 'YYYY-MM-DD'), 'British', 'Male')
   INTO AUTHOR VALUES (209, 'Terry Pratchett', TO_DATE('1948-04-28', 'YYYY-MM-DD'), 'British', 'Male')
   INTO AUTHOR VALUES (210, 'Jane Austen', TO_DATE('1775-12-16', 'YYYY-MM-DD'), 'British', 'Female')
   INTO AUTHOR VALUES (211, 'Ernest Hemingway', TO_DATE('1899-07-21', 'YYYY-MM-DD'), 'American', 'Male')
   INTO AUTHOR VALUES (212, 'Gabriel García Márquez', TO_DATE('1927-03-06', 'YYYY-MM-DD'), 'Colombian', 'Male')
   INTO AUTHOR VALUES (213, 'Leo Tolstoy', TO_DATE('1828-09-09', 'YYYY-MM-DD'), 'Russian', 'Male')
   INTO AUTHOR VALUES (214, 'Virginia Woolf', TO_DATE('1882-01-25', 'YYYY-MM-DD'), 'British', 'Female')
   INTO AUTHOR VALUES (215, 'Mark Twain', TO_DATE('1835-11-30', 'YYYY-MM-DD'), 'American', 'Male')
   INTO AUTHOR VALUES (216, 'F. Scott Fitzgerald', TO_DATE('1896-09-24', 'YYYY-MM-DD'), 'American', 'Male')
   INTO AUTHOR VALUES (217, 'Charles Dickens', TO_DATE('1812-02-07', 'YYYY-MM-DD'), 'British', 'Male')
   INTO AUTHOR VALUES (218, 'Emily Dickinson', TO_DATE('1830-12-10', 'YYYY-MM-DD'), 'American', 'Female')
   INTO AUTHOR VALUES (219, 'Fyodor Dostoevsky', TO_DATE('1821-11-11', 'YYYY-MM-DD'), 'Russian', 'Male')
   INTO AUTHOR VALUES (220, 'Herman Melville', TO_DATE('1819-08-01', 'YYYY-MM-DD'), 'American', 'Male')
   INTO AUTHOR VALUES (221, 'Oscar Wilde', TO_DATE('1854-10-16', 'YYYY-MM-DD'), 'Irish', 'Male')
   INTO AUTHOR VALUES (222, 'Albert Camus', TO_DATE('1913-11-07', 'YYYY-MM-DD'), 'French', 'Male')
   INTO AUTHOR VALUES (223, 'Emily Brontë', TO_DATE('1818-07-30', 'YYYY-MM-DD'), 'British', 'Female')
   INTO AUTHOR VALUES (224, 'Franz Kafka', TO_DATE('1883-07-03', 'YYYY-MM-DD'), 'Austrian', 'Male')
SELECT * FROM dual;

-- table publisher 

CREATE TABLE PUBLISHER (
   publisherID INT PRIMARY KEY,
   PublisherName VARCHAR(35) NOT NULL,
   ContactName VARCHAR(35) NOT NULL,
   Website VARCHAR(255),
   Address VARCHAR(255)
);

 
INSERT ALL
   INTO PUBLISHER VALUES (1000, 'Penguin Random House', 'John Doe', 'www.penguinrandomhouse.com', '123 Main St, New York, USA')
   INTO PUBLISHER VALUES (1001, 'HarperCollins Publishers', 'Jane Smith', 'www.harpercollins.com', '456 Elm St, London, UK')
   INTO PUBLISHER VALUES (1002, 'Simon & Schuster', 'Michael Johnson', 'www.simonandschuster.com', '789 Oak St, Los Angeles, USA')
   INTO PUBLISHER VALUES (1003, 'Macmillan Publishers', 'Emily Wilson', 'www.macmillan.com', '101 Maple St, Toronto, Canada')
   INTO PUBLISHER VALUES (1004, 'Hachette Livre', 'David Brown', 'www.hachette.com', '555 Pine St, Paris, France')
   INTO PUBLISHER VALUES (1005, 'HarperCollins Publishers', 'Emma Johnson', 'www.harpercollins.co.uk', '888 Oak St, London, UK')
   INTO PUBLISHER VALUES (1006, 'Scholastic Corporation', 'Andrew Miller', 'www.scholastic.com', '333 Elm St, New York, USA')
   INTO PUBLISHER VALUES (1007, 'Pearson Education', 'Olivia Davis', 'www.pearson.com', '777 Maple St, London, UK')
   INTO PUBLISHER VALUES (1008, 'Houghton Mifflin Harcourt', 'William Taylor', 'www.hmhco.com', '999 Oak St, Boston, USA')
   INTO PUBLISHER VALUES (1009, 'Bloomsbury Publishing', 'Charlotte Lee', 'www.bloomsbury.com', '444 Elm St, London, UK')
   INTO PUBLISHER VALUES (1010, 'Oxford University Press', 'Daniel Clark', 'www.oup.com', '222 Pine St, Oxford, UK')
   INTO PUBLISHER VALUES (1011, 'Cambridge University Press', 'Sophia Garcia', 'www.cambridge.org', '111 Maple St, Cambridge, UK')
   INTO PUBLISHER VALUES (1012, 'Springer Nature', 'Benjamin Martinez', 'www.springer.com', '666 Oak St, Berlin, Germany')
   INTO PUBLISHER VALUES (1013, 'Elsevier', 'Evelyn Rodriguez', 'www.elsevier.com', '777 Elm St, Amsterdam, Netherlands')
   INTO PUBLISHER VALUES (1014, 'Wiley', 'Jacob Wilson', 'www.wiley.com', '888 Pine St, Hoboken, USA')
   INTO PUBLISHER VALUES (1015, 'Random House', 'Ava Brown', 'www.randomhouse.com', '999 Maple St, New York, USA')
   INTO PUBLISHER VALUES (1016, 'Penguin Books', 'Mia Thompson', 'www.penguin.co.uk', '555 Elm St, London, UK')
   INTO PUBLISHER VALUES (1017, 'Puffin Books', 'Noah Martinez', 'www.penguin.co.uk/puffin', '123 Pine St, London, UK')
   INTO PUBLISHER VALUES (1018, 'Vintage Books', 'Emma White', 'www.randomhouse.com/vintage', '456 Elm St, New York, USA')
   INTO PUBLISHER VALUES (1019, 'Faber and Faber', 'Daniel Garcia', 'www.faber.co.uk', '789 Oak St, London, UK')
   INTO PUBLISHER VALUES (1020, 'Hogarth Press', 'Sophia Brown', 'www.randomhouse.com/hogarth', '101 Maple St, London, UK')
   INTO PUBLISHER VALUES (1021, 'Viking Press', 'Olivia Lee', 'www.penguin.com/viking', '555 Pine St, New York, USA')
   INTO PUBLISHER VALUES (1022, 'Grove Press', 'Ethan Thompson', 'www.groveatlantic.com', '888 Elm St, New York, USA')
   INTO PUBLISHER VALUES (1023, 'Gollancz', 'Charlotte Robinson', 'www.orionbooks.co.uk/gollancz', '123 Oak St, London, UK')
   INTO PUBLISHER VALUES (1024, 'Farrar, Straus and Giroux', 'Ava Martinez', 'www.fsgbooks.com', '456 Pine St, New York, USA')
SELECT * FROM dual;

-- table book

CREATE TABLE BOOK (
   bookID INT PRIMARY KEY,
   authorID INT NOT NULL,
   publisherID INT NOT NULL,
   genreID INT NOT NULL,
   Title VARCHAR(55) NOT NULL,
   Quantity INT,
   CONSTRAINT authorid_fk FOREIGN KEY (authorID) REFERENCES AUTHOR(authorID),
   CONSTRAINT publisherid_fk FOREIGN KEY (publisherID) REFERENCES PUBLISHER(publisherID),
   CONSTRAINT bookid_fk FOREIGN KEY (genreID) REFERENCES GENRE(genreID)
);


INSERT ALL
INTO BOOK VALUES(300, 213, 1000, 500, 'Lives of Girls and Women', 3)
INTO BOOK VALUES(301, 200, 1010, 503, 'One Hundred Years of Solitude', 5)
INTO BOOK VALUES(302, 200, 1005, 504, 'Kafka on the Shore', 4)
INTO BOOK VALUES(303, 215, 1003, 506, 'Half of a Yellow Sun', 6)
INTO BOOK VALUES(304, 209, 1007, 501, 'Hamlet', 2)
INTO BOOK VALUES(305, 213, 1008, 507, 'Mrs Dalloway', 3)
INTO BOOK VALUES(306, 215, 1010, 503, 'Go Tell It on the Mountain', 5)
INTO BOOK VALUES(307, 220, 1011, 510, 'The Handmaids Tale', 4)
INTO BOOK VALUES(308, 222, 1013, 520, 'Ficciones', 3)
INTO BOOK VALUES(309, 220, 1002, 522, 'Beloved', 2)
INTO BOOK VALUES(310, 223, 1008, 503, 'The Trial', 5)
INTO BOOK VALUES(311, 210, 1013, 505, 'Pride and Prejudice', 4)
INTO BOOK VALUES(312, 210, 1014, 522, 'War and Peace', 3)
INTO BOOK VALUES(313, 220, 1004, 511, 'White Teeth', 6)
INTO BOOK VALUES(314, 223, 1005, 520, '1984', 7)
INTO BOOK VALUES(315, 209, 1016, 501, 'The Weary Blues', 2)
INTO BOOK VALUES(316, 210, 1007, 500, 'Harry Potter and the Sorcerers Stone', 8)
INTO BOOK VALUES(317, 211, 1018, 504, 'Never Let Me Go', 5)
INTO BOOK VALUES(318, 219, 1019, 508, 'The Bell Jar', 3)
INTO BOOK VALUES(319, 220, 1022, 518, 'My Name Is Red', 4)
INTO BOOK VALUES(320, 221, 1022, 509, 'The House of the Spirits', 3)
INTO BOOK VALUES(321, 222, 1023, 508, 'Midnights Children', 5)
INTO BOOK VALUES(322, 203, 1023, 511, 'I Know Why the Caged Bird Sings', 4)
INTO BOOK VALUES(333, 214, 1024, 506, 'Moby-Dick', 2)
INTO BOOK VALUES(334, 211, 1005, 501, 'The Round House', 3)
SELECT * FROM DUAL;

-- table transactions
CREATE TABLE transactions(
transactionID INT PRIMARY KEY,
bookID INT NOT NULL,
memberID INT NOT NULL,
publisherID INT NOT NULL,
checkoutDate DATE,
CONSTRAINT transactionID_chk CHECK
(transactionID BETWEEN 100 AND 200),
CONSTRAINT bookID_chk CHECK
(bookID BETWEEN 300 AND 700),
CONSTRAINT memberID_chk CHECK
(memberID BETWEEN 1 AND 90),
CONSTRAINT publisherID_chk CHECK
(publisherID BETWEEN 1000 AND 3000),
CONSTRAINT bookID_fkk FOREIGN KEY 
(bookID) REFERENCES BOOK(bookID),
CONSTRAINT memberID_fkk FOREIGN KEY 
(memberID) REFERENCES MEMBERS(memberID),
CONSTRAINT publisherID_fkk FOREIGN KEY 
(publisherID) REFERENCES PUBLISHER(publisherID)
);


INSERT ALL
INTO transactions VALUES (100, 300 , 3, 1000 , TO_DATE('2023-02-14', 'YYYY-MM-DD'))
INTO transactions VALUES (101, 311, 3, 1013 , TO_DATE('2023-08-27', 'YYYY-MM-DD'))
INTO transactions VALUES (102, 312, 2, 1014 , TO_DATE('2023-04-02', 'YYYY-MM-DD'))
INTO transactions VALUES (103, 301, 1, 1010 , TO_DATE('2023-10-09', 'YYYY-MM-DD'))
INTO transactions VALUES (104, 302, 3, 1005 , TO_DATE('2023-11-21', 'YYYY-MM-DD'))
INTO transactions VALUES (105, 303, 4, 1003 , TO_DATE('2023-05-30', 'YYYY-MM-DD'))
INTO transactions VALUES (106, 303, 3, 1003 , TO_DATE('2023-07-17', 'YYYY-MM-DD'))
INTO transactions VALUES (107, 305, 13, 1008 , TO_DATE('2023-09-08', 'YYYY-MM-DD'))
INTO transactions VALUES (108, 304, 14, 1007 , TO_DATE('2023-01-19', 'YYYY-MM-DD'))
INTO transactions VALUES (109, 306, 24, 1010 , TO_DATE('2023-12-04', 'YYYY-MM-DD'))
INTO transactions VALUES (110, 305, 23, 1008 , TO_DATE('2023-06-29', 'YYYY-MM-DD'))
INTO transactions VALUES (111, 309, 23, 1002 , TO_DATE('2023-03-05', 'YYYY-MM-DD'))
INTO transactions VALUES (112, 311, 19, 1013 , TO_DATE('2023-07-25', 'YYYY-MM-DD'))
INTO transactions VALUES (113, 312, 15, 1014 , TO_DATE('2023-09-14', 'YYYY-MM-DD'))
INTO transactions VALUES (114, 313, 15, 1004 , TO_DATE('2023-02-07', 'YYYY-MM-DD'))
INTO transactions VALUES (115, 319, 17, 1022 , TO_DATE('2023-03-18', 'YYYY-MM-DD'))
INTO transactions VALUES (116, 333, 17, 1024 , TO_DATE('2023-12-30', 'YYYY-MM-DD'))
INTO transactions VALUES (117, 317, 7, 1018 , TO_DATE('2023-08-12', 'YYYY-MM-DD'))
INTO transactions VALUES (118, 306, 19, 1010 , TO_DATE('2023-07-01', 'YYYY-MM-DD'))
INTO transactions VALUES (119, 305, 20, 1008 , TO_DATE('2023-11-11', 'YYYY-MM-DD'))
INTO transactions VALUES (120, 317, 17, 1018 , TO_DATE('2023-04-26', 'YYYY-MM-DD'))
INTO transactions VALUES (121, 320, 17, 1022 , TO_DATE('2023-01-03', 'YYYY-MM-DD'))
INTO transactions VALUES (122, 322, 7, 1023, TO_DATE('2023-05-10', 'YYYY-MM-DD'))
INTO transactions VALUES (123, 334, 7, 1005 , TO_DATE('2023-06-23', 'YYYY-MM-DD'))
INTO transactions VALUES (124, 301, 12, 1010 , TO_DATE('2023-11-15', 'YYYY-MM-DD'))
INTO transactions VALUES (125, 309, 14, 1002 , TO_DATE('2023-10-07', 'YYYY-MM-DD'))

SELECT * FROM DUAL;



