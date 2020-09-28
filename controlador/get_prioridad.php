<?php
  include('../modelo/conexion.php');
  $query="SELECT id,nombre,estado
  FROM tbl_prioridad
  WHERE estado=1";

  $res=$mysqli->query($query);
  while($object=mysqli_fetch_assoc($res)){
      $arreglo[]=array_map("utf8_encode",$object);

  };
  echo json_encode($arreglo);
?>