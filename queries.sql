SELECT [Nome], [Ano] FROM [Filmes].[dbo].[Filmes];

SELECT [Nome], [Ano], [duracao] FROM [Filmes].[dbo].[Filmes] order by  ano asc;

SELECT [Nome], [Ano], [duracao] FROM [Filmes].[dbo].[Filmes] where nome = 'De Volta para o Futuro';

SELECT [Nome], [Ano], [duracao] FROM [Filmes].[dbo].[Filmes] where ano = 1997;

SELECT [Nome], [Ano], [duracao] FROM [Filmes].[dbo].[Filmes] where ano > 2000;

SELECT [Nome], [Ano], [duracao] FROM [Filmes].[dbo].[Filmes] where duracao > 100 and duracao < 150;

SELECT COUNT(*) as qtd_filmes, ano FROM [Filmes].[dbo].[Filmes] group by ano;

select * from Atores where genero = 'M';

select * from Atores where genero = 'F' order by PrimeiroNome asc;

select f.nome as nome, g.genero as genero from filmes as f 
	inner join FilmesGenero as fg on fg.IdFilme = f.Id
	inner join generos as g on g.Id = fg.IdGenero;


select f.nome as nome, g.genero as genero from filmes as f 
	inner join FilmesGenero as fg on fg.IdFilme = f.Id
	inner join generos as g on g.Id = fg.IdGenero
where g.Genero = 'Mistério';


select f.nome as nome, a.PrimeiroNome, a.UltimoNome, ef.Papel from filmes as f 
	inner join ElencoFilme as ef on ef.IdFilme = f.Id
	inner join Atores as a on a.Id = ef.IdAtor;