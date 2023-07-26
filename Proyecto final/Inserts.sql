USE constructora;

START TRANSACTION;
INSERT INTO `constructora`.`Sitios_construccion`(`idSitios_construccion`, `Tipo`, `Ubicación`)VALUES(1, 'Solar', 'Pereira');
INSERT INTO `constructora`.`Sitios_construccion`(`idSitios_construccion`, `Tipo`, `Ubicación`)VALUES(2, 'Terreno', 'Bogota');
INSERT INTO `constructora`.`Sitios_construccion`(`idSitios_construccion`, `Tipo`, `Ubicación`)VALUES(3, 'Solar', 'Cali');
INSERT INTO `constructora`.`Sitios_construccion`(`idSitios_construccion`, `Tipo`, `Ubicación`)VALUES(4, 'Solar', 'Buga');
INSERT INTO `constructora`.`Sitios_construccion`(`idSitios_construccion`, `Tipo`, `Ubicación`)VALUES(5, 'Terreno', 'Bogota');
INSERT INTO `constructora`.`Sitios_construccion`(`idSitios_construccion`, `Tipo`, `Ubicación`)VALUES(6, 'Terreno', 'Manzales');
INSERT INTO `constructora`.`Sitios_construccion`(`idSitios_construccion`, `Tipo`, `Ubicación`)VALUES(7, 'Solar', 'Pereira');
INSERT INTO `constructora`.`Sitios_construccion`(`idSitios_construccion`, `Tipo`, `Ubicación`)VALUES(8, 'Terreno', 'Pereira');
INSERT INTO `constructora`.`Sitios_construccion`(`idSitios_construccion`, `Tipo`, `Ubicación`)VALUES(9, 'Terreno', 'Bogota');
INSERT INTO `constructora`.`Sitios_construccion`(`idSitios_construccion`, `Tipo`, `Ubicación`)VALUES(10, 'Solar', 'Cali');

INSERT INTO `constructora`.`comprador`(`idComprador`, `Nombre`, `Cantidad_pagar`)VALUES(1, 'Maria', 45000);
INSERT INTO `constructora`.`comprador`(`idComprador`, `Nombre`, `Cantidad_pagar`)VALUES(2, 'Carlos', 250000);
INSERT INTO `constructora`.`comprador`(`idComprador`, `Nombre`, `Cantidad_pagar`)VALUES(3, 'Tomas', 610000);
INSERT INTO `constructora`.`comprador`(`idComprador`, `Nombre`, `Cantidad_pagar`)VALUES(4, 'Hanna', 425400);
INSERT INTO `constructora`.`comprador`(`idComprador`, `Nombre`, `Cantidad_pagar`)VALUES(5, 'Fernando', 5123600);
INSERT INTO `constructora`.`comprador`(`idComprador`, `Nombre`, `Cantidad_pagar`)VALUES(6, 'Luisa', 734400);
INSERT INTO `constructora`.`comprador`(`idComprador`, `Nombre`, `Cantidad_pagar`)VALUES(7, 'Stacy', 37410);
INSERT INTO `constructora`.`comprador`(`idComprador`, `Nombre`, `Cantidad_pagar`)VALUES(8, 'Roman', 443721);
INSERT INTO `constructora`.`comprador`(`idComprador`, `Nombre`, `Cantidad_pagar`)VALUES(9, 'Sergio', 55890);
INSERT INTO `constructora`.`comprador`(`idComprador`, `Nombre`, `Cantidad_pagar`)VALUES(10, 'Sofia', 6710);

