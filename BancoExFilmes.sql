select Nome, Ano from filmes

-- 2

select nome, ano from filmes order by ano asc

-- 3

select nome, ano, duracao from filmes where Nome like 'de volta%'

--4

select nome, ano, duracao from filmes where ano = 1997

-- 5

select nome, ano, duracao from filmes where ano >= 2000

-- 6

select nome, ano, duracao from filmes where Duracao > 100 and Duracao < 150 order by duracao asc; 


-- 7

select ano, count(*) as Quantidade from filmes  group by ano order by max(duracao) desc; 

-- 8 

select PrimeiroNome, UltimoNome from atores where Genero = 'm'

-- 9

select PrimeiroNome, UltimoNome from atores where Genero = 'f' order by (PrimeiroNome) asc

-- 10

SELECT filmes.nome,Generos.Genero from Filmes INNER JOIN Generos   ON Generos.Id = Filmes.id;

-- 11

SELECT filmes.nome,Generos.Genero from Filmes INNER JOIN Generos oN Generos.Id = Filmes.id where Generos.genero like 'mi%'

-- 12
SELECT filmes.nome AS nome, atores.primeironome AS PrimeiroNome, atores.ultimonome AS UltimoNome, ElencoFilme.Papel AS papel
FROM filmes
INNER JOIN ElencoFilme ON filmes.id = ElencoFilme.Id
INNER JOIN atores ON  filmes.id = Atores.id
