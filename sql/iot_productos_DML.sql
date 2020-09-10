-- /////////////////////////////////////////////////////////////////////////////////////////////////////
-- //////PRODUCTOS DE INTERNET DE LAS COSAS, DOMOTICA, INDUSTRIAL,ETC//////////////////////////////////
-- ////////////////////////////////////////////////////////////////////////////////////////////////////

use iot_productos;


insert into especificacion_tecnica(id, tamaño, longitud, 
ancho, peso, material, funcion, voltajeDeFuncionamiento, voltajeMinEntrada,
 voltajeMaxEntrada, tiempoDeVida)values
 
 (1 , 'Pequeño' , 120.0 , 100.0 , 0.880, 'Plastico PLA', 'Sensado' , 5.0, 7.0, 12.0 , 2),
 (2 , 'Pequeño' , 100.0 , 85.0 , 0.668, 'Aluminio', 'Sensado' , 5.0, 7.0, 12.0 , 6),
 (3 , 'Mediano' , 200.0 , 165.0 , 1.200, 'Aluminio', 'Sensado' , 12.0, 12.0, 24.0 , 28),
 (4 ,  'Mediano' , 140.0 , 100.0 , 0.700, 'Fibra de Carbono', 'Sensado' , 12.0, 12.0, 24.0 , 50),
 (5 ,  'Grande' , 1400.0 , 900.0 , 2.400, 'Plastico PLA', 'Control' , 12.0, 12.0, 24.0 , 50), -- Posee un nucleo de procesamiento(ej)
 (6 ,  'Grande' , 1200.0 , 700.0 , 1.800, 'Plastico Reforzado', 'Control' , 12.0, 12.0, 24.0 , 50);
 
 
 
insert into producto(id, idEspecificacionTecnica, area,tipo,nombre,modelo,precio,estado) values
(1, 1, 'Domotica','Alarma','SecurityHouse','mtp01',20.0,'Disponible'),
(2, 2, 'Domotica','Alarma','SecurityHouse','mtp02',22.0,'Disponible'),
(3, 3, 'Industrial','Alarma','SecurityIndustrial','ssp01',30.0,'Disponible'),
(4, 4, 'Industrial','Alarma','SecurityIndustrial','ssp02',32.0,'No disponible'),
(5, 5, 'Telecomunicaciones','Rack','IntelligenceRack','rzp01',30.0,'Disponible'),
(6, 6, 'Telecomunicaciones','Rack','IntelligenceRack','rzp02',34.0,'No Disponible');


insert into vendedor(id, nombre, apellido, edad, nroDocumento, telefono, email)values
(1, 'Javier', 'Perez', 26,39265145,1548964796, 'javierPerez@hotmail.com'),
(2, 'Martin', 'Caceres', 36,65412478,1558632589, 'elmatin23@hotmail.com'),
(3, 'Gimena', 'Gonzalez', 21,56987145,1531231231, 'lagime98@hotmail.com'),
(4, 'Lucia', 'Pereira', 36,69369784,1585962145, 'luciP45@hotmail.com');

insert into comprador(id, nombre, apellido, email)values
(1, 'Alvaro', 'Lafrench', 'alvarito@gmail.com'),
(2, 'Gustavo', 'Sanchez', 'gusta98@gmail.com'),
(3, 'Ramiro', 'Caceres', 'rami78@gmail.com'),
(4, 'Lorena', 'Martinez', 'lore90@gmail.com');

insert into venta(id, idProducto, idVendedor, idComprador, cantidad, fechaDeVenta, detalle)values
(1, 1, 1, 1, 1, now(), 'Se vendio una alarma security house modelo mtp01'),
(2, 2, 1, 2, 2, now(), 'Se vendieron dos alarmas security house modelo mtp02'),
(3, 3, 2, 2, 4, now(), 'Se vendieron cuatro alarmas security industrial modelo ssp01'),
(4, 6, 4, 4, 1, now(), 'Se vendio un rack de telecomunicaciones modelo rzp02');

