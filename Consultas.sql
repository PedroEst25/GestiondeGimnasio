SELECT c.Id_cliente, CONCAT(c.Nombre, ' ', c.Apellido) AS Cliente, p.Nombre AS Plan, p.Duracion, m.FechaInicio
FROM Cliente c
JOIN Membresia m ON m.Id_cliente = c.Id_cliente
JOIN Plan p ON p.Id_plan = m.Id_plan
ORDER BY m.FechaInicio;

SELECT p.Nombre AS Plan, COUNT(m.Id_membresia) AS Total_clientes
FROM Plan p
LEFT JOIN Membresia m ON m.Id_plan = p.Id_plan
GROUP BY p.Id_plan, p.Nombre
ORDER BY Total_clientes DESC, p.Nombre;

SELECT p.Nombre AS Plan, COUNT(b.Id_beneficio) AS Total_beneficios, GROUP_CONCAT(b.Descripcion ORDER BY b.Id_beneficio SEPARATOR ' | ') AS Beneficios
FROM Plan p
JOIN Plan_Beneficio pb ON pb.Id_plan = p.Id_plan
JOIN Beneficio b ON b.Id_beneficio = pb.Id_beneficio
GROUP BY p.Id_plan, p.Nombre
ORDER BY Total_beneficios DESC;

SELECT CONCAT(c.Nombre, ' ', c.Apellido) AS Cliente, p.Nombre  AS Plan, cl.Nombre AS Clase, cl.Nivel, cl.Aforo
FROM Cliente c
JOIN Membresia m  ON m.Id_cliente = c.Id_cliente
JOIN Plan p ON p.Id_plan = m.Id_plan
JOIN Plan_Clase pc ON pc.Id_plan = p.Id_plan
JOIN Clase cl ON cl.Id_clase = pc.Id_clase
WHERE c.Nombre = 'Peter' AND c.Apellido = 'Griffin'
ORDER BY cl.Nombre;

SELECT h.DiaSemana, h.HoraInicio, h.HoraFinal, cl.Nombre AS Clase, CONCAT(e.Nombre, ' ', e.Apellido) AS Entrenador
FROM Horario h
JOIN Clase cl ON cl.Id_clase = h.Id_clase
JOIN Entrenador e ON e.Id_entrenador = h.Id_entrenador
ORDER BY h.HoraInicio;

SELECT e.Id_entrenador, CONCAT(e.Nombre, ' ', e.Apellido) AS Entrenador, es.Nombre AS Especialidad
FROM Entrenador e
JOIN Entrenador_Especialidad ee ON ee.Id_entrenador = e.Id_entrenador
JOIN Especialidad es ON es.Id_especialidad = ee.Id_especialidad
ORDER BY e.Id_entrenador, es.Nombre;

SELECT CONCAT(e.Nombre, ' ', e.Apellido) AS Entrenador, COUNT(*) AS Clases_por_semana
FROM Entrenador e
JOIN Horario h ON h.Id_entrenador = e.Id_entrenador
GROUP BY e.Id_entrenador, e.Nombre, e.Apellido
ORDER BY Clases_por_semana DESC;

SELECT c.Id_cliente, CONCAT(c.Nombre, ' ', c.Apellido) AS Cliente, COUNT(a.Id_asistencia) AS Total_asistencias
FROM Cliente c
JOIN Asistencia a ON a.Id_cliente = c.Id_cliente
GROUP BY c.Id_cliente, c.Nombre, c.Apellido
ORDER BY Total_asistencias DESC;

SELECT p.Nombre AS Plan, COUNT(m.Id_membresia) AS Membresias_vendidas, SUM(p.Costo) AS Ingresos_totales
FROM Plan p
JOIN Membresia m ON m.Id_plan = p.Id_plan
GROUP BY p.Id_plan, p.Nombre
ORDER BY Ingresos_totales DESC;

SELECT c.Id_cliente, CONCAT(c.Nombre, ' ', c.Apellido) AS Cliente, p.Nombre AS Plan
FROM Cliente c
JOIN Membresia m ON m.Id_cliente = c.Id_cliente
JOIN Plan p      ON p.Id_plan = m.Id_plan
WHERE p.Id_plan IN (SELECT pc.Id_plan
                      FROM Plan_Clase pc
                      JOIN Clase cl ON cl.Id_clase = pc.Id_clase
                     WHERE cl.Nombre = 'Yoga')
ORDER BY c.Id_cliente;