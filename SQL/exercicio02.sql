/*Crie uma consulta para cada consulta do exercício anterior que retorne o numero de registros encontrados pela busca:*/

/*Faça uma consulta que retorne os totais de filmes e de categorias:*/
SELECT 
    COUNT(*) AS "Qtde. de Filmes", 
    (SELECT COUNT(DISTINCT category_id) FROM film_category) AS "Qtde. de Categorias"
FROM 
    film;


/*Faça uma consulta que retorne a quantidade de atores vinculados a filmes:*/SELECT 
    COUNT(DISTINCT fa.actor_id) AS "Qtde. Atores vinculados a Filmes"
FROM 
    film_actor AS fa;


/*Faça uma consulta que retorne a quantidade de atores vinculados a filmes com duração maior que 2h:*/
SELECT 
    COUNT(DISTINCT fa.actor_id) AS "Qtde. Atores vinculados a Filmes com mais de 2h"
FROM 
    film_actor AS fa
JOIN 
    film AS f 
ON 
    fa.film_id = f.film_id 
WHERE 
    f.length > 120;
