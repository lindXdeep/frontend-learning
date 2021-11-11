-- INSERT

INSERT INTO author
  VALUES (10, 'lohn Silver',  4.6);

INSERT INTO author
  VALUES (11, 'lohn Silver2',  3.6),
         (12, 'lohn Silver3',  1.6),
         (13, 'lohn Silver4',  2.6),
         (14, 'lohn Silver5',  5.6);
  
SELECT *
  INTO best_authors
    FROM author
      WHERE rating >= 4.5;

INSERT INTO best_authors
  SELECT * 
    FROM author
      WHERE rating < 4.6;

-- UPDATE

SELECT * FROM author;

UPDATE author
  SET full_name = 'Elias', 
      rating = 5
    WHERE author_id =1;

-- DELETE

DELETE FROM author
  WHERE rating < 4.5;

TRUNCATE TABLE author;





