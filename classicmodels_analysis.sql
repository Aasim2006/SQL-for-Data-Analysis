
-- DROP TABLES
DROP TABLE IF EXISTS orderdetails;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS payments;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS offices;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS productlines;

-- CREATE TABLES
CREATE TABLE productlines (
  productLine TEXT PRIMARY KEY,
  textDescription TEXT,
  htmlDescription TEXT,
  image BLOB
);

CREATE TABLE products (
  productCode TEXT PRIMARY KEY,
  productName TEXT NOT NULL,
  productLine TEXT NOT NULL,
  productScale TEXT NOT NULL,
  productVendor TEXT NOT NULL,
  productDescription TEXT NOT NULL,
  quantityInStock INTEGER NOT NULL,
  buyPrice REAL NOT NULL,
  MSRP REAL NOT NULL,
  FOREIGN KEY (productLine) REFERENCES productlines(productLine)
);

CREATE TABLE offices (
  officeCode TEXT PRIMARY KEY,
  city TEXT NOT NULL,
  phone TEXT NOT NULL,
  addressLine1 TEXT NOT NULL,
  addressLine2 TEXT,
  state TEXT,
  country TEXT NOT NULL,
  postalCode TEXT NOT NULL,
  territory TEXT NOT NULL
);

-- INSERT DATA (partial sample)
INSERT INTO productlines (productLine, textDescription, htmlDescription, image) VALUES
('Classic Cars', 'Attention car enthusiasts: Make your wildest car ownership dreams come true...', NULL, NULL),
('Motorcycles', 'Our motorcycles are state of the art replicas...', NULL, NULL),
('Planes', 'Unique, diecast airplane and helicopter replicas...', NULL, NULL),
('Ships', 'The perfect holiday or anniversary gift for executives...', NULL, NULL),
('Trains', 'Model trains are a rewarding hobby for enthusiasts...', NULL, NULL),
('Trucks and Buses', 'The Truck and Bus models are realistic replicas...', NULL, NULL),
('Vintage Cars', 'Our Vintage Car models realistically portray automobiles...', NULL, NULL);

INSERT INTO products (productCode, productName, productLine, productScale, productVendor, productDescription, quantityInStock, buyPrice, MSRP) VALUES
('S10_1678','1969 Harley Davidson Ultimate Chopper','Motorcycles','1:10','Min Lin Diecast','This replica features working kickstand...', 7933, 48.81, 95.70),
('S10_1949','1952 Alpine Renault 1300','Classic Cars','1:10','Classic Metal Creations','Turnable front wheels; steering function...', 7305, 98.58, 214.30),
('S10_2016','1996 Moto Guzzi 1100i','Motorcycles','1:10','Highway 66 Mini Classics','Official Moto Guzzi logos and insignias...', 6625, 68.99, 118.94);

INSERT INTO offices (officeCode, city, phone, addressLine1, addressLine2, state, country, postalCode, territory) VALUES
('1','San Francisco','+1 650 219 4782','100 Market Street','Suite 300','CA','USA','94080','NA'),
('2','Boston','+1 215 837 0825','1550 Court Place','Suite 102','MA','USA','02107','NA'),
('3','NYC','+1 212 555 3000','523 East 53rd Street','apt. 5A','NY','USA','10022','NA');
