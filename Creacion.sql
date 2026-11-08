CREATE TABLE Beneficio(
	Id_beneficio int auto_increment,
    Descripcion varchar(300),
    primary key(Id_beneficio)
);

CREATE TABLE Especialidad(
	Id_especialidad int auto_increment,
    Nombre varchar(80) NOT NULL,
    primary key(Id_especialidad)
);

CREATE TABLE Cliente(
	Id_cliente int auto_increment,
    Nombre varchar(80),
    Apellido varchar(80),
    Correo varchar(50),
    Telefono varchar(15),
    Documento varchar(40),
    FechaRegistro date,
    primary key(Id_cliente)
);

CREATE TABLE Plan(
	Id_plan int auto_increment,
    Nombre varchar(80),
    Duracion varchar(30),
    Costo varchar(30),
    primary key(Id_plan)
);

CREATE TABLE Clase(
	Id_clase int auto_increment,
    Nombre varchar(80),
    Aforo int,
    Nivel varchar(10),
    Descripcion varchar(80),
    primary key(Id_clase)
);

CREATE TABLE Entrenador(
	Id_entrenador int auto_increment,
    Nombre varchar(80),
    Apellido varchar(80),
    Correo varchar(40),
    Telefono varchar(15),
    primary key(Id_entrenador)
);

CREATE TABLE Asistencia(
	Id_asistencia int auto_increment,
    HoraEntrada timestamp,
    HoraSalida timestamp,
    Id_cliente int,
    primary key(Id_asistencia, HoraEntrada, Id_cliente),
    foreign key(Id_cliente) REFERENCES Cliente(Id_cliente)
);

CREATE TABLE Membresia(
	Id_membresia int auto_increment,
    FechaInicio date,
    Id_cliente int,
    Id_plan int,
    primary key(Id_membresia),
    foreign key(Id_cliente) REFERENCES Cliente(Id_cliente),
    foreign key(Id_plan) REFERENCES Plan(Id_plan)
);

CREATE TABLE Plan_Beneficio(
	Id_plan int,
    Id_beneficio int,
    primary key(Id_plan, Id_beneficio),
    foreign key(Id_plan) REFERENCES Plan(Id_plan),
    foreign key(Id_beneficio) REFERENCES Beneficio(Id_beneficio)
);

CREATE TABLE Plan_Clase(
	Id_plan int,
    Id_clase int,
    primary key(Id_plan, Id_clase),
    foreign key(Id_plan) REFERENCES Plan(Id_plan),
    foreign key(Id_clase) REFERENCES Clase(Id_clase)
);

CREATE TABLE Horario(
	DiaSemana varchar(20),
    HoraInicio timestamp,
    HoraFinal timestamp,
    Id_clase int,
    Id_entrenador int,
    primary key(DiaSemana, HoraInicio, Id_clase, Id_entrenador),
    foreign key(Id_clase) REFERENCES Clase(Id_clase),
    foreign key(Id_entrenador) REFERENCES Entrenador(Id_entrenador)
);

CREATE TABLE Entrenador_Especialidad(
	Id_entrenador int,
    Id_especialidad int,
    primary key(Id_entrenador, Id_especialidad),
    foreign key(Id_entrenador) REFERENCES Entrenador(Id_entrenador),
    foreign key(Id_especialidad) REFERENCES Especialidad(Id_especialidad)
);
