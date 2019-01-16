-- <<<<<<<<<<Table - Artist>>>>>>>>>>>>>>>>>>>>>

-- Add 15 new Artists to the Artist table. (ArtistId, Name)
INSERT INTO Artist (Name) VALUES ("Diego Torres");
INSERT INTO Artist (Name) VALUES ("Whitney Houston");
INSERT INTO Artist (Name) VALUES ("Coldplay");
INSERT INTO Artist (Name) VALUES ("Wolfine");
INSERT INTO Artist (Name) VALUES ("Katy Perry");
INSERT INTO Artist (Name) VALUES ("Calvin Harris");
INSERT INTO Artist (Name) VALUES ("Drake");
INSERT INTO Artist (Name) VALUES ("Beyonce");
INSERT INTO Artist (Name) VALUES ("Frank Sinatra");
INSERT INTO Artist (Name) VALUES ("Queen");
INSERT INTO Artist (Name) VALUES ("Julieta Venegas");
INSERT INTO Artist (Name) VALUES ("blink-182");
INSERT INTO Artist (Name) VALUES ("Ed Sheeran");
INSERT INTO Artist (Name) VALUES ("Bob Dylan");
INSERT INTO Artist (Name) VALUES ("Nirvana");

-- Select 10 artists in reverse alphabetical order.
SELECT * FROM Artist WHERE ArtistId BETWEEN 1 AND 10 ORDER BY Name DESC;

-- Select 5 artists in alphabetical order.
SELECT * FROM Artist WHERE ArtistId BETWEEN 1 AND 5 ORDER BY Name;

-- Select all artists that start with the word "Black".
SELECT * FROM Artist WHERE Name LIKE "Black%";

-- Select all artists that contain the word "Black".
SELECT * FROM Artist WHERE Name LIKE  "%Black%";

<<<<<<<<<<<<<<<<<Table Employee>>>>>>>>>>>>>>>>>>>>>>>>>>

-- List all Employee first and last names only that live in Calgary.
SELECT FirstName,LastName FROM Employee WHERE City = "Calgary";

-- Find the first and last name and birthdate for the youngest employee.
SELECT FirstName,LastName, BirthDate,MIN(BirthDate) FROM Employee;

-- Find everyone that reports to Nancy Edwards (Use the ReportsTo column).
SELECT * FROM Employee WHERE ReportsTo = 2;

-- You will need to query the employee table to find the Id for Nancy Edwards
SELECT EmployeeId  FROM Employee WHERE FirstName = "Nancy" AND LastName="Edwards";

-- Count how many people live in Lethbridge.
SELECT COUNT(*), City FROM Employee GROUP BY City HAVING City = "Lethbridge";

<<<<<<<<<<<<<Table Invoice>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
-- Count how many orders were made from the USA.
SELECT COUNT(*) FROM Invoice WHERE BillingCountry = "USA";

-- Find the largest order total amount.
SELECT MAX(Total) FROM Invoice;

-- Find the smallest order total amount.
SELECT MIN(Total) FROM Invoice;

-- Find all orders bigger than $5.
SELECT * FROM Invoice WHERE Total > 5;

-- Count how many orders were smaller than $5.
SELECT COUNT(*) FROM Invoice WHERE  Total < 5;

-- Count how many orders were in CA, TX, or AZ (use IN).
SELECT COUNT(*) FROM Invoice WHERE BillingState IN("CA","TX","AZ");

-- Get the average total of the orders.
SELECT AVG(Total) FROM Invoice;

-- Get the total sum of the orders.
SELECT SUM(Total) FROM Invoice;
