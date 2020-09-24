
DROP TABLE IF EXISTS author CASCADE;

DROP TABLE IF EXISTS publisher CASCADE;

DROP TABLE IF EXISTS category CASCADE;

DROP TABLE IF EXISTS book CASCADE;

DROP TABLE IF EXISTS customer CASCADE;

DROP TABLE IF EXISTS checkout CASCADE;

DROP TABLE IF EXISTS checkout_book CASCADE;

DROP extension IF EXISTS "uuid-ossp";

CREATE extension "uuid-ossp";

CREATE TABLE author (
  author_id uuid NOT NULL DEFAULT uuid_generate_v4(),
  name varchar(50) NOT NULL UNIQUE,
  PRIMARY KEY (author_id)
);

CREATE TABLE publisher (
  publisher_id uuid NOT NULL DEFAULT uuid_generate_v4(),
  name varchar(50) NOT NULL UNIQUE,
  PRIMARY KEY (publisher_id)
);

CREATE TABLE category (
  category_id uuid NOT NULL DEFAULT uuid_generate_v4(),
  name varchar(50) NOT NULL UNIQUE,
  PRIMARY KEY (category_id)
);

CREATE TABLE book (
  book_id uuid NOT NULL DEFAULT uuid_generate_v4(),
  isbn varchar(50) NOT NULL UNIQUE,
  publisher_id uuid NOT NULL,
  author_id uuid NOT NULL,
  title varchar(100) NOT NULL UNIQUE,
  description varchar(500) NOT NULL,
  edition varchar(50),
  price real NOT NULL,
  category_id uuid NOT NULL,
  cover_image varchar(100),
  dimensions varchar(50),
  quantity int NOT NULL DEFAULT 0,
  book_format varchar(50),
  publication_date date,
  pages int,
  PRIMARY KEY (book_id),
  FOREIGN KEY (publisher_id) REFERENCES publisher(publisher_id) ON DELETE CASCADE,
  FOREIGN KEY (author_id) REFERENCES author(author_id) ON DELETE CASCADE,
  FOREIGN KEY (category_id) REFERENCES category(category_id) ON DELETE CASCADE
);

CREATE TABLE customer (
  customer_id uuid NOT NULL DEFAULT uuid_generate_v4(),
  name varchar(50) NOT NULL,
  email varchar(50) NOT NULL UNIQUE,
  phone varchar(20),
  PRIMARY KEY (customer_id)
);

CREATE TABLE checkout (
  checkout_id uuid NOT NULL DEFAULT uuid_generate_v4(),
  customer_id uuid NOT NULL,
  transaction_type varchar(50),
  transaction_date date NOT NULL,
  PRIMARY KEY (checkout_id),
  FOREIGN KEY (customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE
);

CREATE TABLE checkout_book (
  checkout_book_id uuid NOT NULL DEFAULT uuid_generate_v4(),
  book_id uuid NOT NULL,
  checkout_id uuid NOT NULL,
  PRIMARY KEY (checkout_book_id),
  FOREIGN KEY (book_id) REFERENCES book(book_id) ON DELETE CASCADE,
  FOREIGN KEY (checkout_id) REFERENCES checkout(checkout_id) ON DELETE CASCADE
);


DROP VIEW IF EXISTS vw_books;

CREATE OR REPLACE VIEW vw_books
 AS
 SELECT b.book_id, b.isbn, 
 p.name publisher, a.name author, 
 b.title, b.description, b.edition, b.price, 
 c.name category, 
 b.cover_image, b.dimensions, b.quantity, b.book_format, b.publication_date, b.pages
   FROM book b
   JOIN author a ON a.author_id = b.author_id
   JOIN publisher p ON p.publisher_id = b.publisher_id
   JOIN category c ON c.category_id = b.category_id;

--SELECT * FROM vw_books;


