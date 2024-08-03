select * from products
	
--1)
select name,sum(quantity) as total_quantity from products
group by name

--2)
select price,avg(quantity) as average_quantity from products
where price>100 group by price

--3)
select name,min(price)as min_price from products
where quantity <50 group by name

--4)
select name,max(price)as max_price from products
where quantity >10 group by name

--5)
select name,count(*) as prouduct_count from products
where price>5000 group by name

--6)
select name,sum(price*quantity) as total_value from products
group by name

--7)
select name,avg(price)as average_price from products
where quantity >20 group by name having avg(price)>4000

--8)
select name ,max(quantity)as max_quantity from products
where price>3489 group by name

--9)
select name ,min(quantity)as minimum_quantity from products
where price>50 group by name

--10)
select name,sum(quantity) as total_quantity from products 
where price >1000 and quantity >10 group by name having sum(quantity)>50
