CREATE TABLE Agendar_cirugia (
  idAgenda INTEGER   NOT NULL ,
  Cirugias_idCirugias INTEGER   NOT NULL ,
  Arsenalero_idArsenalero INTEGER   NOT NULL ,
  Anestesista_idAnestesista INTEGER   NOT NULL ,
  Cirujano_idCirujano INTEGER   NOT NULL ,
  Horarios_Pabellones_numero_pabellon INTEGER   NOT NULL   ,
PRIMARY KEY(idAgenda)          );


CREATE INDEX Cirugia_agendada_FKIndex1 ON Agendar_cirugia (Cirugias_idCirugias);
CREATE INDEX Cirugia_agendada_FKIndex3 ON Agendar_cirugia (Horarios_Pabellones_numero_pabellon);
CREATE INDEX Agendar_cirugia_FKIndex4 ON Agendar_cirugia (Cirujano_idCirujano);
CREATE INDEX Agendar_cirugia_FKIndex5 ON Agendar_cirugia (Anestesista_idAnestesista);
CREATE INDEX Agendar_cirugia_FKIndex6 ON Agendar_cirugia (Arsenalero_idArsenalero);



CREATE TABLE Agendar_cirugia_has_Realizadas (
  Realizadas_idRealizadas INTEGER   NOT NULL ,
  Agendar_cirugia_idAgenda INTEGER   NOT NULL   ,
PRIMARY KEY(Realizadas_idRealizadas, Agendar_cirugia_idAgenda)    );


CREATE INDEX Agendar_cirugia_has_Realizadas_FKIndex1 ON Agendar_cirugia_has_Realizadas (Realizadas_idRealizadas);
CREATE INDEX Agendar_cirugia_has_Realizadas_FKIndex2 ON Agendar_cirugia_has_Realizadas (Agendar_cirugia_idAgenda);



CREATE TABLE Anestesista (
  idAnestesista SERIAL  NOT NULL ,
  Medicos_id_profesional INTEGER   NOT NULL   ,
PRIMARY KEY(idAnestesista)  );


CREATE INDEX Anestesista_FKIndex1 ON Anestesista (Medicos_id_profesional);



CREATE TABLE Arsenalero (
  idArsenalero SERIAL  NOT NULL ,
  Medicos_id_profesional INTEGER   NOT NULL   ,
PRIMARY KEY(idArsenalero)  );


CREATE INDEX Arsenalero_FKIndex1 ON Arsenalero (Medicos_id_profesional);



CREATE TABLE Cirugias (
  idCirugias INTEGER   NOT NULL ,
  Modulo_idModulo INTEGER   NOT NULL ,
  Equipo_medico_idEquipo_medico INTEGER   NOT NULL ,
  Insumos_idInsumos INTEGER   NOT NULL ,
  nombre_cirugia VARCHAR(50)   NOT NULL ,
  descripcion_cirugia VARCHAR(100)   NOT NULL ,
  finalidad_cirugia VARCHAR(100)   NOT NULL ,
  duracion_minutos INTEGER   NOT NULL   ,
PRIMARY KEY(idCirugias)      );


CREATE INDEX Cirugias_FKIndex1 ON Cirugias (Modulo_idModulo);
CREATE INDEX Cirugias_FKIndex2 ON Cirugias (Insumos_idInsumos);
CREATE INDEX Cirugias_FKIndex3 ON Cirugias (Equipo_medico_idEquipo_medico);



CREATE TABLE Cirujano (
  idCirujano SERIAL  NOT NULL ,
  Medicos_id_profesional INTEGER   NOT NULL   ,
PRIMARY KEY(idCirujano)  );


CREATE INDEX Cirujano_FKIndex1 ON Cirujano (Medicos_id_profesional);



CREATE TABLE En_pabellon (
  idEn_pabellon INTEGER   NOT NULL ,
  Agendar_cirugia_idAgenda INTEGER   NOT NULL   ,
PRIMARY KEY(idEn_pabellon)  );


CREATE INDEX En_pabellon_FKIndex1 ON En_pabellon (Agendar_cirugia_idAgenda);



CREATE TABLE Equipo_medico (
  idEquipo_medico INTEGER   NOT NULL ,
  Modulo_idModulo INTEGER   NOT NULL ,
  nombre_equipo VARCHAR(50)   NOT NULL ,
  funcion_equipo VARCHAR(50)   NOT NULL ,
  tipo_equipo VARCHAR(50)   NOT NULL ,
  descripcion_equipo VARCHAR(100)   NOT NULL   ,
PRIMARY KEY(idEquipo_medico)  );


