<?php

include('../modelo/conexion.php');
$objeto = new conexion();
$conexion = $objeto->Conectar();

$id=(isset($_POST['id'])) ? $_POST['id']:'';


$idpersona =(isset($_POST['id_persona'])) ? $_POST['id_persona']:'';

$idprivacidad =(isset($_POST['id_privacidad'])) ? $_POST['id_privacidad']:'';

$opcion =(isset($_POST['opcion']))? $_POST['opcion'] : '';
//$contador=0;

switch($opcion){

  case 1:
    $consulta = "SELECT * FROM tbl_ot";
    $resultado = $conexion->prepare($consulta);
    $resultado->execute();
    $data=$resultado->fetchAll(PDO::FETCH_ASSOC);
  break;
}
print json_encode($data,JSON_UNESCAPED_UNICODE);
$conexion=null;
?>