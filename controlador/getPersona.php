<?php
$conexion=mysqli_connect('localhost','root','','bd_otsu');
 //include('../modelo/conexion.php');
 $empresa=$_POST['empresa'];

 $query="SELECT id,id_empresa,concat(nombre,' ',apellido) as nombre,created_at,updated_at 
 FROM tbl_persona 
 WHERE id_empresa='$empresa'";

$result=mysqli_query($conexion,$query);
$cadena="<label>SELECT 2 persona</LABEL>
         <SELECT id='id_persona' name='id_persona'>";
  while($ver=mysqli_fetch_row($result)){
     $cadena=$cadena.'<option value='.$ver[0].'>'.utf8_encode($ver[2]).'</option>';

 }
 echo $cadena."</select>";
?>