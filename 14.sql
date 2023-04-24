-- Задание: 14 (Serge I: 2002-11-05)
-- Найдите класс, имя и страну для кораблей из таблицы Ships, имеющих не менее 10 орудий.
select  s.class,name, country
from ships as s

inner join classes  on
    s.class=classes.class

where numguns>=10



