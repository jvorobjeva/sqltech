-- Задание: 8 (Serge I: 2003-02-03)
-- Найдите производителя, выпускающего ПК, но не ПК-блокноты.

select  maker
from product
where type='PC'
except
select maker
from product
where type in ('Laptop')