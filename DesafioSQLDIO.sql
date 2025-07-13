select Nome, ano from filmes

SELECT nome, ano
FROM filmes
ORDER BY ano ASC;

SELECT nome, ano, duracao
FROM filmes
WHERE nome = 'De Volta para o Futuro';

SELECT nome, ano
FROM filmes
WHERE ano = 1997;

SELECT nome, ano
FROM filmes
WHERE ano > 2000;

SELECT nome, duracao
FROM filmes
WHERE duracao > 100 AND duracao < 150
ORDER BY duracao ASC;

SELECT ano, COUNT(*) AS quantidade
FROM filmes
GROUP BY ano
ORDER BY ano DESC;

SELECT PrimeiroNome, UltimoNome
FROM atores
WHERE Genero = 'Masculino';

SELECT f.Nome AS NomeFilme, g.Genero
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id;

SELECT f.Nome AS NomeFilme, g.Genero
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id
WHERE g.Genero = 'Mistério';

SELECT f.Nome AS NomeFilme,
       a.PrimeiroNome,
       a.UltimoNome,
       ef.Papel
FROM Filmes f
JOIN ElencoFilme ef ON f.Id = ef.IdFilme
JOIN Atores a ON ef.IdAtor = a.Id;
