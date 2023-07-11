use proyecto_andres_jofre;
create view Residuos_Corrosivos as
select id_residuo,nombre_r,peligrosidad
from residuo
where peligrosidad = 8;
create view Residuos_Toxicos as
select id_residuo,nombre_r,peligrosidad
from residuo
where peligrosidad like 6;
create view Residuos_Oxidantes as
select id_residuo,nombre_r,peligrosidad
from residuo
where peligrosidad like 5;
create view Clientes_Region_Metropolitana as
select nombre_e,ubicación,contacto
from empresa
where ubicación = 'Santiago' or ubicación = 'Los Andes';
create view Clientes_Octava_Region as
select nombre_e,ubicación,contacto
from empresa
where ubicación = 'BioBio' or ubicación = 'Concepción';



