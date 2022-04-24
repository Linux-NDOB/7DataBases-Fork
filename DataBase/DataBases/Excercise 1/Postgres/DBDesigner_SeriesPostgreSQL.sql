CREATE TABLE Actors (
  actor_id INTEGER   NOT NULL ,
  Person_idPerson INTEGER   NOT NULL   ,
PRIMARY KEY(actor_id)  );


CREATE INDEX Actors_FKIndex1 ON Actors (Person_idPerson);



CREATE TABLE Actors_has_actor_nominations (
  Actors_actor_id INTEGER   NOT NULL ,
  actor_nominations_categoriesNominated VARCHAR(50)   NOT NULL   ,
PRIMARY KEY(Actors_actor_id, actor_nominations_categoriesNominated)    );


CREATE INDEX Actors_has_actor_nominations_FKIndex1 ON Actors_has_actor_nominations (Actors_actor_id);
CREATE INDEX Actors_has_actor_nominations_FKIndex2 ON Actors_has_actor_nominations (actor_nominations_categoriesNominated);



CREATE TABLE actor_awards (
  CateogryWon VARCHAR(50)   NOT NULL ,
  Actors_actor_id INTEGER   NOT NULL   ,
PRIMARY KEY(CateogryWon)  );


CREATE INDEX actor_awards_FKIndex1 ON actor_awards (Actors_actor_id);



CREATE TABLE actor_nominations (
  categoriesNominated VARCHAR(50)   NOT NULL   ,
PRIMARY KEY(categoriesNominated));



CREATE TABLE awards (
  award_name VARCHAR(50)   NOT NULL ,
  series_serie_id INTEGER   NOT NULL ,
  academy_name VARCHAR(50)   NOT NULL   ,
PRIMARY KEY(award_name)  );


CREATE INDEX awards_FKIndex1 ON awards (series_serie_id);



CREATE TABLE categories (
  categories_name VARCHAR(100)   NOT NULL   ,
PRIMARY KEY(categories_name));



CREATE TABLE Characters (
  character_id INTEGER   NOT NULL ,
  Actors_actor_id INTEGER   NOT NULL ,
  character_name VARCHAR(50)   NOT NULL ,
  character_lastname VARCHAR(50)      ,
PRIMARY KEY(character_id)  );


CREATE INDEX Characters_FKIndex1 ON Characters (Actors_actor_id);



CREATE TABLE directors (
  director_id INTEGER   NOT NULL ,
  Person_idPerson INTEGER   NOT NULL   ,
PRIMARY KEY(director_id)  );


CREATE INDEX directors_FKIndex1 ON directors (Person_idPerson);



CREATE TABLE episodes (
  episode_number VARCHAR(50)   NOT NULL ,
  season_number INTEGER   NOT NULL ,
  episode_name VARCHAR(50)   NOT NULL ,
  espisode_minutes INTEGER   NOT NULL   ,
PRIMARY KEY(episode_number)  );


CREATE INDEX episodes_FKIndex1 ON episodes (season_number);



CREATE TABLE episode_filiming_locations (
  localId INTEGER   NOT NULL ,
  episodes_episode_number VARCHAR(50)   NOT NULL ,
  country VARCHAR(50)   NOT NULL ,
  city VARCHAR(50)   NOT NULL   ,
PRIMARY KEY(localId)  );


CREATE INDEX episode_filiming_locations_FKIndex1 ON episode_filiming_locations (episodes_episode_number);



CREATE TABLE episode_rating (
  episode_rating_id INTEGER   NOT NULL ,
  episodes_episode_number VARCHAR(50)   NOT NULL ,
  users_user_name VARCHAR(50)   NOT NULL ,
  episode_rating_text VARCHAR(50)   NOT NULL ,
  espisode_stars INTEGER   NOT NULL   ,
PRIMARY KEY(episode_rating_id)    );


CREATE INDEX episode_rating_FKIndex1 ON episode_rating (users_user_name);
CREATE INDEX episode_rating_FKIndex2 ON episode_rating (episodes_episode_number);



