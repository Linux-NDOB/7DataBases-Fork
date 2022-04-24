CREATE TABLE Clientes (
  idClientes SERIAL  NOT NULL ,
  Persona_dni VARCHAR(100)   NOT NULL   ,
PRIMARY KEY(idClientes)  );


CREATE INDEX Clientes_FKIndex1 ON Clientes (Persona_dni);



CREATE TABLE Factura (
  idFactura INTEGER   NOT NULL ,
  Responsable_idResponsable INTEGER   NOT NULL ,
  total_gasto FLOAT   NOT NULL ,
  nombre_otro VARCHAR(50)   NOT NULL ,
  nid_otro VARCHAR(50)   NOT NULL   ,
PRIMARY KEY(idFactura)  );


CREATE INDEX Factura_FKIndex1 ON Factura (Responsable_idResponsable);



CREATE TABLE Fecha (
  id_fecha INTEGER   NOT NULL ,
  dia INTEGER   NOT NULL ,
  mes INTEGER   NOT NULL ,
  year_2 INTEGER   NOT NULL ,
  semana INTEGER   NOT NULL ,
  hora VARCHAR(50)   NOT NULL   ,
PRIMARY KEY(id_fecha));



CREATE TABLE Gastos (
  idGastos INTEGER   NOT NULL ,
  Habitaciones_nro_habitacion INTEGER   NOT NULL ,
  concepto VARCHAR(100)   NOT NULL ,
  valor FLOAT   NOT NULL   ,
PRIMARY KEY(idGastos)  );


CREATE INDEX Gastos_FKIndex1 ON Gastos (Habitaciones_nro_habitacion);



CREATE TABLE Habitaciones (
  nro_habitacion INTEGER   NOT NULL ,
  Piso_numero_piso INTEGER   NOT NULL ,
  tipo_habitacion VARCHAR(50)   NOT NULL ,
  precio_habitacion FLOAT   NOT NULL ,
  temporada VARCHAR(50)   NOT NULL ,
  estado_habitacion VARCHAR(50)   NOT NULL   ,
PRIMARY KEY(nro_habitacion)  );


CREATE INDEX Habitaciones_FKIndex1 ON Habitaciones (Piso_numero_piso);



CREATE TABLE Persona (
  dni VARCHAR(100)   NOT NULL ,
  nombre VARCHAR(50)   NOT NULL ,
  apellido VARCHAR(50)   NOT NULL ,
  telefono VARCHAR(20)   NOT NULL   ,
PRIMARY KEY(dni));



CREATE TABLE Piso (
  numero_piso INTEGER   NOT NULL ,
  cantidad_habitaciones INTEGER   NOT NULL   ,
PRIMARY KEY(numero_piso));



CREATE TABLE Registro (
  idRegistro INTEGER   NOT NULL ,
  Reservas_idReservas INTEGER   NOT NULL ,
  estado VARCHAR(50)      ,
PRIMARY KEY(idRegistro)  );


CREATE INDEX Registro_FKIndex1 ON Registro (Reservas_idReservas);



CREATE TABLE Reservas (
  idReservas INTEGER   NOT NULL ,
  Fecha_id_fecha INTEGER   NOT NULL ,
  Habitaciones_nro_habitacion INTEGER   NOT NULL ,
  Clientes_idClientes INTEGER   NOT NULL ,
  validez_horas INTEGER   NOT NULL   ,
PRIMARY KEY(idReservas)      );


CREATE INDEX Reservas_FKIndex1 ON Reservas (Clientes_idClientes);
CREATE INDEX Reservas_FKIndex2 ON Reservas (Habitaciones_nro_habitacion);
CREATE INDEX Reservas_FKIndex3 ON Reservas (Fecha_id_fecha);



CREATE TABLE Responsable (
  idResponsable INTEGER   NOT NULL ,
  Habitaciones_nro_habitacion INTEGER   NOT NULL ,
  Persona_dni VARCHAR(100)   NOT NULL   ,
PRIMARY KEY(idResponsable)    );


CREATE INDEX Responsable_FKIndex1 ON Responsable (Persona_dni);
CREATE INDEX Responsable_FKIndex2 ON Responsable (Habitaciones_nro_habitacion);




