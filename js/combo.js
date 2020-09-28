$(document).ready(function(){
    //alert("combo");

$('#id_empresa').val(1);
recargarlista1();
$('#id_empresa').change(function(){
    recargarlista1();
})

    $('#id_tiposervicio').val(1);
    recargarlista();
    $('#id_tiposervicio').change(function(){
        recargarlista();
    })
    function recargarlista(){
        $.ajax({
            type:"POST",
            url:"../controlador/getservicio.php",
            data:"tiposervicio=" +$('#id_tiposervicio').val(),
            success:function(r){
                $('#id_servicio').html(r);
            }
        });
    }


    function recargarlista1(){
        $.ajax({
            type:"POST",
            url:"../controlador/getPersona.php",
            data:"empresa="+$('#id_empresa').val(),
            success:function(m){
                $('#id_persona').html(m);
            }
        });
    }
});