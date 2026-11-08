insert into Cliente values 
	(1, 'Peter', 'Griffin', 'peter2314@gmail.com', '3245167790', '2333119954', '2026-01-05'),
	(2, 'Lisa', 'Simpson', 'Lisa112@hotmail.com', '3114488765', '1003465321', '2026-02-15'),
    (3, 'Gwen', 'Stacy', 'GwenS567@outlook.com', '3109856771', '1098678213', '2026-02-23'),
    (4, 'Lois', 'Lane', 'LaneL3321@gmail.com', '3156787990', '1005123456', '2026-06-30'),
    (5, 'Clark', 'Kent', 'ClarkK@hotmail.com', '3215643879', '1005432890', '2026-09-10');

insert into Beneficio (Descripcion) values
    ('Acceso a sala de pesas y zona de cardio en horario regular'),
    ('Valoración física inicial: peso, grasa corporal y medidas'),
    ('Plan de entrenamiento personalizado con seguimiento mensual'),
    ('Uso de vestuarios, duchas y casilleros'),
    ('Acceso a clases dirigidas grupales'),
    ('Congelación de la membresía hasta por 15 días'),
    ('Pase de invitado gratis una vez al mes'),
    ('Asesoría nutricional básica con un especialista');
    
insert into Especialidad (Nombre) values
    ('Musculación e hipertrofia'),
    ('Entrenamiento funcional'),
    ('Yoga y flexibilidad'),
    ('Ciclismo indoor'),
    ('Baile fitness'),
    ('Cardio y pérdida de peso');
    
insert into Plan (Nombre, Duracion, Costo) values
    ('Básico', '1 mes', '60000'),
    ('Estándar', '3 meses', '165000'),
    ('Premium', '6 meses', '300000'),
    ('Estudiante', '1 mes', '45000'),
    ('Anual', '12 meses', '540000');
    
insert into Clase (Nombre, Aforo, Nivel, Descripcion) values
    ('Spinning', 20, 'Intermedio', 'Ciclismo indoor de alta intensidad con música'),
    ('Yoga', 15, 'Básico', 'Posturas, respiración y estiramientos para ganar flexibilidad'),
    ('Funcional', 25, 'Intermedio', 'Circuito de fuerza y movilidad con peso corporal y mancuernas'),
    ('Zumba', 30, 'Básico', 'Baile aeróbico con ritmos latinos para quemar calorías'),
    ('HIIT', 18, 'Avanzado', 'Intervalos de alta intensidad para mejorar resistencia y fuerza'),
    ('Pilates', 12, 'Básico', 'Fortalecimiento del core y control postural');
    
insert into Entrenador (Nombre, Apellido, Correo, Telefono) values
    ('Camila', 'Torres', 'camila.torres@gmail.com', '3001112233'),
    ('Andrés', 'Mejía', 'andres.mejia@gmail.com', '3002223344'),
    ('Valentina', 'Ruiz', 'valentina.ruiz@gmail.com', '3003334455'),
    ('Sebastián', 'Quintero', 'sebastian.quintero@gmail.com','3004445566'),
    ('Laura', 'Gómez', 'laura.gomez@gmail.com', '3005556677');
    
insert into Plan_Beneficio (Id_plan, Id_beneficio) values
    (1, 1), (1, 4),
    (2, 1), (2, 2), (2, 4), (2, 5), (2, 6),
    (3, 1), (3, 2), (3, 3), (3, 4), (3, 5), (3, 6), (3, 7), (3, 8),
    (4, 1), (4, 2), (4, 4), (4, 5),
    (5, 1), (5, 2), (5, 3), (5, 4), (5, 5), (5, 6), (5, 7), (5, 8);
    
insert into Plan_Clase (Id_plan, Id_clase) values
    (2, 2), (2, 3), (2, 4),
    (3, 1), (3, 2), (3, 3), (3, 4), (3, 5), (3, 6),
    (4, 2), (4, 4), (4, 6),
    (5, 1), (5, 2), (5, 3), (5, 4), (5, 5), (5, 6);
    
insert into Entrenador_Especialidad (Id_entrenador, Id_especialidad) values
    (1, 3),
    (2, 1), (2, 2),
    (3, 4), (3, 6),
    (4, 5), (4, 2),
    (5, 1), (5, 6);
    
insert into Horario (DiaSemana, HoraInicio, HoraFinal, Id_clase, Id_entrenador) values
    ('Lunes', '2026-11-09 06:00:00', '2026-11-09 07:00:00', 1, 3),
    ('Miércoles', '2026-11-11 06:00:00', '2026-11-11 07:00:00', 1, 3),
    ('Martes', '2026-11-10 07:00:00', '2026-11-10 08:00:00', 2, 1),
    ('Jueves', '2026-11-12 07:00:00', '2026-11-12 08:00:00', 2, 1),
    ('Sábado', '2026-11-14 09:00:00', '2026-11-14 10:00:00', 2, 1),
    ('Lunes', '2026-11-09 18:00:00', '2026-11-09 19:00:00', 3, 2),
    ('Viernes', '2026-11-13 18:00:00', '2026-11-13 19:00:00', 3, 2),
    ('Martes', '2026-11-10 19:00:00', '2026-11-10 20:00:00', 4, 4),
    ('Jueves', '2026-11-12 19:00:00', '2026-11-12 20:00:00', 4, 4),
    ('Miércoles', '2026-11-11 19:00:00', '2026-11-11 20:00:00', 5, 2),
    ('Sábado', '2026-11-14 08:00:00', '2026-11-14 09:00:00', 5, 4),
    ('Viernes', '2026-11-13 07:00:00', '2026-11-13 08:00:00', 6, 1),
    ('Viernes', '2026-11-13 06:00:00', '2026-11-13 07:00:00', 5, 5);
    
insert into Membresia (FechaInicio, Id_cliente, Id_plan) values
    ('2026-09-01', 1, 2),
    ('2026-10-05', 2, 3),
    ('2026-10-15', 3, 1),
    ('2026-10-20', 4, 4),
    ('2026-11-02', 5, 2);
    
insert into Asistencia (HoraEntrada, HoraSalida, Id_cliente) values
    ('2026-11-02 06:05:00', '2026-11-02 07:10:00', 1),
    ('2026-11-04 06:00:00', '2026-11-04 07:05:00', 1),
    ('2026-11-06 06:10:00', '2026-11-06 07:00:00', 1),
    ('2026-11-02 18:00:00', '2026-11-02 19:30:00', 2),
    ('2026-11-05 07:00:00', '2026-11-05 08:00:00', 2),
    ('2026-11-03 17:30:00', '2026-11-03 18:45:00', 3),
    ('2026-11-03 19:00:00', '2026-11-03 20:05:00', 4),
    ('2026-11-06 18:00:00', '2026-11-06 19:00:00', 4),
    ('2026-11-04 08:00:00', '2026-11-04 09:10:00', 5),
    ('2026-11-07 09:00:00', '2026-11-07 10:00:00', 5);

