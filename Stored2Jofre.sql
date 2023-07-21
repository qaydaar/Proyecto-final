use proyecto_andres_jofre;

DELIMITER //

CREATE PROCEDURE OrdenarAlmacenamiento(
  IN p_campo_orden VARCHAR(50),
  IN p_tipo_orden VARCHAR(10)
)
BEGIN
  SET @sql_query = CONCAT('SELECT * FROM almacenamiento ORDER BY ', p_campo_orden, ' ', p_tipo_orden);
  PREPARE stmt FROM @sql_query;
  EXECUTE stmt;
  DEALLOCATE PREPARE stmt;
END //

DELIMITER ;
#Para que funcionara tuve que cambiar el tipo de nr_bodega a int, no creo que esto se vea reflejado en el repositorio aún.
#Para la preentrega espero tener todo arreglado
 call OrdenarAlmacenamiento('nr_bodega', 'ASC');
 call OrdenarAlmacenamiento('cantidad_a', 'ASC');
 