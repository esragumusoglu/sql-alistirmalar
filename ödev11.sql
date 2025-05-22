-- 1)actor ve customer tablolarında bulunan first_name sütunları için tüm verileri sıralayalım.
(select first_name from customer)
union
(select first_name from actor);

-- 2)actor ve customer tablolarında bulunan first_name sütunları için kesişen verileri sıralayalım.
SELECT first_name FROM actor INTERSECT SELECT first_name FROM customer; 

-- 3)actor ve customer tablolarında bulunan first_name sütunları için ilk tabloda bulunan ancak ikincitabloda bulunmayan verileri sıralayalım.
SELECT first_name FROM actor EXCEPT SELECT first_name FROM customer;
