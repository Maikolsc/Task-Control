$(document).ready(function(){
    //actualizar_tabla();
    var opcion;
    opcion = 1;
    




   tablaUsuarios = $('#tablaUsuarios').DataTable({
        "ajax":{
            "url": "controlador/lista_ot.php",
            "method":'POST',
            
            "data":{opcion:opcion},
            "dataSrc":""
        },
        "columns":[
            {"data":"id"},
            {"data":"id_persona"},
            {"data":"id_privacidad"},
            {"defaultContent":""}
        ]
    });
});

