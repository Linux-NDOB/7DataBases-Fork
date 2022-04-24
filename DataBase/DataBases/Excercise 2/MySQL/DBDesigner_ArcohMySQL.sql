CREATE TABLE activity (
  activity_id INTEGER UNSIGNED  NOT NULL  ,
  activity_name VARCHAR(50)  NOT NULL    ,
PRIMARY KEY(activity_id));



CREATE TABLE family (
  family_id INTEGER UNSIGNED  NOT NULL  ,
  family_members INTEGER UNSIGNED  NOT NULL  ,
  family_age INTEGER UNSIGNED  NOT NULL    ,
PRIMARY KEY(family_id));



CREATE TABLE family_has_material_goods (
  family_id INTEGER UNSIGNED  NOT NULL  ,
  material_goods_material_id INTEGER UNSIGNED  NOT NULL    ,
PRIMARY KEY(family_id, material_goods_material_id)  ,
INDEX family_has_material_goods_FKIndex1(family_id)  ,
INDEX family_has_material_goods_FKIndex2(material_goods_material_id));



CREATE TABLE materials (
  material_id INTEGER UNSIGNED  NOT NULL  ,
  material_name VARCHAR(50)  NOT NULL  ,
  material_type VARCHAR(50)  NOT NULL    ,
PRIMARY KEY(material_id));



CREATE TABLE material_goods (
  material_id INTEGER UNSIGNED  NOT NULL  ,
  materials_material_id INTEGER UNSIGNED  NOT NULL    ,
PRIMARY KEY(material_id)  ,
INDEX material_goods_FKIndex1(materials_material_id));



CREATE TABLE member (
  member_id INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  activity_id INTEGER UNSIGNED  NOT NULL  ,
  family_id INTEGER UNSIGNED  NOT NULL  ,
  name VARCHAR(50)  NOT NULL  ,
  last_name VARCHAR(50)  NOT NULL  ,
  age INTEGER UNSIGNED  NOT NULL  ,
  civil_status VARCHAR(50)  NOT NULL    ,
PRIMARY KEY(member_id)  ,
INDEX member_FKIndex1(family_id)  ,
INDEX member_FKIndex2(activity_id));



CREATE TABLE tools (
  tool_id INTEGER UNSIGNED  NOT NULL  ,
  activity_id INTEGER UNSIGNED  NOT NULL  ,
  materials_material_id INTEGER UNSIGNED  NOT NULL    ,
PRIMARY KEY(tool_id)  ,
INDEX tools_FKIndex1(materials_material_id)  ,
INDEX tools_FKIndex2(activity_id));




