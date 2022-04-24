CREATE TABLE Actor (
  id_actor INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  Peliculas_idPeliculas INTEGER UNSIGNED  NOT NULL  ,
  Personas_idPersona INTEGER UNSIGNED  NOT NULL    ,
PRIMARY KEY(id_actor)  ,
INDEX Actor_FKIndex1(Personas_idPersona)  ,
INDEX Actor_FKIndex2(Peliculas_idPeliculas));



CREATE TABLE Actor_principal (
  Actor_id_actor INTEGER UNSIGNED  NOT NULL  ,
  Peliculas_idPeliculas INTEGER UNSIGNED  NOT NULL    ,
PRIMARY KEY(Actor_id_actor)  ,
INDEX Actor_principal_FKIndex1(Peliculas_idPeliculas)  ,
INDEX Actor_principal_FKIndex2(Actor_id_actor));



CREATE TABLE Arriendos (
  id_arriendo INTEGER UNSIGNED  NOT NULL  ,
  Peliculas_idPeliculas INTEGER UNSIGNED  NOT NULL  ,
  Locales_idLocal INTEGER  NOT NULL  ,
  Usuarios_n_unico INTEGER UNSIGNED  NOT NULL  ,
  Trabajadores_idTrabajadores INTEGER UNSIGNED  NOT NULL    ,
PRIMARY KEY(id_arriendo)  ,
INDEX Table_17_FKIndex1(Trabajadores_idTrabajadores)  ,
INDEX Table_17_FKIndex2(Usuarios_n_unico)  ,
INDEX Table_17_FKIndex3(Locales_idLocal)  ,
INDEX Table_17_FKIndex4(Peliculas_idPeliculas));



CREATE TABLE Categorias (
  nombre_categoria VARCHAR(50)  NOT NULL  ,
  Peliculas_idPeliculas INTEGER UNSIGNED  NOT NULL    ,
PRIMARY KEY(nombre_categoria)  ,
INDEX Categoria_principal_FKIndex1(Peliculas_idPeliculas));



CREATE TABLE Categoria_principal (
  Categorias_nombre_categoria VARCHAR(50)  NOT NULL  ,
  Peliculas_idPeliculas INTEGER UNSIGNED  NOT NULL    ,
PRIMARY KEY(Categorias_nombre_categoria)  ,
INDEX Categoria_principal_FKIndex1(Categorias_nombre_categoria)  ,
INDEX Categoria_principal_FKIndex2(Peliculas_idPeliculas));



CREATE TABLE Inventario (
  idInventario INTEGER UNSIGNED  NOT NULL  ,
  Peliculas_idPeliculas INTEGER UNSIGNED  NOT NULL  ,
  Locales_idLocal INTEGER  NOT NULL  ,
  cantidad_pelicula INTEGER UNSIGNED  NOT NULL  ,
  precio_arriendo FLOAT  NOT NULL    ,
PRIMARY KEY(idInventario)  ,
INDEX Inventario_FKIndex1(Peliculas_idPeliculas)  ,
INDEX Inventario_FKIndex2(Locales_idLocal));



CREATE TABLE Locales (
  idLocal INTEGER  NOT NULL  ,
  Paises_idPais_2 INTEGER UNSIGNED  NOT NULL  ,
  nombre_local VARCHAR(50)  NOT NULL    ,
PRIMARY KEY(idLocal)  ,
INDEX Locales_FKIndex1(Paises_idPais_2));



CREATE TABLE Paises (
  idPais_2 INTEGER UNSIGNED  NOT NULL  ,
  idPais VARCHAR(50)  NOT NULL    ,
PRIMARY KEY(idPais_2));



CREATE TABLE Peliculas (
  idPeliculas INTEGER UNSIGNED  NOT NULL  ,
  Locales_idLocal INTEGER  NOT NULL  ,
  nombre_pelicula VARCHAR(50)  NOT NULL    ,
PRIMARY KEY(idPeliculas)  ,
INDEX Peliculas_FKIndex1(Locales_idLocal));



CREATE TABLE Personas (
  idPersona INTEGER UNSIGNED  NOT NULL  ,
  nombre VARCHAR(50)  NOT NULL  ,
  apellido VARCHAR(50)  NOT NULL  ,
  edad VARCHAR(50)  NOT NULL    ,
PRIMARY KEY(idPersona));



CREATE TABLE Trabajadores (
  idTrabajadores INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  Personas_idPersona INTEGER UNSIGNED  NOT NULL    ,
PRIMARY KEY(idTrabajadores)  ,
INDEX Trabajadores_FKIndex1(Personas_idPersona));



CREATE TABLE Usuarios (
  n_unico INTEGER UNSIGNED  NOT NULL  ,
  Personas_idPersona INTEGER UNSIGNED  NOT NULL    ,
PRIMARY KEY(n_unico)  ,
INDEX Usuarios_FKIndex1(Personas_idPersona));




