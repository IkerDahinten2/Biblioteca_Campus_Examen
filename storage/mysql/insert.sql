use biblioteca_campus;

-- inserts de los autores con nombres medio flojos o sin tildes
insert into Autor (nombre_autor) values 
('Gabriel Garcia Marquez'),
('George Orwell'),
('J.K. Rowling'),
('Julio Cortazar'),
('Stephen King'),
('Antonie de Saint-Exupery');

-- libros de la biblioteca
insert into Libro (titulo, genero, isbn, disponibilidad) values
('Cien anos de soledad', 'Realismo Magico', '978-0307474728', 'Disponible'),
('1984', 'Distopia', '978-0451524935', 'Prestado'),
('Harry Potter y la piedra filosofal', 'Fantasia', '978-8449307225', 'Disponible'),
('Rayuela', 'Novela', '978-8420471648', 'Disponible'),
('It', 'Terror', '978-1501142970', 'En Reparacion'),
('El Principito', 'Infantil', '978-0156012195', 'Disponible');

-- asociando libros con autores en la intermedia
insert into LibroAutor (id_libro, id_autor) values 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6);

-- algunas ediciones de los libros
insert into Publicacion (id_libro, edicion, fecha_publicacion, editor) values
(1, 'Primera Edicion', '1967-5-30', 'Editorial Sudamericana'),
(1, 'Edicion Especial', '2007-03-01', 'Real Academia Espanola'),
(2, 'Edicion Escolar', '1950-06-01', 'Secker & Warburg'),
(3, 'Edicion de Bolsillo', '1998-12-1', 'Salamandra'),
(6, 'Version Original', '1943-4-6', 'Reynal & Hitchcock');

-- miembros de la bivlioteca
insert into Miembro (nombre, email, fecha_registro) values
('Iker Dahinten', 'iker@mail.com', '2026-01-15'),
('Sofia de la Cruz', 'sofia.cruz@mail.com', '2026-02-20'),
('Pablo Navaz', 'pablito@mail.com', '2026-03-10'),
('Carlos Mendoza', 'carlitos.m@mail.com', '2026-5-5');

-- transacciones de prestamos y devoluciones
insert into Transaccion (id_libro, id_miembro, tipo_transaccion, fecha_transaccion, estado_transaccion) values
(2, 1, 'Prestamo', '2026-06-01', 'Activo'),
(1, 2, 'Prestamo', '2026-05-10', 'Concluido'),
(3, 3, 'Prestamo', '2026-06-05', 'Activo'),
(5, 4, 'Prestamo', '2026-05-20', 'Retrasado');