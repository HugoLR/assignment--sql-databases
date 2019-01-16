CREATE DATABASE HugoLR

CREATE TABLE Person (
  ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  Name VARCHAR(200) NOT NULL,
  Age INT NOT NULL,
  Height INT NOT NULL,
  City VARCHAR(200) NOT NULL,
  FavoriteColor VARCHAR(200) NOT NULL
);

INSERT INTO Person (Name, Age, Height, City, FavoriteColor) VALUES ("Addy Osmani", 20, 178, "California", "yellow");
INSERT INTO Person (Name, Age, Height, City, FavoriteColor) VALUES ("Paul Irish", 25, 191, "Austin", "orange");
INSERT INTO Person (Name, Age, Height, City, FavoriteColor) VALUES ("Eric Elliot", 30, 165, "Portland", "blue");
INSERT INTO Person (Name, Age, Height, City, FavoriteColor) VALUES ("Jack Wilshere", 18, 189, "San Francisco", "purple");
INSERT INTO Person (Name, Age, Height, City, FavoriteColor) VALUES ("Ayrton Senna", 32, 170, "Texas", "green");


-- List all the people in the Person table by Height from tallest to shortest.
SELECT * FROM Person ORDER BY Height DESC;

-- List all the people in the Person table by Height from shortest to tallest.
SELECT * FROM Person ORDER BY Height;

-- List all the people in the Person table by Age from oldest to youngest.
SELECT * FROM Person ORDER BY Age DESC;

-- List all the people in the Person table older than age 20.
SELECT * FROM Person WHERE Age > 20;

-- List all the people in the Person table that are exactly 18.
SELECT * FROM Person WHERE Age = 18;

-- List all the people in the Person table that are less than 20 and older than 30.
SELECT * FROM Person WHERE Age < 20 OR Age > 30;

-- List all the people in the Person table that are not 27 (Use not equals).
SELECT * FROM Person WHERE Age != 27;

-- List all the people in the Person table where their favorite color is not red.
SELECT * FROM Person WHERE FavoriteColor != "red";

-- List all the people in the Person table where their favorite color is not red and is not blue.
SELECT * FROM Person WHERE FavoriteColor !="red" AND FavoriteColor !="blue";

-- List all the people in the Person table where their favorite color is orange or green.
SELECT * FROM Person WHERE FavoriteColor="orange" OR FavoriteColor="green";

-- List all the people in the Person table where their favorite color is orange, green or blue (use IN).
SELECT * FROM Person WHERE FavoriteColor IN("orange") OR FavoriteColor IN("green") OR FavoriteColor IN("blue");

-- List all the people in the Person table where their favorite color is yellow or purple (use IN).
SELECT * FROM Person WHERE FavoriteColor IN("yellow") OR FavoriteColor IN("purple");


CREATE TABLE Orders (
  ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  PersonID INT,
  ProductName VARCHAR(200) NOT NULL,
  ProductPrice DECIMAL(9,2) NOT NULL,
  Quantity INT NOT NULL,
  FOREIGN KEY	(PersonID) REFERENCES Person(ID)
);

INSERT INTO Orders (PersonID, ProductName, ProductPrice, Quantity) VALUES (4, "PlayStation", 7000, 1);
INSERT INTO Orders (PersonID, ProductName, ProductPrice, Quantity) VALUES (1, "TV Samsung", 20000, 1);
INSERT INTO Orders (PersonID, ProductName, ProductPrice, Quantity) VALUES (4, "Chromecast", 600, 3);
INSERT INTO Orders (PersonID, ProductName, ProductPrice, Quantity) VALUES (2, "Nintendo Switch", 5000, 1);
INSERT INTO Orders (PersonID, ProductName, ProductPrice, Quantity) VALUES (3, "Mac cover", 500, 4);

-- Select all the records from the Orders table.
SELECT * FROM Orders;

-- Calculate the total number of products ordered.
SELECT SUM(Quantity) FROM Orders;

-- Calculate the total order price.
SELECT SUM(Quantity * ProductPrice) FROM Orders;

-- Calculate the total order price by a single PersonID.
SELECT SUM(Quantity * ProductPrice) FROM Orders WHERE PersonID = 4;
