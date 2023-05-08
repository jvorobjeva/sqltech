-- Найдите модели ПК-блокнотов, скорость которых меньше скорости каждого из ПК.
-- Вывести: type, model, speed

-- select prod.type,lap.model, lap.speed
-- from laptop as lap,product as prod
-- group by prod.type, lap.model, lap.speed
-- having  lap.speed < ALL (SELECT pc.speed
--  FROM PC as pc) and prod.type='Laptop'

select distinct prod.type,lap.model, lap.speed
from laptop as lap,product as prod
where lap.speed < ALL (SELECT pc.speed
 FROM PC as pc) and prod.type='Laptop'

