CREATE TABLE Articulo (
  idArticulo INTEGER   NOT NULL ,
  WorkShops_idWorkShops INTEGER   NOT NULL ,
  nombre_articulo VARCHAR(50)   NOT NULL ,
  tema_articulo VARCHAR(50)   NOT NULL   ,
PRIMARY KEY(idArticulo)  );


CREATE INDEX Articulo_FKIndex1 ON Articulo (WorkShops_idWorkShops);



CREATE TABLE Charlas (
  charla_id INTEGER   NOT NULL ,
  WorkShops_idWorkShops INTEGER   NOT NULL ,
  nombre_charla VARCHAR(50)   NOT NULL ,
  tema_charla VARCHAR(50)   NOT NULL   ,
PRIMARY KEY(charla_id)  );


CREATE INDEX Charlas_FKIndex1 ON Charlas (WorkShops_idWorkShops);



CREATE TABLE Escritores (
  idEscritores INTEGER   NOT NULL ,
  Articulo_idArticulo INTEGER   NOT NULL ,
  Persona_idPersona INTEGER   NOT NULL   ,
PRIMARY KEY(idEscritores)    );


CREATE INDEX Escritores_FKIndex1 ON Escritores (Articulo_idArticulo);
CREATE INDEX Escritores_FKIndex2 ON Escritores (Persona_idPersona);



CREATE TABLE Expositor (
  idExpositor INTEGER   NOT NULL ,
  Charlas_charla_id INTEGER   NOT NULL ,
  Persona_idPersona INTEGER   NOT NULL   ,
PRIMARY KEY(idExpositor)    );


CREATE INDEX Expositor_FKIndex1 ON Expositor (Persona_idPersona);
CREATE INDEX Expositor_FKIndex2 ON Expositor (Charlas_charla_id);



CREATE TABLE Persona (
  idPersona INTEGER   NOT NULL ,
  nombre VARCHAR(50)   NOT NULL ,
  apellido VARCHAR(50)   NOT NULL ,
  edad INTEGER   NOT NULL   ,
PRIMARY KEY(idPersona));



CREATE TABLE WorkShops (
  idWorkShops INTEGER   NOT NULL ,
  nombre_workshop VARCHAR(50)   NOT NULL ,
  tema_workshop VARCHAR(50)   NOT NULL ,
  descripcion_workshop VARCHAR(50)   NOT NULL   ,
PRIMARY KEY(idWorkShops));




