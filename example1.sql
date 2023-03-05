select a.first_name, a.last_name, f.title, f.release_year, f.rating
from actor as a
         inner join film_actor as fa on a.actor_id = fa.actor_id
         inner join film as f on fa.film_id = f.film_id
where a.first_name = 'FRANCES'
order by f.release_year desc