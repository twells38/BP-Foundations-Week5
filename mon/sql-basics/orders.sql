/* #1 Create a table called orders that records: order_id, person_id, product_name, product_price, quantity. */
create table orders ( order_id serial primary key, person_id integer, product_name varchar(100), product_price numeric, quantity integer );

/* #2 Add 5 orders to the orders table.*/
insert into (peoson_id,product_name, product_price, quantity);
values(1,'toothbrush', 3, 2),
      (2, 'soap',5,5);

/* #3 Select all the records from the orders table. */
select * from orders

/* #4 Calculate the total number of products ordered. */
select  sum(quantity)   from orders

/* #5 Calculate the total order price.*/
select  sum(product_price)   from orders

/* #6 Calculate the total order price by a single person_id.*/
/* The value of person_id depends on what IDs you used. Use a valid ID from your table */
select sum(product_price * quantity), person_id from orders group by person_id