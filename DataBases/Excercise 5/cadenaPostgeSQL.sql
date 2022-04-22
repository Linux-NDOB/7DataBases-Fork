CREATE TABLE Actor (
  id_actor SERIAL  NOT NULL ,
  Peliculas_idPeliculas INTEGER   NOT NULL ,
  Personas_idPersona INTEGER   NOT NULL   ,
PRIMARY KEY(id_actor)    );


CREATE INDEX Actor_FKIndex1 ON Actor (Personas_idPersona);
CREATE INDEX Actor_FKIndex2 ON Actor (Peliculas_idPeliculas);



CREATE TABLE Actor_principal (
  Actor_id_actor INTEGER   NOT NULL ,
  Peliculas_idPeliculas INTEGER   NOT NULL   ,
PRIMARY KEY(Actor_id_actor)    );


CREATE INDEX Actor_principal_FKIndex1 ON Actor_principal (Peliculas_idPeliculas);
CREATE INDEX Actor_principal_FKIndex2 ON Actor_principal (Actor_id_actor);



CREATE TABLE Arriendos (
  id_arriendo INTEGER   NOT NULL ,
  Peliculas_idPeliculas INTEGER   NOT NULL ,
  Locales_idLocal INTEGER   NOT NULL ,
  Usuarios_n_unico INTEGER   NOT NULL ,
  Trabajadores_idTrabajadores INTEGER   NOT NULL   ,
PRIMARY KEY(id_arriendo)        );


CREATE INDEX Table_17_FKIndex1 ON Arriendos (Trabajadores_idTrabajadores);
CREATE INDEX Table_17_FKIndex2 ON Arriendos (Usuarios_n_unico);
CREATE INDEX Table_17_FKIndex3 ON Arriendos (Locales_idLocal);
CREATE INDEX Table_17_FKIndex4 ON Arriendos (Peliculas_idPeliculas);



CREATE TABLE Categorias (
  nombre_categoria VARCHAR(50)   NOT NULL ,
  Peliculas_idPeliculas INTEGER   NOT NULL   ,
PRIMARY KEY(nombre_categoria)  );


CREATE INDEX Categoria_principal_FKIndex1 ON Categorias (Peliculas_idPeliculas);



CREATE TABLE Categoria_principal (
  Categorias_nombre_categoria VARCHAR(50)   NOT NULL ,
  Peliculas_idPeliculas INTEGER   NOT NULL   ,
PRIMARY KEY(Categorias_nombre_categoria)    );


CREATE INDEX Categoria_principal_FKIndex1 ON Categoria_principal (Categorias_nombre_categoria);
CREATE INDEX Categoria_principal_FKIndex2 ON Categoria_principal (Peliculas_idPeliculas);



CREATE TABLE Inventario (
  idInventario INTEGER   NOT NULL ,
  Peliculas_idPeliculas INTEGER   NOT NULL ,
  Locales_idLocal INTEGER   NOT NULL ,
  cantidad_pelicula INTEGER   NOT NULL ,
  precio_arriendo FLOAT   NOT NULL   ,
PRIMARY KEY(idInventario)    );


CREATE INDEX Inventario_FKIndex1 ON Inventario (Peliculas_idPeliculas);
CREATE INDEX Inventario_FKIndex2 ON Inventario (Locales_idLocal);



CREATE TABLE Locales (
  idLocal INTEGER   NOT NULL ,
  Paises_idPais_2 INTEGER   NOT NULL ,
  nombre_local VARCHAR(50)   NOT NULL   ,
PRIMARY KEY(idLocal)  );


CREATE INDEX Locales_FKIndex1 ON Locales (Paises_idPais_2);



CREATE TABLE Paises (
  idPais_2 INTEGER   NOT NULL ,
  idPais VARCHAR(50)   NOT NULL   ,
PRIMARY KEY(idPais_2));



CREATE TABLE Peliculas (
  idPeliculas INTEGER   NOT NULL ,
  Locales_idLocal INTEGER   NOT NULL ,
  nombre_pelicula VARCHAR(50)   NOT NULL   ,
PRIMARY KEY(idPeliculas)  );


CREATE INDEX Peliculas_FKIndex1 ON Peliculas (Locales_idLocal);



CREATE TABLE Personas (
  idPersona INTEGER   NOT NULL ,
  nombre VARCHAR(50)   NOT NULL ,
  apellido VARCHAR(50)   NOT NULL ,
  edad VARCHAR(50)   NOT NULL   ,
PRIMARY KEY(idPersona));



CREATE TABLE Trabajadores (
  idTrabajadores SERIAL  NOT NULL ,
  Personas_idPersona INTEGER   NOT NULL   ,
PRIMARY KEY(idTrabajadores)  );


CREATE INDEX Trabajadores_FKIndex1 ON Trabajadores (Personas_idPersona);



CREATE TABLE Usuarios (
  n_unico INTEGER   NOT NULL ,
  Personas_idPersona INTEGER   NOT NULL   ,
PRIMARY KEY(n_unico)  );


CREATE INDEX Usuarios_FKIndex1 ON Usuarios (Personas_idPersona);




