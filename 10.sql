-- Найдите модели принтеров, имеющих самую высокую цену. Вывести: model, price
--
--
--  · Справка по теме:
--     Подзапросы
--     Получение итоговых значений

select distinct model,price
from printer
where price =(select max(price)
              from printer)
