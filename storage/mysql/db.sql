-- creando la base de datos de la bivlioteca
create database if not exists biblioteca_campus;
use biblioteca_campus;

create table Libro (
    id_libro int auto_increment primary key,
    titulo varchar(150) not null,
    genero varchar(50),
    isbn varchar(20) unique,
    disponibilidad enum('Disponible', 'Prestado', 'En Reparacion') default 'Disponible'
);

create table Autor (
    id_autor int auto_increment primary key,
    nombre_autor varchar(100) not null
);

-- tabla intermedia para conectar libros y autores
create table LibroAutor (
    id_libro int,
    id_autor int,
    primary key (id_libro, id_autor),
    foreign key (id_libro) references Libro(id_libro) on delete cascade,
    foreign key (id_autor) references Autor(id_autor) on delete cascade
);

create table Publicacion (
    id_publicacion int auto_increment primary key,
    id_libro int,
    edicion varchar(50),
    fecha_publicacion date,
    editor varchar(100),
    foreign key (id_libro) references Libro(id_libro)
);

create table Miembro (
    id_miembro int auto_increment primary key,
    nombre varchar(100) not null,
    email varchar(100),
    fecha_registro date
);

create table Transaccion (
    id_transaccion int auto_increment primary key,
    id_libro int,
    id_miembro int,
    tipo_transaccion enum('Prestamo', 'Devolucion') not null,
    fecha_transaccion date,
    estado_transaccion enum('Activo', 'Concluido', 'Retrasado') default 'Activo',
    foreign key (id_libro) references Libro(id_libro),
    foreign key (id_miembro) references Miembro(id_miembro)
);