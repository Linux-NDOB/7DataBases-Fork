CREATE TABLE Clientes (
  idClientes INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  Persona_dni VARCHAR(100)  NOT NULL    ,
PRIMARY KEY(idClientes)  ,
INDEX Clientes_FKIndex1(Persona_dni));



CREATE TABLE Factura (
  idFactura INTEGER UNSIGNED  NOT NULL  ,
  Responsable_idResponsable INTEGER UNSIGNED  NOT NULL  ,
  total_gasto FLOAT  NOT NULL  ,
  nombre_otro VARCHAR(50)  NOT NULL  ,
  nid_otro VARCHAR(50)  NOT NULL    ,
PRIMARY KEY(idFactura)  ,
INDEX Factura_FKIndex1(Responsable_idResponsable));



CREATE TABLE Fecha (
  id_fecha INTEGER UNSIGNED  NOT NULL  ,
  dia INTEGER UNSIGNED  NOT NULL  ,
  mes INTEGER UNSIGNED  NOT NULL  ,
  year_2 INTEGER UNSIGNED  NOT NULL  ,
  semana INTEGER UNSIGNED  NOT NULL  ,
  hora INTEGER UNSIGNED ZEROFILL  NOT NULL    ,
PRIMARY KEY(id_fecha));



CREATE TABLE Gastos (
  idGastos INTEGER UNSIGNED  NOT NULL  ,
  Habitaciones_nro_habitacion INTEGER UNSIGNED  NOT NULL  ,
  concepto VARCHAR(100)  NOT NULL  ,
  valor FLOAT  NOT NULL    ,
PRIMARY KEY(idGastos)  ,
INDEX Gastos_FKIndex1(Habitaciones_nro_habitacion));



CREATE TABLE Habitaciones (
  nro_habitacion INTEGER UNSIGNED  NOT NULL  ,
  Piso_numero_piso INTEGER UNSIGNED  NOT NULL  ,
  tipo_habitacion INTEGER UNSIGNED  NOT NULL  ,
  precio_habitacion INTEGER UNSIGNED  NOT NULL  ,
  temporada INTEGER UNSIGNED  NOT NULL  ,
  estado_habitacion INTEGER UNSIGNED  NOT NULL    ,
PRIMARY KEY(nro_habitacion)  ,
INDEX Habitaciones_FKIndex1(Piso_numero_piso));



CREATE TABLE Persona (
  dni VARCHAR(100)  NOT NULL  ,
  nombre INTEGER UNSIGNED  NOT NULL  ,
  apellido INTEGER UNSIGNED  NOT NULL  ,
  telefono VARCHAR(20)  NOT NULL    ,
PRIMARY KEY(dni));



CREATE TABLE Piso (
  numero_piso INTEGER UNSIGNED  NOT NULL  ,
  cantidad_habitaciones INTEGER UNSIGNED  NOT NULL    ,
PRIMARY KEY(numero_piso));



CREATE TABLE Registro (
  idRegistro INTEGER UNSIGNED  NOT NULL  ,
  Reservas_idReservas INTEGER UNSIGNED  NOT NULL  ,
  estado VARCHAR(50)  NULL    ,
PRIMARY KEY(idRegistro)  ,
INDEX Registro_FKIndex1(Reservas_idReservas));



CREATE TABLE Reservas (
  idReservas INTEGER UNSIGNED  NOT NULL  ,
  Fecha_id_fecha INTEGER UNSIGNED  NOT NULL  ,
  Habitaciones_nro_habitacion INTEGER UNSIGNED  NOT NULL  ,
  Clientes_idClientes INTEGER UNSIGNED  NOT NULL  ,
  validez_horas INTEGER UNSIGNED  NOT NULL    ,
PRIMARY KEY(idReservas)  ,
INDEX Reservas_FKIndex1(Clientes_idClientes)  ,
INDEX Reservas_FKIndex2(Habitaciones_nro_habitacion)  ,
INDEX Reservas_FKIndex3(Fecha_id_fecha));



CREATE TABLE Responsable (
  idResponsable INTEGER UNSIGNED  NOT NULL  ,
  Habitaciones_nro_habitacion INTEGER UNSIGNED  NOT NULL  ,
  Persona_dni VARCHAR(100)  NOT NULL    ,
PRIMARY KEY(idResponsable)  ,
INDEX Responsable_FKIndex1(Persona_dni)  ,
INDEX Responsable_FKIndex2(Habitaciones_nro_habitacion));




