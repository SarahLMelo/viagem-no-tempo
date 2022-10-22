-- Projetar As missões que um funcionario que gerencia um setor participou
SELECT *
FROM MISSAO M
WHERE M.CODIGO IN(
    SELECT P.CODIGO_MISSAO
    FROM PARTICIPA P
    WHERE P.FUNCIONARIO IN (
        SELECT S.CPF
        FROM SETOR S))
