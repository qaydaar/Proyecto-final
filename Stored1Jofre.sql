#stored procedures
use proyecto_andres_jofre;
Delimiter //
Create procedure Agregar_ingreso (in p_id_ingreso int, in p_id_residuo int, in p_id_empresa int, in p_cantidad int)
BEGIN
	insert into ingreso (id_ingreso, id_residuo, id_empresa, cantidad)
    values (p_id_ingreso, p_id_residuo, p_id_empresa, p_cantidad);
end
//

call Agregar_ingreso(6, 2, 4, 200);
#Agrega una nueva fila a los ingresos, que es la que mas se mueve en el dia. 
#Como no tiene la tabla el autoincrement para la PK agregue el id manualmente en el ejemplo
#estoy trabajando para cambiar la creación de tablas, de manera que el stored procedure no pida ese dato. Espero cambiarlo para la preentrega