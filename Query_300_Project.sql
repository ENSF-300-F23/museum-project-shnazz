-- 1) Show all tables and explain how they are related to one another (keys, triggers, etc.)
SHOW TABLES;

SELECT 
  `TABLE_SCHEMA`,                          
  `TABLE_NAME`,                            
  `COLUMN_NAME`,                           
  `REFERENCED_TABLE_SCHEMA`,               
  `REFERENCED_TABLE_NAME`,                 
  `REFERENCED_COLUMN_NAME`                 
FROM
  `INFORMATION_SCHEMA`.`KEY_COLUMN_USAGE`  
WHERE
  `TABLE_SCHEMA` = SCHEMA()                
  AND `REFERENCED_TABLE_NAME` IS NOT NULL; 


-- 2) A basic retrieval query
SELECT * FROM ARTIST;

-- 3) A retrieval query with ordered results
SELECT * FROM ART_OBJECTS ORDER BY year_made desc;

-- 4) A nested retrieval query
SELECT * FROM COLLECTION
WHERE coll_name IN (
    SELECT collection
    FROM BORROWED_COLLECTION
    WHERE return_date IS NULL
);

-- 5) A retrieval query using joined tables
SELECT ART_OBJECTS.*, ARTIST.artist_name
FROM ART_OBJECTS
JOIN ARTIST ON ART_OBJECTS.artist = ARTIST.artist_name;

-- 6) An update operation with any necessary triggers
UPDATE ARTIST
SET date_born = '1900'
WHERE artist_name = 'Leonardo da Vinci';
SELECT * FROM ARTIST;

-- 7) A deletion operation with any necessary triggers
SET FOREIGN_KEY_CHECKS=0;
DELETE FROM ARTIST
WHERE date_born = '1900';
SELECT * FROM ARTIST;