INSERT INTO `constructora`.`permisos`(`idPermisos`, `Fecha`, `Estado`)VALUES(1, NOW(), 'R');
INSERT INTO `constructora`.`permisos`(`idPermisos`, `Fecha`, `Estado`)VALUES(2, NOW(), 'R');
INSERT INTO `constructora`.`permisos`(`idPermisos`, `Fecha`, `Estado`)VALUES(3, NOW(), 'EP');
INSERT INTO `constructora`.`permisos`(`idPermisos`, `Fecha`, `Estado`)VALUES(4, NOW(), 'A');
INSERT INTO `constructora`.`permisos`(`idPermisos`, `Fecha`, `Estado`)VALUES(5, NOW(), 'R');
INSERT INTO `constructora`.`permisos`(`idPermisos`, `Fecha`, `Estado`)VALUES(6, NOW(), 'EP');
INSERT INTO `constructora`.`permisos`(`idPermisos`, `Fecha`, `Estado`)VALUES(7, NOW(), 'A');
INSERT INTO `constructora`.`permisos`(`idPermisos`, `Fecha`, `Estado`)VALUES(8, NOW(), 'A');
INSERT INTO `constructora`.`permisos`(`idPermisos`, `Fecha`, `Estado`)VALUES(9, NOW(), 'A');
INSERT INTO `constructora`.`permisos`(`idPermisos`, `Fecha`, `Estado`)VALUES(10, NOW(), 'R');

INSERT INTO `constructora`.`Planos`(`Codigo_ID`, `Tipo`, `Escala`, `Fecha_realizacion`, `Sitios_construccion_idSitios_construccion`)VALUES(1, 'Ejecucion', 4, NOW(), 1);
INSERT INTO `constructora`.`Planos`(`Codigo_ID`, `Tipo`, `Escala`, `Fecha_realizacion`, `Sitios_construccion_idSitios_construccion`)VALUES(2, 'Desagüe', 2, NOW(), 2);
INSERT INTO `constructora`.`Planos`(`Codigo_ID`, `Tipo`, `Escala`, `Fecha_realizacion`, `Sitios_construccion_idSitios_construccion`)VALUES(3, 'Desagüe', 6, NOW(), 3);
INSERT INTO `constructora`.`Planos`(`Codigo_ID`, `Tipo`, `Escala`, `Fecha_realizacion`, `Sitios_construccion_idSitios_construccion`)VALUES(4, 'Ejecución', 4, NOW(), 4);
INSERT INTO `constructora`.`Planos`(`Codigo_ID`, `Tipo`, `Escala`, `Fecha_realizacion`, `Sitios_construccion_idSitios_construccion`)VALUES(5, 'Desagüe', 5, NOW(), 5);
INSERT INTO `constructora`.`Planos`(`Codigo_ID`, `Tipo`, `Escala`, `Fecha_realizacion`, `Sitios_construccion_idSitios_construccion`)VALUES(6, 'Ejecucion', 7, NOW(), 6);
INSERT INTO `constructora`.`Planos`(`Codigo_ID`, `Tipo`, `Escala`, `Fecha_realizacion`, `Sitios_construccion_idSitios_construccion`)VALUES(7, 'Ejecucion', 3, NOW(), 7);
INSERT INTO `constructora`.`Planos`(`Codigo_ID`, `Tipo`, `Escala`, `Fecha_realizacion`, `Sitios_construccion_idSitios_construccion`)VALUES(8, 'Desagüe', 4, NOW(), 8);
INSERT INTO `constructora`.`Planos`(`Codigo_ID`, `Tipo`, `Escala`, `Fecha_realizacion`, `Sitios_construccion_idSitios_construccion`)VALUES(9, 'Ejecucion', 5, NOW(), 9);
INSERT INTO `constructora`.`Planos`(`Codigo_ID`, `Tipo`, `Escala`, `Fecha_realizacion`, `Sitios_construccion_idSitios_construccion`)VALUES(10, 'Desagüe', 6, NOW(), 10);

