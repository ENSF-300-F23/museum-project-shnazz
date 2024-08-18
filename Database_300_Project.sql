DROP DATABASE IF exists museum;
Create Database museum;
use museum;

drop table if exists ARTIST;
create table ARTIST (

artist_name     varchar(50)   not null      ,
date_born       char(4)                     ,
date_died       char(4)                     ,
origin_country  varchar(50)                 ,
epoch           varchar(50)                 ,
main_style      varchar(50)                 ,
description    varchar(250)                 ,
primary key (artist_name)

);

INSERT INTO ARTIST (artist_name, date_born, date_died, origin_country, epoch, main_style, description)
VALUES
('Claude Monet', '1840', '1926', 'France', 'Impressionism', 'Painting', 'Founder of French Impressionist painting.'),
('Frida Kahlo', '1907', '1954', 'Mexico', 'Surrealism', 'Painting', 'Mexican painter known for her self-portraits and works inspired by the nature and artifacts of Mexico.'),
('Leonardo da Vinci', '1452', '1519', 'Italy', 'Renaissance', 'Painting', 'Italian polymath of the Renaissance, known for his art and inventions.'),
('Vincent van Gogh', '1853', '1890', 'Netherlands', 'Post-Impressionism', 'Painting', 'Dutch painter known for his expressive use of color and post-impressionist style.'),
('Pablo Picasso', '1881', '1973', 'Spain', 'Cubism', 'Painting', 'Spanish painter and sculptor, one of the most influential artists of the 20th century.'),
('Michelangelo', '1475', '1564', 'Italy', 'High Renaissance', 'Sculpture', 'Renowned sculptor, painter, and architect of the High Renaissance.'),
('Georgia O\'Keeffe', '1887', '1986', 'United States', 'Modernism', 'Painting', 'Prominent American modernist artist, known for her paintings of enlarged flowers.'),
('Salvador Dalí', '1904', '1989', 'Spain', 'Surrealism', 'Painting', 'Spanish surrealist artist known for his dreamlike, eccentric, and imaginative works.'),
('Rembrandt van Rijn', '1606', '1669', 'Netherlands', 'Baroque', 'Painting', 'Dutch master of the Baroque era, known for his portraits and dramatic use of light and shadow.');

drop table if exists ART_OBJECTS;
create table ART_OBJECTS (

id_no      integer        not null         ,
artist     varchar(50) 	  default 'unknown',
year_made  char(4)                         ,
title      varchar(50)                     ,
art_desc   varchar(250)                    ,
culture    varchar(50)                     ,
epoch      varchar(50)                     ,
art_type   char(1)                         ,
perm_borr  char(1)                         ,
exhibition varchar(50)                     ,
primary key(id_no)                         ,
unique(exhibition)                         ,
foreign key(artist) references ARTIST(artist_name)

);

INSERT INTO ART_OBJECTS (id_no, artist, year_made, title, art_desc, culture, epoch, art_type, perm_borr, exhibition)
VALUES
(1, 'Leonardo da Vinci', '1498', 'Mona Lisa', 'Portrait painting', 'Italian', 'Renaissance', 'P', 'P', 'Impressionist Masterpieces'),
(2, 'Vincent van Gogh', '1889', 'Starry Night', 'Landscape painting', 'Dutch', 'Post-Impressionism', 'P', 'P', 'Renaissance Wonders'),
(3, 'Pablo Picasso', '1907', 'Les Demoiselles d\'Avignon', 'Oil painting', 'Spanish', 'Cubism', 'P', 'P', 'Modern Art Exhibition'),
(4, 'Claude Monet', '1872', 'Impression, Sunrise', 'Oil on canvas', 'French', 'Impressionism', 'P', 'P', 'Post-Impressionist Showcase'),
(5, 'Frida Kahlo', '1940', 'The Two Fridas', 'Oil on canvas', 'Mexican', 'Surrealism', 'P', 'P', 'Surrealist Wonders'),
(6, 'Michelangelo', '1501', 'David', 'Marble sculpture', 'Italian', 'High Renaissance', 'S', 'P', 'Renaissance Marvels'),
(7, 'Georgia O\'Keeffe', '1932', 'Jimson Weed/White Flower No. 1', 'Oil on canvas', 'American', 'Modernism', 'P', 'P', 'Modern Art Extravaganza'),
(8, 'Salvador Dalí', '1931', 'The Persistence of Memory', 'Oil on canvas', 'Spanish', 'Surrealism', 'P', 'P', 'Surrealist Dreams'),
(9, 'Rembrandt van Rijn', '1642', 'The Night Watch', 'Oil on canvas', 'Dutch', 'Baroque', 'P', 'P', 'Baroque Splendors');

