-- Generated via https://generatedata.com/

CREATE TABLE myTable (
  id NUMBER(7, 0) GENERATED ALWAYS as IDENTITY(START WITH 1 INCREMENT by 1),
  name VARCHAR2(255) default NULL,
  phone VARCHAR2(100) default NULL,
  email VARCHAR2(255) default NULL,
  address VARCHAR2(255) default NULL,
  postalZip VARCHAR2(20) default NULL,
  region VARCHAR2(50) default NULL,
  country VARCHAR2(100) default NULL,
  PRIMARY KEY (id)
);