-- Задание: 13 (Serge I: 2002-11-02)
-- Найдите среднюю скорость ПК, выпущенных производителем A.
select avg(speed)
from pc
inner join product on
    pc.model=product.model
where maker ='A'