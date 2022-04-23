CREATE TABLE Agendar_cirugia (
  idAgenda INTEGER UNSIGNED  NOT NULL  ,
  Cirugias_idCirugias INTEGER UNSIGNED  NOT NULL  ,
  Arsenalero_idArsenalero INTEGER UNSIGNED  NOT NULL  ,
  Anestesista_idAnestesista INTEGER UNSIGNED  NOT NULL  ,
  Cirujano_idCirujano INTEGER UNSIGNED  NOT NULL  ,
  Horarios_Pabellones_numero_pabellon INTEGER UNSIGNED  NOT NULL    ,
PRIMARY KEY(idAgenda)  ,
INDEX Cirugia_agendada_FKIndex1(Cirugias_idCirugias)  ,
INDEX Cirugia_agendada_FKIndex3(Horarios_Pabellones_numero_pabellon)  ,
INDEX Agendar_cirugia_FKIndex4(Cirujano_idCirujano)  ,
INDEX Agendar_cirugia_FKIndex5(Anestesista_idAnestesista)  ,
INDEX Agendar_cirugia_FKIndex6(Arsenalero_idArsenalero));



CREATE TABLE Agendar_cirugia_has_Realizadas (
  Realizadas_idRealizadas INTEGER UNSIGNED  NOT NULL  ,
  Agendar_cirugia_idAgenda INTEGER UNSIGNED  NOT NULL    ,
PRIMARY KEY(Realizadas_idRealizadas, Agendar_cirugia_idAgenda)  ,
INDEX Agendar_cirugia_has_Realizadas_FKIndex1(Realizadas_idRealizadas)  ,
INDEX Agendar_cirugia_has_Realizadas_FKIndex2(Agendar_cirugia_idAgenda));



CREATE TABLE Anestesista (
  idAnestesista INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  Medicos_id_profesional INTEGER UNSIGNED  NOT NULL    ,
PRIMARY KEY(idAnestesista)  ,
INDEX Anestesista_FKIndex1(Medicos_id_profesional));



CREATE TABLE Arsenalero (
  idArsenalero INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  Medicos_id_profesional INTEGER UNSIGNED  NOT NULL    ,
PRIMARY KEY(idArsenalero)  ,
INDEX Arsenalero_FKIndex1(Medicos_id_profesional));



CREATE TABLE Cirugias (
  idCirugias INTEGER UNSIGNED  NOT NULL  ,
  Modulo_idModulo INTEGER UNSIGNED  NOT NULL  ,
  Equipo_medico_idEquipo_medico INTEGER UNSIGNED  NOT NULL  ,
  Insumos_idInsumos INTEGER UNSIGNED  NOT NULL  ,
  nombre_cirugia VARCHAR(50)  NOT NULL  ,
  descripcion_cirugia VARCHAR(100)  NOT NULL  ,
  finalidad_cirugia VARCHAR(100)  NOT NULL  ,
  duracion_minutos INTEGER UNSIGNED  NOT NULL    ,
PRIMARY KEY(idCirugias)  ,
INDEX Cirugias_FKIndex1(Modulo_idModulo)  ,
INDEX Cirugias_FKIndex2(Insumos_idInsumos)  ,
INDEX Cirugias_FKIndex3(Equipo_medico_idEquipo_medico));



CREATE TABLE Cirujano (
  idCirujano INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  Medicos_id_profesional INTEGER UNSIGNED  NOT NULL    ,
PRIMARY KEY(idCirujano)  ,
INDEX Cirujano_FKIndex1(Medicos_id_profesional));



CREATE TABLE En_pabellon (
  idEn_pabellon INTEGER UNSIGNED  NOT NULL  ,
  Agendar_cirugia_idAgenda INTEGER UNSIGNED  NOT NULL    ,
PRIMARY KEY(idEn_pabellon)  ,
INDEX En_pabellon_FKIndex1(Agendar_cirugia_idAgenda));



CREATE TABLE Equipo_medico (
  idEquipo_medico INTEGER UNSIGNED  NOT NULL  ,
  Modulo_idModulo INTEGER UNSIGNED  NOT NULL  ,
  nombre_equipo VARCHAR(50)  NOT NULL  ,
  funcion_equipo VARCHAR(50)  NOT NULL  ,
  tipo_equipo VARCHAR(50)  NOT NULL  ,
  descripcion_equipo VARCHAR(100)  NOT NULL    ,
PRIMARY KEY(idEquipo_medico)  ,
INDEX Equipo_medico_FKIndex1(Modulo_idModulo));



