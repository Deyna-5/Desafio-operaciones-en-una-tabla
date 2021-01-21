--Crear Base de datos POST
CREATE DATABASE posts;

--Entrar en la Base de Datos
\c posts

--Creacion de tabla post
CREATE TABLE post(
	nombre_usuario VARCHAR(20),
	fecha_creacion DATE,
	contenido VARCHAR(300),
	descripcion VARCHAR(100),
	id_publicacion SERIAL PRIMARY KEY
);

--insertar post
INSERT INTO post(
	nombre_usuario,
	fecha_creacion,
	contenido,
	descripcion)
	VALUES(
		'Pamela',
		'2020-01-01',
		'Lorem ipsum dolor sit amet consectetur adipiscing.',
		'Lorem ipsum dolor sit ame');
INSERT INTO post(
	nombre_usuario,
	fecha_creacion,
	contenido,
	descripcion)
	VALUES
		('Pamela',
		'2020-01-02',
		'Lorem ipsum dolor sit amet consectetur adipiscing.',
		'Lorem ipsum dolor sit ame');
INSERT INTO post(
	nombre_usuario,
	fecha_creacion,
	contenido,
	descripcion)
	VALUES
		('Carlos',
		'2020-01-03',
		'Lorem ipsum dolor sit amet consectetur adipiscing.',
		'Lorem ipsum dolor sit ame');

--Modificar table post agregando la columna titulo
ALTER TABLE post ADD titulo VARCHAR(20);

--agregar titulo a las publicaciones ya creadas
UPDATE post SET titulo ='Titulo1' WHERE id = '1';
UPDATE post SET titulo ='Titulo2' WHERE id = '2';
UPDATE post SET titulo ='Titulo3' WHERE id = '3';

--insertar 2 post para el usuario "Pedro"
INSERT INTO post(
	nombre_usuario,
	fecha_creacion,
	contenido,
	descripcion)
	VALUES
		('Pedro',
		'2020-01-04',
		'Lorem ipsum dolor sit amet consectetur adipiscing.',
		'Lorem ipsum dolor sit ame');
INSERT INTO post(
	nombre_usuario,
	fecha_creacion,
	contenido,
	descripcion)
	VALUES
		('Pedro',
		'2020-01-05',
		'Lorem ipsum dolor sit amet consectetur adipiscing.',
		'Lorem ipsum dolor sit ame');

--Eliminar post de "Carlos"
DELETE FROM post WHERE nombre_usuario = 'Carlos';

--Insertar nuevo post para usuario "Carlos"
INSERT INTO post(
	nombre_usuario,
	fecha_creacion,
	contenido,
	descripcion)
	VALUES
		('Carlos',
		'2020-01-06',
		'Lorem ipsum dolor sit amet consectetur adipiscing.',
		'Lorem ipsum dolor sit ame');

--PARTE 2:

--Crear una nueva TABLA
CREATE TABLE comentarios(
	id SERIAL,
	Fecha TIMESTAMP,
	contenido VARCHAR(120),
	id_comentario INT REFERENCES post(id_publicacion)
);

--Crear 2 comentarios para "Pamela" y 4 para "Carlos"
INSERT INTO comentarios(
	fecha,
	contenido,
	id_comentario)
	VALUES(
		'2020-01-21 19:51:00',
		'Comentario numero 1 Pamela',
		1
		);
INSERT INTO comentarios(
	fecha,
	contenido,
	id_comentario)
	VALUES(
		'2020-01-21 19:56:00',
		'Comentario numero 2 Pamela',
		1
		);
INSERT INTO comentarios(
	fecha,
	contenido,
	id_comentario)
	VALUES(
		'2020-01-21 19:58:00',
		'Comentario numero 1 Carlos',
		6
		);
INSERT INTO comentarios(
	fecha,
	contenido,
	id_comentario)
	VALUES(
		'2020-01-21 19:59:00',
		'Comentario numero 2 Carlos',
		6
		);
INSERT INTO comentarios(
	fecha,
	contenido,
	id_comentario)
	VALUES(
		'2020-01-21 20:00:00',
		'Comentario numero 3 Carlos',
		6
		);
INSERT INTO comentarios(
	fecha,
	contenido,
	id_comentario)
	VALUES(
		'2020-01-21 20:01:00',
		'Comentario numero 4 Carlos',
		6
		);

-- Crear un nuevo Post "Margarita"
INSERT INTO post(
	nombre_usuario,
	fecha_creacion,
	contenido,
	descripcion)
	VALUES
		('Margarita',
		'2020-01-07',
		'Lorem ipsum dolor sit amet consectetur adipiscing.',
		'Lorem ipsum dolor sit ame');

--Ingresar 5 comentarios para el post de "Margarita"
INSERT INTO comentarios(
	fecha,
	contenido,
	id_comentario)
	VALUES(
		'2020-01-21 20:05:00',
		'Comentario numero 1 Margarita',
		7
		);
INSERT INTO comentarios(
	fecha,
	contenido,
	id_comentario)
	VALUES(
		'2020-01-21 20:06:00',
		'Comentario numero 2 Margarita',
		7
		);
INSERT INTO comentarios(
	fecha,
	contenido,
	id_comentario)
	VALUES(
		'2020-01-21 20:07:00',
		'Comentario numero 3 Margarita',
		7
		);
INSERT INTO comentarios(
	fecha,
	contenido,
	id_comentario)
	VALUES(
		'2020-01-21 20:08:00',
		'Comentario numero 4 Margarita',
		7
		);
INSERT INTO comentarios(
	fecha,
	contenido,
	id_comentario)
	VALUES(
		'2020-01-21 20:09:00',
		'Comentario numero 5 Margarita',
		7
		);