
INSERT INTO author(author_id, name) (SELECT CAST('00000000-0000-0000-0000-000000000001' AS UUID), 'Frank Herbert');
INSERT INTO author(author_id, name) (SELECT CAST('00000000-0000-0000-0000-000000000002' AS UUID), 'Robert Greene');
INSERT INTO author(author_id, name) (SELECT CAST('00000000-0000-0000-0000-000000000003' AS UUID), 'Jasmine Guillory');
INSERT INTO author(author_id, name) (SELECT CAST('00000000-0000-0000-0000-000000000004' AS UUID), 'Jodi Picoult');
INSERT INTO author(author_id, name) (SELECT CAST('00000000-0000-0000-0000-000000000005' AS UUID), 'Ruth Ware');
INSERT INTO author(author_id, name) (SELECT CAST('00000000-0000-0000-0000-000000000006' AS UUID), 'John Grisham');
INSERT INTO author(author_id, name) (SELECT CAST('00000000-0000-0000-0000-000000000007' AS UUID), 'Lyssa Kay Adams');
INSERT INTO author(author_id, name) (SELECT CAST('00000000-0000-0000-0000-000000000008' AS UUID), 'Sarah Morgenthaler');
INSERT INTO author(author_id, name) (SELECT CAST('00000000-0000-0000-0000-000000000009' AS UUID), 'Jill Shalvis');


INSERT INTO publisher(publisher_id, name) (SELECT CAST('00000000-0000-0000-0000-000000000001' AS UUID), 'Penguin Publishing Group');
INSERT INTO publisher(publisher_id, name) (SELECT CAST('00000000-0000-0000-0000-000000000002' AS UUID), 'WordFire Press LLC');
INSERT INTO publisher(publisher_id, name) (SELECT CAST('00000000-0000-0000-0000-000000000003' AS UUID), 'Center Point');
INSERT INTO publisher(publisher_id, name) (SELECT CAST('00000000-0000-0000-0000-000000000004' AS UUID), 'Random House Publishing Group');
INSERT INTO publisher(publisher_id, name) (SELECT CAST('00000000-0000-0000-0000-000000000005' AS UUID), 'Gallery/Scout Press');
INSERT INTO publisher(publisher_id, name) (SELECT CAST('00000000-0000-0000-0000-000000000006' AS UUID), 'Knopf Doubleday Publishing Group');
INSERT INTO publisher(publisher_id, name) (SELECT CAST('00000000-0000-0000-0000-000000000007' AS UUID), 'Sourcebooks');
INSERT INTO publisher(publisher_id, name) (SELECT CAST('00000000-0000-0000-0000-000000000008' AS UUID), 'HarperCollins Publishers');

INSERT INTO category(category_id, name) (SELECT CAST('00000000-0000-0000-0000-000000000001' AS UUID), 'Fiction');
INSERT INTO category(category_id, name) (SELECT CAST('00000000-0000-0000-0000-000000000002' AS UUID), 'Business');
INSERT INTO category(category_id, name) (SELECT CAST('00000000-0000-0000-0000-000000000003' AS UUID), 'Romance');
INSERT INTO category(category_id, name) (SELECT CAST('00000000-0000-0000-0000-000000000004' AS UUID), 'Non-Fiction');
INSERT INTO category(category_id, name) (SELECT CAST('00000000-0000-0000-0000-000000000005' AS UUID), 'Thriller');

INSERT INTO book
(book_id, 
 isbn, 
 publisher_id, author_id, 
 title, 
 description, 
 edition, price, category_id, 
 cover_image, 
 dimensions, 
 quantity, book_format, publication_date, pages) 
(SELECT CAST('00000000-0000-0000-0000-000000000001' AS UUID), 
 '9780441172719', (SELECT CAST('00000000-0000-0000-0000-000000000001' AS UUID)), (SELECT CAST('00000000-0000-0000-0000-000000000001' AS UUID)), 
 'Dune', 
 'Set on the desert planet Arrakis, Dune is the story of the boy Paul Atreides, heir to a noble family tasked with ruling an inhospitable world.', 
 '25TH ANNIVERSARY', 12.99, (SELECT CAST('00000000-0000-0000-0000-000000000001' AS UUID)), 
 'https://prodimage.images-bn.com/pimages/9780441172719_p0_v6_s600x595.jpg', 
 '4.10(w) x 7.50(h) x 2.10(d)', 
 2, 'Paperback', '09/01/1990', 896);
 
 INSERT INTO book
(book_id, 
 isbn, 
 publisher_id, author_id, 
 title, 
 description, 
 edition, price, category_id, 
 cover_image, 
 dimensions, 
 quantity, book_format, publication_date, pages) 
