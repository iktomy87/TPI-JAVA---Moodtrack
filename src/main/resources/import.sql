-- import.sql
-- Este archivo debe estar en: src/main/resources/import.sql
-- Hibernate lo ejecuta automáticamente después de crear el schema

-- 1) Perfiles de usuario
INSERT INTO perfil_usuario (bio, color_favorito, frase_del_dia) VALUES ('Apasionado por la tecnología y el café.', 'AZUL', 'Cada día es una nueva oportunidad.');
INSERT INTO perfil_usuario (bio, color_favorito, frase_del_dia) VALUES ('Amante de los libros y la tranquilidad.', 'VERDE', 'Leer es soñar con los ojos abiertos.');
INSERT INTO perfil_usuario (bio, color_favorito, frase_del_dia) VALUES ('Fanático del deporte y la vida saludable.', 'ROJO', 'La disciplina vence al talento.');
INSERT INTO perfil_usuario (bio, color_favorito, frase_del_dia) VALUES ('Programador nocturno.', 'NEGRO', 'Primero funciona, luego optimiza.');
INSERT INTO perfil_usuario (bio, color_favorito, frase_del_dia) VALUES ('Explorador de montañas.', 'NARANJA', 'La cima está más cerca de lo que crees.');
INSERT INTO perfil_usuario (bio, color_favorito, frase_del_dia) VALUES ('Mente creativa.', 'VIOLETA', 'La creatividad es inteligencia divirtiéndose.');
INSERT INTO perfil_usuario (bio, color_favorito, frase_del_dia) VALUES ('Amante de los animales.', 'CELESTE', 'La lealtad se escribe con patas.');
INSERT INTO perfil_usuario (bio, color_favorito, frase_del_dia) VALUES ('Músico aficionado.', 'AMARILLO', 'La vida sin música sería un error.');
INSERT INTO perfil_usuario (bio, color_favorito, frase_del_dia) VALUES ('Cinéfilo empedernido.', 'GRIS', 'Cada película es una nueva vida.');
INSERT INTO perfil_usuario (bio, color_favorito, frase_del_dia) VALUES ('Minimalista digital.', 'BLANCO', 'Menos es más.');

-- 2) Usuarios
INSERT INTO usuario (id, name, email, perfil_id) VALUES (UUID_TO_BIN('11111111-1111-1111-1111-111111111111'), 'Ana', 'ana@example.com', 1);
INSERT INTO usuario (id, name, email, perfil_id) VALUES (UUID_TO_BIN('22222222-2222-2222-2222-222222222222'), 'Bruno', 'bruno@example.com', 2);
INSERT INTO usuario (id, name, email, perfil_id) VALUES (UUID_TO_BIN('33333333-3333-3333-3333-333333333333'), 'Carla', 'carla@example.com', 3);
INSERT INTO usuario (id, name, email, perfil_id) VALUES (UUID_TO_BIN('44444444-4444-4444-4444-444444444444'), 'Diego', 'diego@example.com', 4);
INSERT INTO usuario (id, name, email, perfil_id) VALUES (UUID_TO_BIN('55555555-5555-5555-5555-555555555555'), 'Elena', 'elena@example.com', 5);
INSERT INTO usuario (id, name, email, perfil_id) VALUES (UUID_TO_BIN('66666666-6666-6666-6666-666666666666'), 'Facu', 'facu@example.com', 6);
INSERT INTO usuario (id, name, email, perfil_id) VALUES (UUID_TO_BIN('77777777-7777-7777-7777-777777777777'), 'Gaby', 'gaby@example.com', 7);
INSERT INTO usuario (id, name, email, perfil_id) VALUES (UUID_TO_BIN('88888888-8888-8888-8888-888888888888'), 'Hugo', 'hugo@example.com', 8);
INSERT INTO usuario (id, name, email, perfil_id) VALUES (UUID_TO_BIN('99999999-9999-9999-9999-999999999999'), 'Iris', 'iris@example.com', 9);
INSERT INTO usuario (id, name, email, perfil_id) VALUES (UUID_TO_BIN('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa'), 'Juan', 'juan@example.com', 10);

