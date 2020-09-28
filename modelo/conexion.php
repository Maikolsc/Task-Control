<?php
$mysqli = new mysqli("localhost","root","","bd_otsu");
if(mysqli_connect_errno())
{
     //echo "Conexion no realizada";
}
else{
     //echo "CONEXION EXITOSA.!!!";
}
?>