(SELECT CAST('00000000-0000-0000-0000-000000000002' AS UUID), 
 '9781614755333', (SELECT CAST('00000000-0000-0000-0000-000000000002' AS UUID)), (SELECT CAST('00000000-0000-0000-0000-000000000001' AS UUID)), 
 'Destination Void', 
 'The starship Earthling, filled with thousands of hybernating colonists en route to a new world at Tau Ceti, is stranded beyond the solar system when its three Organic Mental Cores—disembodied human brains that control the vessel functions—go insane.', 
 null, 25.95, (SELECT CAST('00000000-0000-0000-0000-000000000001' AS UUID)), 
 'https://prodimage.images-bn.com/pimages/9781614755333_p0_v2_s600x595.jpg', 
 '6.00(w) x 9.00(h) x 0.75(d)', 
 1, 'Hardcover', '04/14/2017', 282);
 
  INSERT INTO book
(book_id, 
 isbn, 
 publisher_id, author_id, 
 title, 
 description, 
 edition, price, category_id, 
 cover_image, 
 dimensions, 
 quantity, book_format, publication_date, pages) 
(SELECT CAST('00000000-0000-0000-0000-000000000003' AS UUID), 
 '9780143111375', (SELECT CAST('00000000-0000-0000-0000-000000000002' AS UUID)), (SELECT CAST('00000000-0000-0000-0000-000000000002' AS UUID)), 
 'The Laws of Human Nature', 
 'From the #1 New York Times bestselling author comes the definitive book on decoding the behavior of the people around you, Robert Greene is a guide for millions of readers, distilling ancient wisdom and philosophy into essential texts for seekers of power, influence, and mastery.', 
 null, 20.99, (SELECT CAST('00000000-0000-0000-0000-000000000002' AS UUID)), 
 'https://prodimage.images-bn.com/pimages/9780143111375_p0_v1_s600x595.jpg', 
 '9.10(w) x 6.40(h) x 1.40(d)', 
 3, 'Hardcover', '10/01/2019', 624);
 
   INSERT INTO book
(book_id, 
 isbn, 
 publisher_id, author_id, 
 title, 
 description, 
 edition, price, category_id, 
 cover_image, 
 dimensions, 
 quantity, book_format, publication_date, pages) 
(SELECT CAST('00000000-0000-0000-0000-000000000004' AS UUID), 
 '9781643587226', (SELECT CAST('00000000-0000-0000-0000-000000000003' AS UUID)), (SELECT CAST('00000000-0000-0000-0000-000000000003' AS UUID)),
 'Party of Two',
 'A chance meeting with a handsome stranger turns into a whirlwind affair that gets everyone talking in this New York Times bestseller.', 
 'Large Print', 38.95, (SELECT CAST('00000000-0000-0000-0000-000000000003' AS UUID)), 
 'https://prodimage.images-bn.com/pimages/9781643587226_p0_v1_s600x595.jpg', 
 '5.75(w) x 8.75(h) x 0.00(d)', 
 7, 'Library Binding - Large Print', '12/01/2020', 500);

   INSERT INTO book
(book_id, 
 isbn, 
 publisher_id, author_id, 
 title, 
 description, 
 edition, price, category_id, 
 cover_image, 
 dimensions, 
 quantity, book_format, publication_date, pages) 
(SELECT CAST('00000000-0000-0000-0000-000000000005' AS UUID), 
 '9780593157350', (SELECT CAST('00000000-0000-0000-0000-000000000004' AS UUID)), (SELECT CAST('00000000-0000-0000-0000-000000000004' AS UUID)), 
 'The Book of Two Ways', 
 'From the #1 New York Times bestselling author of Small Great Things and A Spark of Light comes a riveting novel about the choices that alter the course of our lives.', 
 'Signed Edition', 28.99, (SELECT CAST('00000000-0000-0000-0000-000000000004' AS UUID)), 
 'https://prodimage.images-bn.com/pimages/9780593157350_p0_v1_s600x595.jpg', 
 '9.10(w) x 5.80(h) x 1.20(d)', 
 2, 'Signed Book', '09/22/2020', 432);
 
  INSERT INTO book
(book_id, 
 isbn, 
 publisher_id, author_id, 
 title, 
 description, 
 edition, price, category_id, 
 cover_image, 
 dimensions, 
 quantity, book_format, publication_date, pages) 