CREATE INDEX Equipo_medico_FKIndex1 ON Equipo_medico (Modulo_idModulo);



CREATE TABLE Historial_cirugias (
  idHistorial_cirugias INTEGER   NOT NULL ,
  Realizadas_idRealizadas INTEGER   NOT NULL ,
  Pacientes_idPaciente INTEGER   NOT NULL   ,
PRIMARY KEY(idHistorial_cirugias)    );


CREATE INDEX Historial_cirugias_FKIndex1 ON Historial_cirugias (Pacientes_idPaciente);
CREATE INDEX Historial_cirugias_FKIndex2 ON Historial_cirugias (Realizadas_idRealizadas);



CREATE TABLE Horarios (
  Pabellones_numero_pabellon INTEGER   NOT NULL ,
  hora VARCHAR(45)   NOT NULL ,
  dia INTEGER   NOT NULL ,
  mes INTEGER   NOT NULL ,
  semana INTEGER   NOT NULL ,
  estado VARCHAR(50)   NOT NULL   ,
PRIMARY KEY(Pabellones_numero_pabellon)  );


CREATE INDEX Horarios_FKIndex1 ON Horarios (Pabellones_numero_pabellon);



CREATE TABLE Instrumentos (
  idInstrumentos INTEGER   NOT NULL ,
  Modulo_idModulo INTEGER   NOT NULL ,
  Cirugias_idCirugias INTEGER   NOT NULL ,
  nombre_instrumento VARCHAR(50)   NOT NULL ,
  uso_instrumento VARCHAR(100)   NOT NULL ,
  p_hora FLOAT   NOT NULL   ,
PRIMARY KEY(idInstrumentos)    );


CREATE INDEX Instrumentos_FKIndex2 ON Instrumentos (Modulo_idModulo);
CREATE INDEX Instrumentos_FKIndex3 ON Instrumentos (Cirugias_idCirugias);



CREATE TABLE Insumos (
  idInsumos INTEGER   NOT NULL ,
  Modulo_idModulo INTEGER   NOT NULL ,
  nombre_insumo VARCHAR(50)   NOT NULL ,
  tipo_insumo VARCHAR(50)   NOT NULL ,
  p_unidad INTEGER   NOT NULL ,
  cantidad_insumo INTEGER   NOT NULL   ,
PRIMARY KEY(idInsumos)  );


CREATE INDEX Insumos_FKIndex1 ON Insumos (Modulo_idModulo);



CREATE TABLE Medicos (
  id_profesional INTEGER   NOT NULL ,
  Personas_id_persona INTEGER   NOT NULL   ,
PRIMARY KEY(id_profesional)  );


CREATE INDEX Medicos_FKIndex1 ON Medicos (Personas_id_persona);



CREATE TABLE Modulo (
  idModulo INTEGER   NOT NULL ,
  Pabellones_numero_pabellon INTEGER   NOT NULL ,
  nombre_modulo_2 VARCHAR(50)   NOT NULL ,
  nombre_modulo VARCHAR(50)   NOT NULL   ,
PRIMARY KEY(idModulo)  );


CREATE INDEX Modulo_FKIndex1 ON Modulo (Pabellones_numero_pabellon);



CREATE TABLE Pabellones (
  numero_pabellon INTEGER   NOT NULL ,
  bloque INTEGER   NOT NULL ,
  nombre VARCHAR(50)   NOT NULL ,
  pisos INTEGER   NOT NULL   ,
PRIMARY KEY(numero_pabellon));



CREATE TABLE Pacientes (
  idPaciente INTEGER   NOT NULL ,
  Personas_id_persona INTEGER   NOT NULL   ,
PRIMARY KEY(idPaciente)  );


CREATE INDEX Pacientes_FKIndex1 ON Pacientes (Personas_id_persona);



CREATE TABLE Personas (
  id_persona INTEGER   NOT NULL ,
  nombre VARCHAR(50)   NOT NULL ,
  apellido VARCHAR(50)   NOT NULL ,
  edad VARCHAR(50)   NOT NULL   ,
PRIMARY KEY(id_persona));



CREATE TABLE Realizadas (
  idRealizadas INTEGER   NOT NULL   ,
PRIMARY KEY(idRealizadas));




