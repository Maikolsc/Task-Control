<?php
error_reporting(E_ALL & ~E_NOTICE);
//echo $respuesta;
$id=$_POST['id'];

$persona=$_POST['id_persona'];
$empresa=$_POST['id_empresa'];
$prioridad=$_POST['id_prioridad'];


$servicio=$_POST['id_servicio'];
$solicitud=$_POST['solicitud'];

$fecha_solicitud=$_POST['fecha_so'];
$fecha_asignacion=$_POST['fecha_asig'];
$fecha_final=$_POST['fecha_fin'];
$hora_inicio=$_POST['hinicio'];
$hora_finalizacion=$_POST['hfinal'];



$crud=$_POST['crud'];
$opcion=$_POST['opcion'];

if($crud=='c')
{
    if(insertarot($persona,$prioridad,$servicio,
    $solicitud,$fecha_solicitud,$fecha_asignacion
    ,$fecha_final,$hora_inicio,$hora_finalizacion)==true)
    {
        echo mostrardatos();
    }
    else
    {
       echo '<h2>Alerta no se guardo</h2>';
    }
   

}
elseif($crud=='m')
{
    echo mostrardatos();
}
elseif ($opcion=='informacion') {
    echo ver_registro($id);
}
elseif($crud=='u')
if(editarOT($id,$empresa,$persona,$prioridad,$servicio,
    $solicitud,$fecha_solicitud,$fecha_asignacion
    ,$fecha_final,$hora_inicio,$hora_finalizacion)==true)
{
 echo mostrardatos();   

}
else{
    echo '<h2>Alerta no se edito</h2>';
}

function mostrardatos(){
    require('../modelo/conexion.php');
    $respuesta="
    <table class='table table-striped table-bordered'>
     <thead>
       <tr>
       <td>ID</td>
       <td>NOMBRE</td>
       <td>APELLIDO</td>
       <td>EMPRESA</td>      
       <td>SERVICIO</td>
       
       <td>FECHA_SOLICITADA</td>
    
       <td>OPCIONES</td>
       
       </tr>
     </thead>

     <tbody>

    ";
$query="SELECT o.id,p.nombre as Nombre,p.apellido as Apellido,e.nombre as Empresa,se.nombre as Servicio,o.solicitud as Solicitud,o.fecha_solicitud as Fecha_so,o.fecha_asig as Fecha_asig,o.fecha_fin as Fecha_fin
FROM tbl_ot o,tbl_persona p,tbl_empresa e,tbl_servicio se
WHERE o.estado=1 and o.id_persona=p.id and p.id_empresa=e.id and o.id_servicio=se.id  order by o.id asc";
$res = $mysqli->query($query);
while($object=mysqli_fetch_assoc($res)){
    $respuesta=$respuesta."<tr>
    <td>".$object['id']."</td>
    <td>".$object['Nombre']."</td>
    <td>".$object['Apellido']."</td>
    <td>".$object['Empresa']."</td>
    <td>".$object['Servicio']."</td>
  
    <td>".$object['Fecha_so']."</td>
    

    <td>  
    <a data-toggle='modal' data-target='#modalver' href='#' class='verInfo btn btn-info'  id='".$object['id']."'>VER </a>
    
    <a data-toggle='modal' data-target='#modaleditar' href'#' class='btn btn-success' id'".$object['id']."' 
    onclick =".'"'."modificar('".$object['id']."','".$object['id_empresa']."');".'"'.">Editar<a/>
    </td>

   
    
    
    </tr>";
}
$respuesta=$respuesta."
</tbody>
    </table>";
    return $respuesta;
    

}
function insertarot($persona,$prioridad,$servicio,
$solicitud,$fecha_solicitud,$fecha_asignacion
,$fecha_final,$hora_inicio,$hora_finalizacion)
{
    require('../modelo/conexion.php');
    $query="INSERT into tbl_ot (id_persona,id_prioridad,id_servicio,solicitud,fecha_solicitud,fecha_asig,fecha_fin,hinicio,hfinal) VALUES ('$persona','$prioridad','$servicio','$solicitud','$fecha_solicitud','$fecha_asignacion'
    ,'$fecha_final','$hora_inicio','$hora_finalizacion')";
    $resultado=mysqli_query($mysqli,$query);
        if($resultado==true){
            return true;
            
        }
        else
        {
            return false;
        }
}

function ver_registro($id)
{
    $componente='<table class="table table-bordered">';

    require('../modelo/conexion.php');
    $query="SELECT o.id,p.nombre as Nombre,p.apellido as Apellido,e.nombre as Empresa,se.nombre as Servicio,o.solicitud as Solicitud,o.fecha_solicitud as Fecha_so,o.fecha_asig as Fecha_asig,o.fecha_fin as Fecha_fin
    FROM tbl_ot o,tbl_persona p,tbl_empresa e,tbl_servicio se
    WHERE o.id_persona=p.id and p.id_empresa=e.id and o.estado='1' and o.id_servicio=se.id and o.id=$id order by id desc";
    // echo $query;
    $coleccion=$mysqli->query($query);
    while($object=mysqli_fetch_assoc($coleccion))
    {
        $componente=$componente.'
       

        <tr>
        <td><b>Solicitud: </b></td>
        <td>'.$object['Solicitud'].'</td>
        </tr>

        <tr>
        <td><b>FECHA ASIGNADA: </b></td>
        <td>'.$object['Fecha_asig'].'</td>
        </tr>
        <tr>
        <td><b>FECHA FINALIZADA: </b></td>
        <td>'.$object['Fecha_fin'].'</td>

        </tr>
    
        ';
    }
    $componente=$componente.'</table>';
    return $componente;

}

function editarOT($id,$id_empresa){
    require ('../modelo/conexion.php');
    $query ="UPDATE tbl_ot set id_empresa='$id_empresa' where id=$id";
    $resultado=mysqli_query($mysqli,$query);
    if($resultado)
    {
        return true;
        
}else
{
   return false;
}
}

?>