drop table if exists PAINTING;
create table PAINTING (

Paint_id    integer                        ,
paint_type  varchar(50)                    ,
drawn_on    varchar(50)                    ,
style       varchar(50)                    ,
primary key(paint_id)                      ,
foreign key(paint_id) references ART_OBJECTS(id_no)

);

INSERT INTO PAINTING (Paint_id, paint_type, drawn_on, style)
VALUES
(1, 'Oil on wood', 'Canvas', 'Portrait'),
(2, 'Oil on canvas', 'Canvas', 'Landscape'),
(3, 'Oil on canvas', 'Canvas', 'Cubist'),
(4, 'Oil on canvas', 'Canvas', 'Impressionist'),
(5, 'Oil on canvas', 'Canvas', 'Surrealist'),
(6, 'Marble', 'Stone', 'Renaissance'),
(7, 'Oil on canvas', 'Canvas', 'Modernist'),
(8, 'Oil on canvas', 'Canvas', 'Surrealist'),
(9, 'Oil on canvas', 'Canvas', 'Baroque');

drop table if exists SCULPTURE;
create table SCULPTURE (

sculp_id    integer                        ,
material    varchar(50)                    ,
height      varchar(50)                    ,
weight      varchar(50)                    ,
style       varchar(50)                    ,
primary key(sculp_id)                      ,
foreign key(sculp_id) references ART_OBJECTS(id_no)

);

INSERT INTO SCULPTURE (sculp_id, material, height, weight, style)
VALUES
(1, 'Marble', '75 cm', 'unknown', 'Renaissance'),
(2, 'Bronze', 'unknown', 'unknown', 'Post-Impressionism'),
(3, 'Clay', '40 cm', 'unknown', 'Cubism'),
(4, 'Bronze', 'unknown', 'unknown', 'Impressionist'),
(5, 'Wood', '60 cm', 'unknown', 'Surrealist'),
(6, 'Bronze', '500 cm', 'unknown', 'High Renaissance'),
(7, 'Metal', 'unknown', 'unknown', 'Modernist'),
(8, 'Bronze', '25 cm', 'unknown', 'Surrealist'),
(9, 'Bronze', '363 cm', 'unknown', 'Baroque');

drop table if exists STATUE;
create table STATUE (

stat_id     integer                        ,
material    varchar(50)                    ,
height      varchar(50)                    ,
weight      varchar(50)                    ,
style       varchar(50)                    ,
primary key(stat_id)                      ,
foreign key(stat_id) references ART_OBJECTS(id_no)

);

INSERT INTO STATUE (stat_id, material, height, weight, style)
VALUES
(1, 'Marble', '150 cm', 'unknown', 'Renaissance'),
(2, 'Bronze', 'unknown', 'unknown', 'Post-Impressionism'),
(3, 'Metal', '120 cm', 'unknown', 'Cubism'),
(4, 'Marble', '100 cm', 'unknown', 'Impressionist'),
(5, 'Clay', '80 cm', 'unknown', 'Surrealist'),
(6, 'Marble', '380 cm', 'unknown', 'High Renaissance'),
(7, 'Bronze', '150 cm', 'unknown', 'Modernist'),
(8, 'Metal', '10 cm', 'unknown', 'Surrealist'),
(9, 'Bronze', '363 cm', 'unknown', 'Baroque');

drop table if exists OTHER;
create table OTHER (

other_id    integer                        ,
type        varchar(50)                    ,
style       varchar(50)                    ,
primary key(other_id)                      ,
foreign key(other_id) references ART_OBJECTS(id_no)

);

INSERT INTO OTHER (other_id, type, style)
VALUES
(1, 'Ceramic', 'Renaissance'),
(2, 'Textile', 'Post-Impressionism'),
(3, 'Glass', 'Cubism'),
(4, 'Ceramic', 'Impressionist'),
(5, 'Metal', 'Surrealist'),
(6, 'Metal', 'Renaissance'),
(7, 'Glass', 'Modernist'),
(8, 'Mixed Media', 'Surrealist'),
(9, 'Wood', 'Baroque');

drop table if exists EXHIBTION;
create table EXHIBTION (

ex_name    varchar(50)    not null         ,
start_date date                            ,
end_date   date                            ,
primary key(ex_name)                       ,
foreign key(ex_name) references ART_OBJECTS(exhibition)

);

INSERT INTO EXHIBTION (ex_name, start_date, end_date)
VALUES
('Impressionist Masterpieces', '2023-01-01', '2023-02-01'),
('Renaissance Wonders', '2023-03-01', '2023-04-01'),
('Modern Art Exhibition', '2023-05-01', '2023-06-01'),
('Post-Impressionist Showcase', '2023-07-01', '2023-08-01'),
('Surrealist Wonders', '2023-09-01', '2023-10-01'),
('Renaissance Marvels', '2023-11-01', '2023-12-01'),
('Modern Art Extravaganza', '2024-01-01', '2024-02-01'),
('Surrealist Dreams', '2024-03-01', '2024-04-01'),
('Baroque Splendors', '2024-05-01', '2024-06-01');

