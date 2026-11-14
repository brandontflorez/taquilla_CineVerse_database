CREATE TABLE peliculas (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    genero VARCHAR(100) NOT NULL,
    duracion INTEGER NOT NULL,
    clasificacion VARCHAR(20) NOT NULL,
    trailer_url VARCHAR(500)
);

CREATE TABLE funciones (
    id SERIAL PRIMARY KEY,
    pelicula_id INTEGER NOT NULL,
    fecha DATE NOT NULL,
    hora TIME NOT NULL,
    sala VARCHAR(50) NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    cupos_disponibles INTEGER NOT NULL,

    CONSTRAINT fk_funcion_pelicula
        FOREIGN KEY (pelicula_id)
        REFERENCES peliculas(id)
        ON DELETE CASCADE
);

CREATE TABLE compras (
    id SERIAL PRIMARY KEY,
    funcion_id INTEGER NOT NULL,
    nombre_cliente VARCHAR(150) NOT NULL,
    cantidad_boletos INTEGER NOT NULL,
    valor_total DECIMAL(10,2) NOT NULL,
    fecha_compra TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_compra_funcion
        FOREIGN KEY (funcion_id)
        REFERENCES funciones(id)
);