CREATE TABLE artist (
  artist_id SERIAL PRIMARY KEY,
  name VARCHAR(120)
);
INSERT INTO artist (name) 
VALUES('AC/DC'),
        ('Antônio Carlos Jobim'),('Apocalyptica'),
        ('BackBeat'),
        ('Body Count'),
        ('Cidade Negra'),
        ('Academy of St. Martin in the Fields & Sir Neville Marriner'),
        ('Temple of the Dog'),
        ('Dhani Harrison & Jakob Dylan'),
        ('Matisyahu')
        ,('Alberto Turco & Nova Schola Gregoriana'),
        ('Yo-Yo Ma')
/* #1 Add 3 new artists to the artist table. (It already exists.)*/


/* #2 Select 10 artists in reverse alphabetical order.*/
select name from artist order by name asc limit 10
/* #3 Select 5 artists in alphabetical order.*/
select name from artist order by name asc limit 5

/* #4 Select all artists that start with the word ‘Black’.*/
select * from artist where name like 'Black%'

/* #5 Select all artists that contain the word ‘Black’. */
select * from artist where name like '%black%';