drop table if exists COLLECTION;
create table COLLECTION (

coll_name     varchar(50) not null         ,
type          varchar(50)                  ,
address       varchar(50)                  ,
coll_desc     varchar(250)                 ,
contact_name  varchar(50)                  ,
phone_number  varchar(50)                  ,
primary key(coll_name)                     

);

INSERT INTO COLLECTION (coll_name, type, address, coll_desc, contact_name, phone_number)
VALUES
('National Art Gallery', 'Public', '123 Main St, Cityville', 'National art collection', 'John Smith', '555-1234'),
('Modern Art Museum', 'Public', '456 Broad St, Townsville', 'Contemporary and modern art', 'Jane Doe', '555-5678'),
('Artistic Expressions Museum', 'Public', '789 Oak St, Villagetown', 'Diverse collection of art through the ages', 'Emily Johnson', '555-9012'),
('Contemporary Art Center', 'Public', '101 Pine St, Citytown', 'Focus on contemporary and modern art', 'Robert Williams', '555-3456'),
('Classic Art Gallery', 'Public', '789 Maple St, Artcity', 'Collection of classic artworks', 'Amanda Johnson', '555-6789'),
('Avant-Garde Arts Center', 'Public', '202 Pine St, Innovativetown', 'Showcasing avant-garde and experimental art', 'Christopher Davis', '555-2345'),
('Historical Art Museum', 'Public', '456 Oak St, Historyville', 'Preserving historical art from different eras', 'Sarah White', '555-7890');

drop table if exists BORROWED_COLLECTION;
create table BORROWED_COLLECTION (

coll_id       integer     not null         ,
collection    varchar(50)                  ,
borrow_date   date                         ,
return_date   date                         ,
primary key(coll_id)                     ,
foreign key(collection) references COLLECTION(coll_name),
foreign key(coll_id) references ART_OBJECTS(id_no)                 

);

INSERT INTO BORROWED_COLLECTION (coll_id, collection, borrow_date, return_date)
VALUES
(1, 'National Art Gallery', '2023-07-01', '2023-08-01'),
(2, 'Modern Art Museum', '2023-09-01', NULL),
(3, 'Artistic Expressions Museum', '2023-11-01', NULL),
(4, 'Contemporary Art Center', '2023-12-01', NULL),
(5, 'Classic Art Gallery', '2024-07-01', NULL),
(6, 'Avant-Garde Arts Center', '2024-08-01', NULL),
(7, 'Historical Art Museum', '2024-09-01', NULL);

drop table if exists PERMANENT_COLLECTION;
create table PERMANENT_COLLECTION (

perm_id       integer     not null         ,
status        varchar(50)                  ,
cost          varchar(50)                  ,
date_acquired date                         ,
primary key(perm_id)                       ,
foreign key(perm_id) references ART_OBJECTS(id_no)                    

);

INSERT INTO PERMANENT_COLLECTION (perm_id, status, cost, date_acquired)
VALUES
(1, 'Owned', '$10 million', '2022-01-01'),
(2, 'Owned', '$5 million', '2022-02-01'),
(3, 'Donated', '$8 million', '2022-03-01'),
(4, 'Owned', '$7 million', '2022-04-01'),
(5, 'Donated', '$12 million', '2022-05-01'),
(6, 'Owned', '$15 million', '2023-01-01'),
(7, 'Owned', '$8 million', '2023-02-01'),
(8, 'Donated', '$20 million', '2023-03-01'),
(9, 'Owned', '$18 million', '2023-04-01');

DROP ROLE IF EXISTS admin_access@localhost, employee_access@localhost;
CREATE ROLE admin_access@localhost, employee_access@localhost;

GRANT ALL PRIVILEGES ON museum.* TO admin_access@localhost;
GRANT SELECT,INSERT,UPDATE ON museum.* TO employee_access@localhost;

DROP USER IF EXISTS 'admin'@'localhost','employee'@'localhost','guest'@'localhost';
CREATE USER 'admin'@'localhost' IDENTIFIED BY 'admin';
CREATE USER 'employee'@'localhost' IDENTIFIED BY 'employee';
CREATE USER 'guest'@'localhost' IDENTIFIED BY 'guest';

GRANT admin_access@localhost TO 'admin'@'localhost';
GRANT employee_access@localhost TO 'employee'@'localhost';
GRANT SELECT ON museum.* TO 'guest'@'localhost';






