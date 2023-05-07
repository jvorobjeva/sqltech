
-- Задание: 15 (Serge I: 2003-02-03)
-- Найдите размеры жестких дисков, совпадающих у двух и более PC. Вывести: HD
--
select hd from pc
group by hd
having count(*) >= 2