-- 3) Hábitos
INSERT INTO habito (descripcion, nivel_de_importancia_enum) VALUES ('Caminar 30 minutos', 'BAJO');
INSERT INTO habito (descripcion, nivel_de_importancia_enum) VALUES ('Leer 20 minutos', 'MEDIO');
INSERT INTO habito (descripcion, nivel_de_importancia_enum) VALUES ('Meditar 10 minutos', 'ALTO');
INSERT INTO habito (descripcion, nivel_de_importancia_enum) VALUES ('Beber 2 litros de agua', 'MEDIO');
INSERT INTO habito (descripcion, nivel_de_importancia_enum) VALUES ('Dormir 8 horas', 'ALTO');
INSERT INTO habito (descripcion, nivel_de_importancia_enum) VALUES ('Escribir un diario', 'MEDIO');
INSERT INTO habito (descripcion, nivel_de_importancia_enum) VALUES ('Desconectarse del celular', 'ALTO');
INSERT INTO habito (descripcion, nivel_de_importancia_enum) VALUES ('Hacer una buena acción', 'BAJO');

-- 4) Entradas diarias
INSERT INTO entrada_diaria (fecha, reflexion, emocion, usuario_id) VALUES ('2025-01-01', 'Arrancando el año con muchas ganas.', 'FELIZ', UUID_TO_BIN('11111111-1111-1111-1111-111111111111'));
INSERT INTO entrada_diaria (fecha, reflexion, emocion, usuario_id) VALUES ('2025-01-02', 'Día tranquilo, mucha lectura.', 'CALMO', UUID_TO_BIN('22222222-2222-2222-2222-222222222222'));
INSERT INTO entrada_diaria (fecha, reflexion, emocion, usuario_id) VALUES ('2025-01-03', 'Entrené fuerte, estoy motivado.', 'ENERGICO', UUID_TO_BIN('33333333-3333-3333-3333-333333333333'));
INSERT INTO entrada_diaria (fecha, reflexion, emocion, usuario_id) VALUES ('2025-01-04', 'Un poco cansado pero contento.', 'CANSADO', UUID_TO_BIN('44444444-4444-4444-4444-444444444444'));
INSERT INTO entrada_diaria (fecha, reflexion, emocion, usuario_id) VALUES ('2025-01-05', 'Gran día en familia.', 'AGRADECIDO', UUID_TO_BIN('55555555-5555-5555-5555-555555555555'));
INSERT INTO entrada_diaria (fecha, reflexion, emocion, usuario_id) VALUES ('2025-01-06', 'Estudié bastante Java.', 'ORGULLOSO', UUID_TO_BIN('66666666-6666-6666-6666-666666666666'));
INSERT INTO entrada_diaria (fecha, reflexion, emocion, usuario_id) VALUES ('2025-01-07', 'Me sentí un poco abrumado.', 'ANSIOSO', UUID_TO_BIN('77777777-7777-7777-7777-777777777777'));
INSERT INTO entrada_diaria (fecha, reflexion, emocion, usuario_id) VALUES ('2025-01-08', 'Buena charla con amigos.', 'CONTENTO', UUID_TO_BIN('88888888-8888-8888-8888-888888888888'));
INSERT INTO entrada_diaria (fecha, reflexion, emocion, usuario_id) VALUES ('2025-01-09', 'Día muy productivo.', 'SATISFECHO', UUID_TO_BIN('99999999-9999-9999-9999-999999999999'));
INSERT INTO entrada_diaria (fecha, reflexion, emocion, usuario_id) VALUES ('2025-01-10', 'Necesito descansar un poco.', 'AGOTADO', UUID_TO_BIN('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa'));
INSERT INTO entrada_diaria (fecha, reflexion, emocion, usuario_id) VALUES ('2025-01-11', 'Salí a caminar por la ciudad.', 'RELAX', UUID_TO_BIN('11111111-1111-1111-1111-111111111111'));
INSERT INTO entrada_diaria (fecha, reflexion, emocion, usuario_id) VALUES ('2025-01-12', 'Aprendí algo nuevo en programación.', 'ENTUSIASMADO', UUID_TO_BIN('22222222-2222-2222-2222-222222222222'));
INSERT INTO entrada_diaria (fecha, reflexion, emocion, usuario_id) VALUES ('2025-01-13', 'Día complicado en el trabajo.', 'ESTRESADO', UUID_TO_BIN('33333333-3333-3333-3333-333333333333'));
INSERT INTO entrada_diaria (fecha, reflexion, emocion, usuario_id) VALUES ('2025-01-14', 'Noche de películas.', 'ENTRETENIDO', UUID_TO_BIN('44444444-4444-4444-4444-444444444444'));
INSERT INTO entrada_diaria (fecha, reflexion, emocion, usuario_id) VALUES ('2025-01-15', 'Pequeños avances, pero seguros.', 'ESPERANZADO', UUID_TO_BIN('55555555-5555-5555-5555-555555555555'));
INSERT INTO entrada_diaria (fecha, reflexion, emocion, usuario_id) VALUES ('2025-01-16', 'Hoy no tuve muchas ganas.', 'APATICO', UUID_TO_BIN('66666666-6666-6666-6666-666666666666'));
INSERT INTO entrada_diaria (fecha, reflexion, emocion, usuario_id) VALUES ('2025-01-17', 'Hice ejercicio y comí sano.', 'SALUDABLE', UUID_TO_BIN('77777777-7777-7777-7777-777777777777'));
INSERT INTO entrada_diaria (fecha, reflexion, emocion, usuario_id) VALUES ('2025-01-18', 'Muchas reuniones, poco foco.', 'SATURADO', UUID_TO_BIN('88888888-8888-8888-8888-888888888888'));
INSERT INTO entrada_diaria (fecha, reflexion, emocion, usuario_id) VALUES ('2025-01-19', 'Día de descanso total.', 'RELAX', UUID_TO_BIN('99999999-9999-9999-9999-999999999999'));
INSERT INTO entrada_diaria (fecha, reflexion, emocion, usuario_id) VALUES ('2025-01-20', 'Planificando nuevas metas.', 'INSPIRADO', UUID_TO_BIN('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa'));