INSERT INTO `constructora`.`obras`(`ID_obra`, `Estado`, `Planos_Codigo_ID`, `Comprador_idComprador`)VALUES(1, 'T', 1, 1);
INSERT INTO `constructora`.`obras`(`ID_obra`, `Estado`, `Planos_Codigo_ID`, `Comprador_idComprador`)VALUES(2, 'EP', 2, 2);
INSERT INTO `constructora`.`obras`(`ID_obra`, `Estado`, `Planos_Codigo_ID`, `Comprador_idComprador`)VALUES(3, 'T', 3, 3);
INSERT INTO `constructora`.`obras`(`ID_obra`, `Estado`, `Planos_Codigo_ID`, `Comprador_idComprador`)VALUES(4, 'EP', 4, 4);
INSERT INTO `constructora`.`obras`(`ID_obra`, `Estado`, `Planos_Codigo_ID`, `Comprador_idComprador`)VALUES(5, 'EP', 5, 5);
INSERT INTO `constructora`.`obras`(`ID_obra`, `Estado`, `Planos_Codigo_ID`, `Comprador_idComprador`)VALUES(6, 'T', 6, 6);
INSERT INTO `constructora`.`obras`(`ID_obra`, `Estado`, `Planos_Codigo_ID`, `Comprador_idComprador`)VALUES(7, 'T', 7, 7);
INSERT INTO `constructora`.`obras`(`ID_obra`, `Estado`, `Planos_Codigo_ID`, `Comprador_idComprador`)VALUES(8, 'EP', 8, 8);
INSERT INTO `constructora`.`obras`(`ID_obra`, `Estado`, `Planos_Codigo_ID`, `Comprador_idComprador`)VALUES(9, 'EP', 9, 9);
INSERT INTO `constructora`.`obras`(`ID_obra`, `Estado`, `Planos_Codigo_ID`, `Comprador_idComprador`)VALUES(10, 'T', 10, 10);

INSERT INTO `constructora`.`obras_has_permisos`(`obras_ID_obra`, `Permisos_idPermisos`)VALUES(1, 1);
INSERT INTO `constructora`.`obras_has_permisos`(`obras_ID_obra`, `Permisos_idPermisos`)VALUES(2, 2);
INSERT INTO `constructora`.`obras_has_permisos`(`obras_ID_obra`, `Permisos_idPermisos`)VALUES(3, 3);
INSERT INTO `constructora`.`obras_has_permisos`(`obras_ID_obra`, `Permisos_idPermisos`)VALUES(4, 4);
INSERT INTO `constructora`.`obras_has_permisos`(`obras_ID_obra`, `Permisos_idPermisos`)VALUES(5, 5);
INSERT INTO `constructora`.`obras_has_permisos`(`obras_ID_obra`, `Permisos_idPermisos`)VALUES(6, 6);
INSERT INTO `constructora`.`obras_has_permisos`(`obras_ID_obra`, `Permisos_idPermisos`)VALUES(7, 7);
INSERT INTO `constructora`.`obras_has_permisos`(`obras_ID_obra`, `Permisos_idPermisos`)VALUES(8, 8);
INSERT INTO `constructora`.`obras_has_permisos`(`obras_ID_obra`, `Permisos_idPermisos`)VALUES(9, 9);
INSERT INTO `constructora`.`obras_has_permisos`(`obras_ID_obra`, `Permisos_idPermisos`)VALUES(10, 10);

