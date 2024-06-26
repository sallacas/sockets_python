CREATE TABLE CIUDADES(
    CIUD_ID SERIAL PRIMARY KEY,
    CIUD_NOMBRE VARCHAR(100) NOT NULL
) ;

CREATE TABLE PERSONAS(
    DIR_TEL VARCHAR(20) PRIMARY KEY,
    DIR_TIPO_TEL VARCHAR(20) NOT NULL,
    DIR_NOMBRE VARCHAR(100) NOT NULL,
    DIR_DIRECCION VARCHAR(255) NOT NULL,
    DIR_CIUD_ID INT NOT NULL,
    FOREIGN KEY (DIR_CIUD_ID) REFERENCES CIUDADES(CIUD_ID)
) ;