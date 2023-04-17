
select distinct maker
from product
inner join PC on
    pc.model=product.model
where speed>=450
union
select distinct maker
from product
inner join laptop on
    laptop.model=product.model
where speed>=450 and type!='Laptop'
