/*
- Faça uma consulta que retorne a lista de filmes e suas categorias correspondentes. 
- Faça uma consulta que retorne a lista de todos os atores com o número filmes que cada ator participou. 
Ordene a lista pelo numero de filmes, iniciando pelos atores que mais atuaram. 
- Faça uma consulta que retorne a lista de atores que atuaram em filmes com mais de duas horas de duração (120min). 
Ordene a lista pelo numero de filmes que cada ator participou. 
*/

/* -Faça uma consulta que retorne a lista de filmes e suas categorias correspondentes*/
select f.film_id as "Id. do Filme", f.title as "Título do Filme", c.name as "Categoria" 
from film f 
inner join film_category fc on f.film_id = fc.film_id
inner join category c on fc.category_id = c.category_id
order by f.film_id desc

/*- Faça uma consulta que retorne a lista de todos os atores com o número filmes que cada ator participou.
Ordene a lista pelo numero de filmes, iniciando pelos atores que mais atuaram. */
select a.actor_id, CONCAT(a.first_name," ", a.last_name) as "name", count(fa.film_id) as "Qtde. Filmes"
from actor a
inner join film_actor fa on a.actor_id = fa.actor_id
group by fa.actor_id
order by count(fa.film_id) desc

/*
- Faça uma consulta que retorne a lista de atores que atuaram em filmes com mais de duas horas de duração (120min). 
Ordene a lista pelo numero de filmes que cada ator participou.
*/
select a.actor_id as "Id. Ator", concat(a.first_name," ",a.last_name) as "Nome", count(fa.film_id) as "Qtde. Filmes"
from actor a
inner join film_actor fa on a.actor_id = fa.actor_id
inner join film f on fa.film_id = f.film_id
where f.`length` > 120
group by fa.actor_id
ORDER BY COUNT(fa.film_id) DESC