(SELECT CAST('00000000-0000-0000-0000-000000000006' AS UUID), 
 '9781501188817', (SELECT CAST('00000000-0000-0000-0000-000000000005' AS UUID)), (SELECT CAST('00000000-0000-0000-0000-000000000005' AS UUID)), 
 'One by One', 
 'The #1 New York Times bestselling author of The Turn of the Key and In a Dark Dark Wood returns with another suspenseful thriller set on a snow-covered mountain.', 
 null, 19.59, (SELECT CAST('00000000-0000-0000-0000-000000000005' AS UUID)), 
 'https://prodimage.images-bn.com/pimages/9781501188817_p0_v3_s600x595.jpg', 
 '6.00(w) x 9.00(h) x 1.30(d)', 
 5, 'Hardcover', '09/08/2020', 384);
 
  INSERT INTO book
 (book_id,
  isbn,
  publisher_id, author_id,
  title,
  description,
  edition, price, category_id,
  cover_image,
  dimensions,
  quantity, book_format, publication_date, pages)
 (SELECT CAST('00000000-0000-0000-0000-000000000007' AS UUID),
  '9780385545969', (SELECT CAST('00000000-0000-0000-0000-000000000006' AS UUID)), (SELECT CAST('00000000-0000-0000-0000-000000000006' AS UUID)),
  'A Time for Mercy',
  'Jake Brigance is back! The hero of A Time to Kill, one of the most popular novels of our time,  returns in a courtroom drama that showcases #1 New York Times bestselling author John Grisham at the height of his storytelling powers.',
  'Jake Brigance , Series #3', 20.96, (SELECT CAST('00000000-0000-0000-0000-000000000005' AS UUID)),
  'https://prodimage.images-bn.com/pimages/9780385545969_p0_v3_s600x595.jpg',
  '6.38(w) x 9.63(h) x 1.50(d)',
  1, 'Hardcover', '10/13/2020', 480);

  INSERT INTO book
  (book_id,
   isbn,
   publisher_id, author_id,
   title,
   description,
   edition, price, category_id,
   cover_image,
   dimensions,
   quantity, book_format, publication_date, pages)
  (SELECT CAST('00000000-0000-0000-0000-000000000008' AS UUID),
   '9781984806093', (SELECT CAST('00000000-0000-0000-0000-000000000001' AS UUID)), (SELECT CAST('00000000-0000-0000-0000-000000000007' AS UUID)),
   'The Bromance Book Club',
   'Nashville Legends second baseman Gavin Scott''s marriage is in major league trouble. He''s recently discovered a humiliating secret: his wife Thea has always faked the Big O.',
   'Bromance Book Club Series , #1', 14.50, (SELECT CAST('00000000-0000-0000-0000-000000000003' AS UUID)),
   'https://prodimage.images-bn.com/pimages/9781984806093_p0_v2_s600x595.jpg',
   '5.50(w) x 8.10(h) x 1.00(d)',
   5, 'Paperback', '11/05/2019', 352);

INSERT INTO book
(book_id,
isbn,
publisher_id, author_id,
title,
description,
edition, price, category_id,
cover_image,
dimensions,
quantity, book_format, publication_date, pages)
(SELECT CAST('00000000-0000-0000-0000-000000000009' AS UUID),
'9781728210483', (SELECT CAST('00000000-0000-0000-0000-000000000007' AS UUID)), (SELECT CAST('00000000-0000-0000-0000-000000000008' AS UUID)),
'The Tourist Attraction',
'Curl up with a quirky small-town Alaskan rom-com that''ll leave you laughing over a grumpy local and the sunny tourist who turns his world upside down.',
'Moose Springs, Alaska Series , #1', 12.99, (SELECT CAST('00000000-0000-0000-0000-000000000003' AS UUID)),
'https://prodimage.images-bn.com/pimages/9781728210483_p0_v2_s600x595.jpg',
'5.50(w) x 8.20(h) x 1.20(d)',
5, 'Paperback', '05/05/2020', 416);

INSERT INTO book
(book_id,
isbn,
publisher_id, author_id,
title,
description,
edition, price, category_id,
cover_image,
dimensions,
quantity, book_format, publication_date, pages)
(SELECT CAST('00000000-0000-0000-0000-000000000010' AS UUID),
'9780062897916', (SELECT CAST('00000000-0000-0000-0000-000000000008' AS UUID)), (SELECT CAST('00000000-0000-0000-0000-000000000009' AS UUID)),
'The Summer Deal',
'From New York Times bestselling author Jill Shalvis comes a friends-to-frenemies-to-lovers story… Add in a few secrets. Shake. Stir. Then read on a lazy summer day at the beach…',
'Wildstone Series , #5', 16.99, (SELECT CAST('00000000-0000-0000-0000-000000000003' AS UUID)),
'https://prodimage.images-bn.com/pimages/9780062897916_p0_v3_s600x595.jpg',
'7.80(w) x 5.30(h) x 1.00(d)',
5, 'Paperback', '06/02/2020', 384);


 
SELECT * FROM vw_books;


