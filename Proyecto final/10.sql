USE constructora;
/*10.1*/
SELECT obras.ID_obra, obras.Estado
From obras;
/*10.2*/
SELECT *
FROM obras, planos
WHERE Codigo_ID = Sitios_construccion_idSitios_construccion.planos
AND obras.ID_obra =  Planos_Codigo_ID;
/*10.3*/
SELECT obras.*
FROM obras, permisos
WHERE idPermisos =obras_has_permisos.Obras_ID_obra
AND permisos.Estado Like 'A'
AND obras.Estado NOT LIKE 'T';
/*10.5*/
SELECT comprador.*, obras.*
FROM obras, comprador
WHERE obra.comprador_idComprador = comprador.idComprador;
/*10.6*/
SELECT obras.*, avg(cuenta_cobro.Valor) as Prom_Gastos
FROM cuenta_cobro, obras
WHERE cuenta_cobro.Obras_ID_obra = obras.ID_obra
GROUP BY ID_obra;
/*10.7*/
SELECT personal.idPersonal, personal.Nombre, personal.Tipo AS Jefe_de_obra, obras.ID_obra, obras.Estado
From obras, Obras_ID_obra, personal
WHERE obras.ID_obra = Obras_ID_obra.ID_obra
AND personal.idPersonal = Obras_ID_obra.ID_obra;
