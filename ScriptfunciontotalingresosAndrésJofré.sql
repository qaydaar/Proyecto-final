use proyecto_andres_jofre;

DELIMITER //
CREATE FUNCTION Total_ingresos(ingreso_id INT)
  RETURNS INT
  deterministic
  BEGIN
    DECLARE Ingreso_total INT;
    SET Ingreso_total = (
      SELECT SUM(cantidad)
      FROM ingreso
      WHERE id_ingreso = ingreso_id
    );
    RETURN Ingreso_total;
  END
  //