-- Задание: 19 (Serge I: 2003-02-13)
-- Для каждого производителя, имеющего модели в таблице Laptop, найдите средний размер экрана выпускаемых им ПК-блокнотов.
-- Вывести: maker, средний размер экрана.

select distinct p.maker, avg(screen)
from laptop as l
inner join product as p on
    p.model = l.model
group by p.maker
