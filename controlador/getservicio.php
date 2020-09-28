<?php
$conexion=mysqli_connect('localhost','root','','bd_otsu');

$tiposervicio=$_POST['tiposervicio'];

$query="SELECT id,id_tiposer,nombre 
FROM tbl_servicio
WHERE id_tiposer='$tiposervicio'";

$result=mysqli_query($conexion,$query);
$cadena="<label>SELECT 2 servicio</LABEL>
         <SELECT id='id_servicio' name='id_servicio'>";
while ($ver=mysqli_fetch_row($result)){
    $cadena=$cadena.'<option  value='.$ver[0].'>'.utf8_encode($ver[2]).'</option>';
}

echo $cadena."</select>";
?>