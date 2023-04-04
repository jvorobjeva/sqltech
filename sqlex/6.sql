-- Задание: 6 (Serge I: 2002-10-28)
-- Для каждого производителя,
--     выпускающего ПК-блокноты c объёмом
--     жесткого диска не менее 10 Гбайт,
--     найти скорости таких ПК-блокнотов. Вывод: производитель, скорость.


select distinct p.maker, l.speed
from product p
         inner join laptop l on p.model = l.model
where type != 'pc'
  and type != 'printer'
  and hd >= 10
order by speed, maker

