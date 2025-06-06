-- 1)film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?
select count(*) from film where length > (select avg(length) from film);

-- 2)film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?
select count(*) from film where rental_rate = (select max(rental_rate) from film); 

-- 3)film tablosunda en düşük rental_rate ve en düşük replacement_cost değerlerine sahip filmleri sıralayınız.
select title from film where rental_rate = (select min(rental_rate) from film)
and replacement_cost = (select min(replacement_cost) from film);

-- 4)payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.

select c.customer_id, c.first_name, count(p.payment_id) as total from payment p
inner join customer c on p.customer_id = c.customer_id
group by c.customer_id, c.first_name, c.last_name
order by total desc limit 3;