CREATE TABLE Historial_cirugias (
  idHistorial_cirugias INTEGER UNSIGNED  NOT NULL  ,
  Realizadas_idRealizadas INTEGER UNSIGNED  NOT NULL  ,
  Pacientes_idPaciente INTEGER UNSIGNED  NOT NULL    ,
PRIMARY KEY(idHistorial_cirugias)  ,
INDEX Historial_cirugias_FKIndex1(Pacientes_idPaciente)  ,
INDEX Historial_cirugias_FKIndex2(Realizadas_idRealizadas));



CREATE TABLE Horarios (
  Pabellones_numero_pabellon INTEGER UNSIGNED  NOT NULL  ,
  hora VARCHAR(45)  NOT NULL  ,
  dia INTEGER UNSIGNED  NOT NULL  ,
  mes INTEGER UNSIGNED  NOT NULL  ,
  semana INTEGER UNSIGNED  NOT NULL  ,
  estado VARCHAR(50)  NOT NULL    ,
PRIMARY KEY(Pabellones_numero_pabellon)  ,
INDEX Horarios_FKIndex1(Pabellones_numero_pabellon));



CREATE TABLE Instrumentos (
  idInstrumentos INTEGER UNSIGNED  NOT NULL  ,
  Modulo_idModulo INTEGER UNSIGNED  NOT NULL  ,
  Cirugias_idCirugias INTEGER UNSIGNED  NOT NULL  ,
  nombre_instrumento VARCHAR(50)  NOT NULL  ,
  uso_instrumento VARCHAR(100)  NOT NULL  ,
  p_hora FLOAT  NOT NULL    ,
PRIMARY KEY(idInstrumentos)  ,
INDEX Instrumentos_FKIndex2(Modulo_idModulo)  ,
INDEX Instrumentos_FKIndex3(Cirugias_idCirugias));



CREATE TABLE Insumos (
  idInsumos INTEGER UNSIGNED  NOT NULL  ,
  Modulo_idModulo INTEGER UNSIGNED  NOT NULL  ,
  nombre_insumo VARCHAR(50)  NOT NULL  ,
  tipo_insumo VARCHAR(50)  NOT NULL  ,
  p_unidad INTEGER UNSIGNED  NOT NULL  ,
  cantidad_insumo INTEGER UNSIGNED  NOT NULL    ,
PRIMARY KEY(idInsumos)  ,
INDEX Insumos_FKIndex1(Modulo_idModulo));



CREATE TABLE Medicos (
  id_profesional INTEGER UNSIGNED  NOT NULL  ,
  Personas_id_persona INTEGER UNSIGNED  NOT NULL    ,
PRIMARY KEY(id_profesional)  ,
INDEX Medicos_FKIndex1(Personas_id_persona));



CREATE TABLE Modulo (
  idModulo INTEGER UNSIGNED  NOT NULL  ,
  Pabellones_numero_pabellon INTEGER UNSIGNED  NOT NULL  ,
  nombre_modulo_2 VARCHAR(50)  NOT NULL  ,
  nombre_modulo VARCHAR(50)  NOT NULL    ,
PRIMARY KEY(idModulo)  ,
INDEX Modulo_FKIndex1(Pabellones_numero_pabellon));



CREATE TABLE Pabellones (
  numero_pabellon INTEGER UNSIGNED  NOT NULL  ,
  bloque INTEGER UNSIGNED  NOT NULL  ,
  nombre VARCHAR(50)  NOT NULL  ,
  pisos INTEGER UNSIGNED  NOT NULL    ,
PRIMARY KEY(numero_pabellon));



CREATE TABLE Pacientes (
  idPaciente INTEGER UNSIGNED  NOT NULL  ,
  Personas_id_persona INTEGER UNSIGNED  NOT NULL    ,
PRIMARY KEY(idPaciente)  ,
INDEX Pacientes_FKIndex1(Personas_id_persona));



CREATE TABLE Personas (
  id_persona INTEGER UNSIGNED  NOT NULL  ,
  nombre VARCHAR(50)  NOT NULL  ,
  apellido VARCHAR(50)  NOT NULL  ,
  edad VARCHAR(50)  NOT NULL    ,
PRIMARY KEY(id_persona));



CREATE TABLE Realizadas (
  idRealizadas INTEGER UNSIGNED  NOT NULL    ,
PRIMARY KEY(idRealizadas));




