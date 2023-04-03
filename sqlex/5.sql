select model
from pc
where (CD = '12x' or CD = '24x') and price < 600 and
    model in (select model from product where type != 'Printer' and type != 'Laptop')