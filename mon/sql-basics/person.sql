/* #1 */
CREATE TABLE person ( person_id SERIAL PRIMARY KEY, name VARCHAR(200), age INTEGER, height INTEGER, city VARCHAR(200), favorite_color VARCHAR(200));

/* #2 */

insert into person(person_id, name, age, height, city, favourite_color)
values(Sornya Wells, 38, 160, 'Kennesaw','Pink'),
        (Kristen Moore, 25, 165,'Atlanta','Brown'),
        (Greenie Hammer, 30, 162, 'Woodstock','Green'),
        (Kate Jensen, 45, 166, 'Canton','Blue'),
        (Pearl Smith,44,163,'Dunwoody','White'),

/* #3 Select all the people in the person table by height from tallest to shortest.*/
select * from person order by height desc
/* #4 Select all the people in the person table by height from shortest to tallest.*/

select * from person order by height asc
/* #5 Select all the people in the person table by age from oldest to youngest.*/

select *from person order by age desc    
/* #6 Select all the people in the person table older than age 20.
*/

select * from person where age > 20;
/* #7 Select all the people in the person table that are exactly 18.*/

select * from person where age = 18
/* #8 Select all the people in the person table that are less than 20 and older than 30.*/

select * from person where age < 20 or age > 30
/* #9 Select all the people in the person table that are not 27 (use not equals).*/

select * from person where age !=27;
/* #10 Select all the people in the person table where their favorite color is not red.*/

select * from person where favorite_color != 'red';
/* #11 Select all the people in the person table where their favorite color is not red and is not blue.*/

select * from person where favorite_color != 'red'and favorite_color != 'blue';
/* #12 Select all the people in the person table where their favorite color is orange or green.*/

select * from person where favorite_color = 'orange'or favorite_color = 'green';
/* #13 Select all the people in the person table where their favorite color is orange, green or blue (use IN).*/

select * from person where favorite_color in ('green', 'oragne', 'blue');
/* #14 Select all the people in the person table where their favorite color is yellow or purple (use IN).*/

select * from person where favorite_color in ('purple', 'yellow');