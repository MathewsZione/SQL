/*Faça uma busca de quantos livros não estão com o status publicado e pageCount menor que 300*/
db.biblioteca.find({status: {$nin: ["PUBLISH"]}, pageCount: {$lt: 300}})

/*Faça uma busca de livros que contém as palavras MongoDB e SQL Server no título*/
db.biblioteca.find({title: {$regex: /MongoDB|SQL Server/}}, {title: true})

/*Faça uma busca com expressão regular onde ISBN começa com 18*/
db.biblioteca.find({isbn: {$regex: /^18/}}, {isbn: true})

/*Usando Expressão Regular, busque livros que contém a palavra JAVA ou Mobile na descrição do livro (LongDescription), lembrando que deve trazer todas as palavras independente de começa com maiúsculo ou minúsculo*/
db.biblioteca.find({longDescription: {$regex: /.ava\b|.obile/}}, {longDescription: true})