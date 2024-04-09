-- Busca 1
SELECT Nome, Ano FROM Filmes

-- Busca 2
SELECT Nome, Ano, Duracao FROM Filmes
ORDER By Ano ASC

-- Busca 3
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome = 'De volta para o futuro'

-- Busca 4
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano = '1997'

-- Busca 5
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano > '2000'

-- Busca 6
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC

-- Busca 7
SELECT Ano, COUNT(Ano) Quantidade FROM Filmes 
GROUP BY Ano 
ORDER BY Quantidade DESC;

-- Busca 8
SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores
WHERE Genero = 'M'

-- Busca 9
SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- Busca 10
SELECT F.Nome NomeFilme, G.Genero Genero
FROM Filmes F
JOIN FilmesGenero FG ON F.ID = FG.IDFilme
JOIN Generos G ON FG.IDGenero = G.ID;

-- Busca 11
SELECT F.Nome NomeFilme, G.Genero Genero
FROM Filmes F
JOIN FilmesGenero FG ON F.ID = FG.IDFilme
JOIN Generos G ON FG.IDGenero = G.ID
WHERE G.Genero = 'Mistério';

-- Busca 12
SELECT F.Nome NomeFilme, A.PrimeiroNome, A.UltimoNome, EF.Papel
FROM Filmes F
JOIN ElencoFilme EF ON F.ID = EF.IdFilme
JOIN Atores A ON EF.IdFilme = A.ID;
