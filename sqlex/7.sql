-- Задание: 7 (Serge I: 2002-11-02)
-- Найдите номера моделей и цены всех
--     имеющихся в продаже продуктов
--     (любого типа) производителя B (латинская буква).

-- select product.model, product.maker
-- from product
-- where maker = 'B'

select t1.model, t1.price
from (select product.model, pc.price, product.maker
      from product
               inner join pc on pc.model = product.model
      union
      select product.model, l.price, product.maker
      from product
               inner join laptop l on product.model = l.model
      union
      select product.model, p.price, product.maker
      from product
               inner join printer p on product.model = p.model) as t1
where t1.maker = 'B'
