CREATE TABLE Articulo (
  idArticulo INTEGER UNSIGNED  NOT NULL  ,
  WorkShops_idWorkShops INTEGER UNSIGNED  NOT NULL  ,
  nombre_articulo VARCHAR(50)  NOT NULL  ,
  tema_articulo VARCHAR(50)  NOT NULL    ,
PRIMARY KEY(idArticulo)  ,
INDEX Articulo_FKIndex1(WorkShops_idWorkShops));



CREATE TABLE Charlas (
  charla_id INTEGER UNSIGNED  NOT NULL  ,
  WorkShops_idWorkShops INTEGER UNSIGNED  NOT NULL  ,
  nombre_charla VARCHAR(50)  NOT NULL  ,
  tema_charla VARCHAR(50)  NOT NULL    ,
PRIMARY KEY(charla_id)  ,
INDEX Charlas_FKIndex1(WorkShops_idWorkShops));



CREATE TABLE Escritores (
  idEscritores INTEGER UNSIGNED  NOT NULL  ,
  Articulo_idArticulo INTEGER UNSIGNED  NOT NULL  ,
  Persona_idPersona INTEGER UNSIGNED  NOT NULL    ,
PRIMARY KEY(idEscritores)  ,
INDEX Escritores_FKIndex1(Articulo_idArticulo)  ,
INDEX Escritores_FKIndex2(Persona_idPersona));



CREATE TABLE Expositor (
  idExpositor INTEGER UNSIGNED  NOT NULL  ,
  Charlas_charla_id INTEGER UNSIGNED  NOT NULL  ,
  Persona_idPersona INTEGER UNSIGNED  NOT NULL    ,
PRIMARY KEY(idExpositor)  ,
INDEX Expositor_FKIndex1(Persona_idPersona)  ,
INDEX Expositor_FKIndex2(Charlas_charla_id));



CREATE TABLE Persona (
  idPersona INTEGER UNSIGNED  NOT NULL  ,
  nombre VARCHAR(50)  NOT NULL  ,
  apellido VARCHAR(50)  NOT NULL  ,
  edad INTEGER UNSIGNED  NOT NULL    ,
PRIMARY KEY(idPersona));



CREATE TABLE WorkShops (
  idWorkShops INTEGER UNSIGNED  NOT NULL  ,
  nombre_workshop VARCHAR(50)  NOT NULL  ,
  tema_workshop VARCHAR(50)  NOT NULL  ,
  descripcion_workshop INTEGER UNSIGNED  NOT NULL    ,
PRIMARY KEY(idWorkShops));




