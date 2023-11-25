-- el comando use sirve para seleccionar la BD a consultar -- 
use biblioteca;

/*select - sirve para seleccionar la tabla que deseamos consultar*/;
SELECT * from editorial;
/*para realizar consultas con where ejemplo: */;
SELECT nombre, apellido, fecha_nacimiento FROM autor WHERE fecha_nacimiento>'1940-01-01';
SELECT numero, fecha_expedicion FROM documento WHERE fecha_expedicion>='1950-01-01';
SELECT nombre, fecha_lanzamiento FROM libro WHERE fecha_lanzamiento>'1981-01-01';
SELECT * FROM persona WHERE fecha_nacimiento < '1990-01-02';
/*_____________________________________________________________________________________________________*/
/*el comando update sirve para hacer correcciones a los datos que estan en una tabla de la BD*/
update nombre_tabla set columna1=valor1 where condicion;
select * from documento;
UPDATE  documento SET lugar_expedicion=Vilavicencio WHERE numero=79526; 









