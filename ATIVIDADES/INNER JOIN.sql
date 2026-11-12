USE cinema;
SELECT
    ATOR.NomeReal,
    ATOR.NomeArtistico,
    FILME.NomeFilme,
    PERSONAGEM.Personagem
FROM ATOR
INNER JOIN PERSONAGEM
    ON ATOR.CodAtor = PERSONAGEM.CodAtor
INNER JOIN FILME
    ON PERSONAGEM.CodFilme = FILME.CodFilme
WHERE ATOR.NomeReal = 'Maria da Silva';


SELECT
    ATOR.NomeArtistico,
    FILME.NomeFilme,
    FILME.AnoFilme,
    PERSONAGEM.Personagem
FROM ATOR
INNER JOIN PERSONAGEM
    ON ATOR.CodAtor = PERSONAGEM.CodAtor
INNER JOIN FILME
    ON PERSONAGEM.CodFilme = FILME.CodFilme
WHERE ATOR.NomeArtistico = 'Jim Carrey';

use consulta;

SELECT
    PACIENTE.NomePaciente,
    MEDICO.NomeMedico,
    CONSULTA.DataConsulta
FROM CONSULTA
INNER JOIN PACIENTE
    ON CONSULTA.CodPaciente = PACIENTE.CodPaciente
INNER JOIN MEDICO
    ON CONSULTA.CodMedico = MEDICO.CodMedico
WHERE CONSULTA.DataConsulta >= '2025-04-01'
  AND CONSULTA.DataConsulta < '2025-05-01';