CREATE TABLE episode_release_date (
  episodes_episode_number VARCHAR(50)   NOT NULL ,
  release_day INTEGER   NOT NULL ,
  release_month INTEGER   NOT NULL ,
  release_year INTEGER   NOT NULL   ,
PRIMARY KEY(episodes_episode_number)  );


CREATE INDEX episode_release_date_FKIndex1 ON episode_release_date (episodes_episode_number);



CREATE TABLE episode_tech_specs (
  episodes_episode_number VARCHAR(50)   NOT NULL ,
  episode_minutes INTEGER   NOT NULL ,
  episode_sound_mix VARCHAR(50)   NOT NULL ,
  episode_format VARCHAR(50)   NOT NULL ,
  aspect_ratio VARCHAR(50)   NOT NULL   ,
PRIMARY KEY(episodes_episode_number)  );


CREATE INDEX episode_tech_specs_FKIndex1 ON episode_tech_specs (episodes_episode_number);



CREATE TABLE nominations (
  nomination_name VARCHAR(50)   NOT NULL ,
  nomination_academy VARCHAR(50)   NOT NULL   ,
PRIMARY KEY(nomination_name));



CREATE TABLE Person (
  idPerson INTEGER   NOT NULL ,
  episodes_episode_number VARCHAR(50)   NOT NULL ,
  firstName VARCHAR(50)   NOT NULL ,
  lastName VARCHAR(50)   NOT NULL   ,
PRIMARY KEY(idPerson)  );


CREATE INDEX Person_FKIndex1 ON Person (episodes_episode_number);



CREATE TABLE producers (
  producer_id INTEGER   NOT NULL ,
  Person_idPerson INTEGER   NOT NULL   ,
PRIMARY KEY(producer_id)  );


CREATE INDEX producers_FKIndex1 ON producers (Person_idPerson);



CREATE TABLE season (
  season_number INTEGER   NOT NULL ,
  series_serie_id INTEGER   NOT NULL ,
  season_chapters INTEGER   NOT NULL   ,
PRIMARY KEY(season_number)  );


CREATE INDEX season_FKIndex1 ON season (series_serie_id);



CREATE TABLE series (
  serie_id INTEGER   NOT NULL ,
  name VARCHAR(100)   NOT NULL ,
  country VARCHAR(50)   NOT NULL ,
  company VARCHAR(50)   NOT NULL   ,
PRIMARY KEY(serie_id));



CREATE TABLE series_has_categories (
  series_serie_id INTEGER   NOT NULL ,
  categories_name VARCHAR(100)   NOT NULL   ,
PRIMARY KEY(series_serie_id, categories_name)    );


CREATE INDEX series_has_categories_FKIndex1 ON series_has_categories (series_serie_id);
CREATE INDEX series_has_categories_FKIndex2 ON series_has_categories (categories_name);



CREATE TABLE series_has_nominations (
  series_serie_id INTEGER   NOT NULL ,
  nominations_nomination_name VARCHAR(50)   NOT NULL   ,
PRIMARY KEY(series_serie_id, nominations_nomination_name)    );


CREATE INDEX series_has_nominations_FKIndex1 ON series_has_nominations (series_serie_id);
CREATE INDEX series_has_nominations_FKIndex2 ON series_has_nominations (nominations_nomination_name);



CREATE TABLE series_has_users (
  series_serie_id INTEGER   NOT NULL ,
  users_user_name VARCHAR(50)   NOT NULL   ,
PRIMARY KEY(series_serie_id, users_user_name)    );


CREATE INDEX series_has_users_FKIndex1 ON series_has_users (series_serie_id);
CREATE INDEX series_has_users_FKIndex2 ON series_has_users (users_user_name);



CREATE TABLE users (
  user_name VARCHAR(50)   NOT NULL ,
  Person_idPerson INTEGER   NOT NULL ,
  user_email VARCHAR(50)   NOT NULL   ,
PRIMARY KEY(user_name)  );


CREATE INDEX users_FKIndex1 ON users (Person_idPerson);



CREATE TABLE writters (
  writter_id INTEGER   NOT NULL ,
  Person_idPerson INTEGER   NOT NULL   ,
PRIMARY KEY(writter_id)  );


CREATE INDEX writters_FKIndex1 ON writters (Person_idPerson);




