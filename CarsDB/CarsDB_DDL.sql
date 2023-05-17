-- No FK and PK to study purposes :)
-- So that I can properly understand the JOIN clause

CREATE TABLE brand (
    id NUMBER(4, 0),
    brand_name VARCHAR2(25)
);

CREATE TABLE model (
    id NUMBER(4, 0),
    model_name VARCHAR2(25),
    brand_id NUMBER(4, 0)
);