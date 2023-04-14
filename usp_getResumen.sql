
alter PROCEDURE sp_getResumen_Cardoza_Garcia
AS
BEGIN
SELECT FORMAT(SUM(P1), 'N2') 'TotalVotosPPK', FORMAT(SUM(P2), 'N2') ' TotalVotosKeiko', CONCAT(CAST((SUM(TotalVotantes)-SUM(P1)) * 100.0 / SUM(TotalVotantes) AS decimal(10, 3)), ' %') '% VOTOS VÁLIDOSppk',
CONCAT(CAST((SUM(P2)) * 100.0 / SUM(TotalVotantes)  AS decimal(8, 3)), ' %' ) '% VOTOS VÁLIDOSkeyko',
format(COUNT(idEstadoActa),'N2') 'totalActas', format(COUNT(*),'N2')'totalActasProcesadas',format(COUNT(*),'N2') 'totalActasContabilizadas', FORMAT(SUM(ElectoresHabiles), 'N2')  'Electores Hábiles', FORMAT(SUM(TotalVotantes), 'N2') 'Ciudadanos que votaron ',
CONCAT ( CAST ( ( SUM(TotalVotantes) * 100.0 / SUM(TotalVotantes) ) as decimal (8,3) ), ' %' ) '% de participacion',
CONCAT ( CAST ( ( ( SUM(ElectoresHabiles) - SUM(TotalVotantes) ) * 100.0 / SUM(ElectoresHabiles) ) as decimal (8,3) ), ' %' ) '% de ausentismo'
FROM GrupoVotacion
END