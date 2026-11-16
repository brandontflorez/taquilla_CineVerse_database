INSERT INTO peliculas (titulo, genero, duracion, clasificacion, trailer_url)
VALUES
(
    'Spider-Man: No Way Home',
    'Acción',
    148,
    'PG-13',
    'https://www.youtube.com/watch?v=JfVOs4VSpmA'
),
(
    'Interstellar',
    'Ciencia ficción',
    169,
    'PG-13',
    'https://www.youtube.com/watch?v=zSWdZVtXT7E'
),
(
    'Coco',
    'Animación',
    109,
    'PG',
    'https://www.youtube.com/watch?v=xlnPHQ3TLX8'
),
(
    'The Batman',
    'Acción',
    176,
    'PG-13',
    'https://www.youtube.com/watch?v=mqqft2x_Aa4'
);

INSERT INTO funciones
(pelicula_id, fecha, hora, sala, precio, cupos_disponibles)
VALUES
(1, '2026-11-20', '15:00:00', 'Sala 1', 18000, 50),
(1, '2026-11-20', '19:00:00', 'Sala 2', 22000, 40),
(2, '2026-11-21', '16:30:00', 'Sala 1', 20000, 45),
(3, '2026-11-21', '14:00:00', 'Sala 3', 15000, 60),
(4, '2026-11-22', '20:00:00', 'Sala 2', 22000, 35);

INSERT INTO cineverse_cards
(numero_tarjeta, nombre_titular, saldo)
VALUES
(
    'CV-123456',
    'Usuario de Prueba',
    100000
);
