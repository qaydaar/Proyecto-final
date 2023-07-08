use proyecto_andres_jofre;
insert into empresa (id_empresa, nombre_e, contacto, ubicación)	
values ('1', 'ENAP', 'enapcontacto@enap.cl', 'concon'),
('2', 'ENAP', 'enapcontacto@enap.cl', 'BioBio'),
('3', 'Codelco', 'codelco@codelco.cl', 'Ventanas'),
('4', 'Oxiquim', 'oxiquim@oxiquim.cl', 'Concepción'),
('5', 'Química Rhenius', 'QuímicaR@qrhenius.cl', 'Santiago');
insert into residuo (id_residuo, nombre_r, descripcion, peligrosidad)
values ('1', 'soda agotada', 'soda caustica con sulfuros', '8'),
('2', 'acido clorhidrico', 'acido clorhidrico 80%', '8'),
('3', 'peroxido de hidrogeno','peroxido concentrado', '5'),
('4', 'arsenical', 'relaves con arsenico', '6'),
('5', 'lodo planta acido', 'tierra con acidos', '8');
insert into almacenamiento (id_almacenamiento, nr_bodega, cantidad_a, id_residuo)	
values ('1', '2', 100, '4'),
('2', '3', 70, '5'),
('3', '7', 120, '1'),
('4', '7', 80, '3'),
('5', '5', 20, '2');
insert into tratamiento (id_tratamiento, id_residuo, cantidad, materia_prima, cantidad2, id_almacenamiento, fecha, hora)
values ('1', '1', '30', 'peroxido', '10', '3', '2023-03-23', '10:30'),
('2', '2', '20', 'base debil', '20', '5', '2023-03-24', '11:00'),
('3', '3', '50', 'ninguno', '0', '4', '2023-03-04', '11:40'),
('4', '4', '50', 'cal viva', '40', '1', '2023-03-05', '8:00'),
('5', '5', '40', 'cal viva', '10', '2', '2023-03-05', '10:00');
insert into ingreso (id_ingreso, id_residuo, id_empresa, cantidad)
values ('1', '1', '1', '50'),
('2', '1', '2', '60'),
('3', '4', '3', '100'),
('4', '5', '4', '30'),
('5', '2', '5', '50');
insert into areas_de_tratamiento (id_area, id_tratamiento, id_residuo, id_almacenamiento)
values ('1','1','1', '3'),
('2','2','2','5'),
('3','3','3','4'),
('4','4','4','1'),
('5','5','5','2');





