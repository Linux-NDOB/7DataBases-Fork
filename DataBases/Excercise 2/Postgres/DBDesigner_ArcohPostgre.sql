CREATE TABLE activity (
  activity_id INTEGER   NOT NULL ,
  activity_name VARCHAR(50)   NOT NULL   ,
PRIMARY KEY(activity_id));



CREATE TABLE family (
  family_id INTEGER   NOT NULL ,
  family_members INTEGER   NOT NULL ,
  family_age INTEGER   NOT NULL   ,
PRIMARY KEY(family_id));



CREATE TABLE family_has_material_goods (
  family_id INTEGER   NOT NULL ,
  material_goods_material_id INTEGER   NOT NULL   ,
PRIMARY KEY(family_id, material_goods_material_id)    );


CREATE INDEX family_has_material_goods_FKIndex1 ON family_has_material_goods (family_id);
CREATE INDEX family_has_material_goods_FKIndex2 ON family_has_material_goods (material_goods_material_id);



CREATE TABLE materials (
  material_id INTEGER   NOT NULL ,
  material_name VARCHAR(50)   NOT NULL ,
  material_type VARCHAR(50)   NOT NULL   ,
PRIMARY KEY(material_id));



CREATE TABLE material_goods (
  material_id INTEGER   NOT NULL ,
  materials_material_id INTEGER   NOT NULL   ,
PRIMARY KEY(material_id)  );


CREATE INDEX material_goods_FKIndex1 ON material_goods (materials_material_id);



CREATE TABLE member (
  member_id SERIAL  NOT NULL ,
  activity_id INTEGER   NOT NULL ,
  family_id INTEGER   NOT NULL ,
  name VARCHAR(50)   NOT NULL ,
  last_name VARCHAR(50)   NOT NULL ,
  age INTEGER   NOT NULL ,
  civil_status VARCHAR(50)   NOT NULL   ,
PRIMARY KEY(member_id)    );


CREATE INDEX member_FKIndex1 ON member (family_id);
CREATE INDEX member_FKIndex2 ON member (activity_id);



CREATE TABLE tools (
  tool_id INTEGER   NOT NULL ,
  activity_id INTEGER   NOT NULL ,
  materials_material_id INTEGER   NOT NULL   ,
PRIMARY KEY(tool_id)    );


CREATE INDEX tools_FKIndex1 ON tools (materials_material_id);
CREATE INDEX tools_FKIndex2 ON tools (activity_id);