-- 5) Relación muchos-a-muchos entrada_habito
INSERT INTO entrada_habito (entrada_id, habito_id) VALUES (1, 1);
INSERT INTO entrada_habito (entrada_id, habito_id) VALUES (1, 4);
INSERT INTO entrada_habito (entrada_id, habito_id) VALUES (2, 2);
INSERT INTO entrada_habito (entrada_id, habito_id) VALUES (2, 6);
INSERT INTO entrada_habito (entrada_id, habito_id) VALUES (3, 1);
INSERT INTO entrada_habito (entrada_id, habito_id) VALUES (3, 5);
INSERT INTO entrada_habito (entrada_id, habito_id) VALUES (4, 4);
INSERT INTO entrada_habito (entrada_id, habito_id) VALUES (5, 5);
INSERT INTO entrada_habito (entrada_id, habito_id) VALUES (5, 8);
INSERT INTO entrada_habito (entrada_id, habito_id) VALUES (6, 2);
INSERT INTO entrada_habito (entrada_id, habito_id) VALUES (6, 6);
INSERT INTO entrada_habito (entrada_id, habito_id) VALUES (7, 3);
INSERT INTO entrada_habito (entrada_id, habito_id) VALUES (7, 7);
INSERT INTO entrada_habito (entrada_id, habito_id) VALUES (8, 1);
INSERT INTO entrada_habito (entrada_id, habito_id) VALUES (8, 2);
INSERT INTO entrada_habito (entrada_id, habito_id) VALUES (9, 5);
INSERT INTO entrada_habito (entrada_id, habito_id) VALUES (10, 3);
INSERT INTO entrada_habito (entrada_id, habito_id) VALUES (10, 4);
INSERT INTO entrada_habito (entrada_id, habito_id) VALUES (11, 1);
INSERT INTO entrada_habito (entrada_id, habito_id) VALUES (11, 8);
INSERT INTO entrada_habito (entrada_id, habito_id) VALUES (12, 2);
INSERT INTO entrada_habito (entrada_id, habito_id) VALUES (12, 6);
INSERT INTO entrada_habito (entrada_id, habito_id) VALUES (13, 4);
INSERT INTO entrada_habito (entrada_id, habito_id) VALUES (14, 8);
INSERT INTO entrada_habito (entrada_id, habito_id) VALUES (15, 5);
INSERT INTO entrada_habito (entrada_id, habito_id) VALUES (16, 7);
INSERT INTO entrada_habito (entrada_id, habito_id) VALUES (17, 3);
INSERT INTO entrada_habito (entrada_id, habito_id) VALUES (18, 4);
INSERT INTO entrada_habito (entrada_id, habito_id) VALUES (19, 1);
INSERT INTO entrada_habito (entrada_id, habito_id) VALUES (20, 2);