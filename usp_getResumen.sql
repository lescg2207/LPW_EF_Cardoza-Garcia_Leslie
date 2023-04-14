
alter PROCEDURE sp_getResumen_Cardoza_Garcia
AS
BEGIN
SELECT FORMAT(SUM(P1), 'N0') 'TotalVotosPPK', FORMAT(SUM(P2), 'N0') ' TotalVotosKeiko', CONCAT(CAST((SUM(P1)) * 100.0 / SUM(TotalVotantes-(VotosBlancos+VotosNulos)) AS decimal(10, 3)), ' %') '% VOTOS VÁLIDOSppk',
CONCAT(CAST((SUM(P2)) * 100.0 / SUM(TotalVotantes-(VotosBlancos+VotosNulos))  AS decimal(8, 3)), ' %' ) '% VOTOS VÁLIDOSkeyko',
format(COUNT(idEstadoActa),'N0') 'totalActas', format(COUNT(*),'N0')'totalActasProcesadas',format(COUNT(*),'N0') 'totalActasContabilizadas', FORMAT(SUM(ElectoresHabiles), 'N0')  'Electores Hábiles', FORMAT(SUM(TotalVotantes), 'N0') 'Ciudadanos que votaron ',
CONCAT ( CAST ( ( SUM(TotalVotantes) * 100.0 / SUM(ElectoresHabiles) ) as decimal (8,3) ), ' %' ) '% de participacion',
CONCAT ( CAST ( ( ( SUM(ElectoresHabiles) - SUM(TotalVotantes) ) * 100.0 / SUM(ElectoresHabiles) ) as decimal (8,3) ), ' %' ) '% de ausentismo'
FROM GrupoVotacion
END