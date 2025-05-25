-- 1)film tablosundan 'K' karakteri ile başlayan en uzun ve replacement_cost u en düşük 4 filmi sıralayınız.
select title, replacement_cost, length from film where title like 'K%' order by length desc, replacement_cost asc limit 4

-- 3)film tablosunda içerisinden en fazla sayıda film bulunduran rating kategorisi hangisidir?
select rating, count(rating) from film group by rating order by count(rating) desc limit 1

-- 4)customer tablosunda en çok alışveriş yapan müşterinin adı nedir?
select c.first_name,c.last_name, count(amount) from customer c
inner join payment p on p.customer_id = c.customer_id
group by c.customer_id
order by count(amount) desc limit 1

-- 5)category tablosundan kategori isimlerini ve kategori başına düşen film sayılarını sıralayınız.
select c.name, count(film_id) from category c
inner join film_category fg on fg.category_id = c.category_id
group by c.category_id

-- 6)film tablosunda isminde en az 4 adet 'e' veya 'E' karakteri bulunan kç tane film vardır?
select count (title) from film where title ilike '%e%e%e%e%'

