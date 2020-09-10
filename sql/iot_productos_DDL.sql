-- /////////////////////////////////////////////////////////////////////////////////////////////////////
-- //////PRODUCTOS DE INTERNET DE LAS COSAS, DOMOTICA, INDUSTRIAL,ETC//////////////////////////////////
-- ////////////////////////////////////////////////////////////////////////////////////////////////////

drop database if exists iot_productos;

create database iot_productos;

use iot_productos;

drop table  if exists especificacion_tecnica;
drop table  if exists producto; 
drop table  if exists vendedor;
drop table  if exists comprador;
drop table  if exists venta;
   


create table especificacion_tecnica(
	id 				int 		auto_increment primary key,
    tamaño			varchar(15)		not null,-- pequeño, mediano, grande
    longitud		float(15)		not null,-- 69.0 mm
    ancho			float(15)		not null,-- 56.7 mm
    peso			float(15)		not null,-- 0.8 kilos
    material		varchar(25)		not null,-- acero, plastico, etc
	funcion			varchar(35)		not null, -- Sensado, control,etc
    voltajeDeFuncionamiento			float(8)		not null, -- 5 voltios
    voltajeMinEntrada				float(8)		not null,-- 7  voltios (recomendado)
    voltajeMaxEntrada				float(8)		not null,-- 12  voltios (recomendado)
    tiempoDeVida	int(25)		not null-- 2 años


);

create table producto(
	id 				int 		auto_increment primary key,
    idEspecificacionTecnica int		not null,
    constraint 		fk_idEspecificacionTecnica		foreign key(idEspecificacionTecnica) references especificacion_tecnica(id),
	area			varchar(35)		not null, -- Industrial, domestico, etc
    tipo			varchar(35)		not null,-- Sensor, tablero, medidor, actuador, modulo, etc
	nombre			varchar(25)		not null,
    modelo			varchar(25)		not null,
	precio			float(5)		not null,-- dolares
	estado			varchar(35)		not null-- Disponible, vendido, agotado, etc

);



create table vendedor(
id				int 		auto_increment primary key,
nombre			varchar(25)	 not null,
apellido		varchar(25)		not null,
edad			int(25)		not null,
nroDocumento	int(25)		not null,
telefono		int(25)		not null,
email			varchar(35)		not null

);

create table comprador(
id				int 		auto_increment primary key,
nombre			varchar(25)	 not null,
apellido		varchar(25)		not null,
email			varchar(25)		not null

);

create table venta(

	id 				int 		auto_increment primary key,
	idProducto		int 		not null,
    idVendedor		int			not null,
    idComprador		int			not null,
	constraint 		fk_idProductoVendido 	foreign key(idProducto) references producto(id),
	constraint 		fk_idVendedor 	foreign key(idVendedor) references vendedor(id),
    constraint 		fk_idComprador 	foreign key(idComprador) references comprador(id),
	cantidad		int,
    fechaDeVenta		DATETIME	not null,
    detalle			varchar(75)	

);