INSERT INTO `constructora`.`Personal`(`idPersonal`, `Nombre`, `Dias_trabajo`, `Lugar_trabajo`, `Tipo`, `Obras_ID_obra`)VALUES(1, 'Antonio', 4, 'Hotel el prado', 'Obrero', 1);
INSERT INTO `constructora`.`Personal`(`idPersonal`, `Nombre`, `Dias_trabajo`, `Lugar_trabajo`, `Tipo`, `Obras_ID_obra`)VALUES(2, 'Marco', 2, 'Centro comercial', 'Obrero', 2);
INSERT INTO `constructora`.`Personal`(`idPersonal`, `Nombre`, `Dias_trabajo`, `Lugar_trabajo`, `Tipo`, `Obras_ID_obra`)VALUES(3, 'Jose', 6, 'Conjunto residencial', 'Jefe de obra', 3);
INSERT INTO `constructora`.`Personal`(`idPersonal`, `Nombre`, `Dias_trabajo`, `Lugar_trabajo`, `Tipo`, `Obras_ID_obra`)VALUES(4, 'Edward', 4, 'Centro comercial', 'Obrero', 4);
INSERT INTO `constructora`.`Personal`(`idPersonal`, `Nombre`, `Dias_trabajo`, `Lugar_trabajo`, `Tipo`, `Obras_ID_obra`)VALUES(5, 'Pedro', 5, 'Plaza la rosa', 'Obrero', 5);
INSERT INTO `constructora`.`Personal`(`idPersonal`, `Nombre`, `Dias_trabajo`, `Lugar_trabajo`, `Tipo`, `Obras_ID_obra`)VALUES(6, 'Manuel', 7, 'Hotel el prado', 'obrero', 6);
INSERT INTO `constructora`.`Personal`(`idPersonal`, `Nombre`, `Dias_trabajo`, `Lugar_trabajo`, `Tipo`, `Obras_ID_obra`)VALUES(7, 'Pablo', 3, 'Centro comercial', 'Jefe de obra', 7);
INSERT INTO `constructora`.`Personal`(`idPersonal`, `Nombre`, `Dias_trabajo`, `Lugar_trabajo`, `Tipo`, `Obras_ID_obra`)VALUES(8, 'Cristian', 4, 'Conjunto Residencial', 'Obrero', 8);
INSERT INTO `constructora`.`Personal`(`idPersonal`, `Nombre`, `Dias_trabajo`, `Lugar_trabajo`, `Tipo`, `Obras_ID_obra`)VALUES(9, 'Luis', 5, 'Carcel distrital', 'Obrero', 9);
INSERT INTO `constructora`.`Personal`(`idPersonal`, `Nombre`, `Dias_trabajo`, `Lugar_trabajo`, `Tipo`, `Obras_ID_obra`)VALUES(10, 'Lucas', 6, 'Centro comercial', 'Jefe de obra', 10);

INSERT INTO `constructora`.`cuenta_cobro`(`idCuenta_cobro`, `Estado`, `Valor`, `Obras_ID_obra`)VALUES(1, 'A', 50000, 1);
INSERT INTO `constructora`.`cuenta_cobro`(`idCuenta_cobro`, `Estado`, `Valor`, `Obras_ID_obra`)VALUES(2, 'EP', 300000, 2);
INSERT INTO `constructora`.`cuenta_cobro`(`idCuenta_cobro`, `Estado`, `Valor`, `Obras_ID_obra`)VALUES(3, 'R', 660000, 3);
INSERT INTO `constructora`.`cuenta_cobro`(`idCuenta_cobro`, `Estado`, `Valor`, `Obras_ID_obra`)VALUES(4, 'EP', 430400, 4);
INSERT INTO `constructora`.`cuenta_cobro`(`idCuenta_cobro`, `Estado`, `Valor`, `Obras_ID_obra`)VALUES(5, 'EP', 5128600, 5);
INSERT INTO `constructora`.`cuenta_cobro`(`idCuenta_cobro`, `Estado`, `Valor`, `Obras_ID_obra`)VALUES(6, 'A', 739400, 6);
INSERT INTO `constructora`.`cuenta_cobro`(`idCuenta_cobro`, `Estado`, `Valor`, `Obras_ID_obra`)VALUES(7, 'A', 42410, 7);
INSERT INTO `constructora`.`cuenta_cobro`(`idCuenta_cobro`, `Estado`, `Valor`, `Obras_ID_obra`)VALUES(8, 'R', 448721,8);
INSERT INTO `constructora`.`cuenta_cobro`(`idCuenta_cobro`, `Estado`, `Valor`, `Obras_ID_obra`)VALUES(9, 'EP', 60890, 9);
INSERT INTO `constructora`.`cuenta_cobro`(`idCuenta_cobro`, `Estado`, `Valor`, `Obras_ID_obra`)VALUES(10, 'A', 11710, 10);

ROLLBACK;
COMMIT;






