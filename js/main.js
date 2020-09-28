$(document).ready(function () {

    cargarpersonas();
    cargarempresas();
    cargarservicio();
    cargarprioridad();
    cargartiposervicio();
    //alert("ingrese js");
    //echo("hola");

$("#m_ot").click(function(){
    $.ajax({
        url:'../controlador/controlador_ot.php',
        method:'POST',
        data:{
            crud:'m'
        },
        success:function(data){
            $("#mostrarDatos").html(data);
        }
    })

})






$("#registrar_OT").on("submit",function(event){
    event.preventDefault();
     $.ajax({
         url:"../controlador/controlador_ot.php",
         method:"POST",
         data:$("#registrar_OT").serialize(),
         success:function(data){
             $("#mostrarDatos").html(data);
             toastr.success('registrado correctamente','Respuesta')
         }
     })
 })

 $("modificar_OT").on("submit",function(event){
     event.preventDefault();
     $.ajax({
         url:"../controlador/controlador_ot.php",
         method:"POST",
         data:$("#modificar_OT").serialize(),
         success:function(data){
             $("#mostrarDatos").html(data);
             toastr.success('Persona Modoficada','Respuesta')
         }
     })

 })

 $(document).on('click', '.verInfo', function(){
    var id=$(this).attr('id'); 
    $.ajax({
         url:'../controlador/controlador_ot.php',
         method:'POST',
         data:{opcion:'informacion',id:id},
         success:function(data){
             $("#info").html(data);
         }
     })

    
})


});

function cargarpersonas(){
    //alert('cargar persona');
    $.getJSON('../controlador/getPersona.php',function(json){
        $.each(json, function(m,obj){
            $('#id_persona').append($('<option>').text(obj.nombre).attr('value',obj.id));
           
        });
    });
}

function cargarempresas(){
    $.getJSON('../controlador/getempresa.php',function(json){
        $.each(json, function(p,obj){
            $('#id_empresa').append($('<option>').text(obj.nombre).attr('value',obj.id));
            //$('#ciudad2').append($('<option>').text(obj.nombre).attr('value',obj.id));
        });
    });
}

function cargarservicio(){
    $.getJSON('../controlador/getservicio.php',function(json){
        $.each(json,function(s,obj){
           $('#id_servicio').append($('<option>').text(obj.nombre).attr('value',obj.id));
        });
    });
}
function cargarprioridad(){
    $.getJSON('../controlador/get_prioridad.php',function(json){
        $.each(json,function(m,obj){
            $('#id_prioridad').append($('<option>').text(obj.nombre).attr('value',obj.id));
        });

    });
}
function cargartiposervicio(){
    $.getJSON('../controlador/get_tiposervicio.php',function(json){
        $.each(json,function(s,obj){
            $('#id_tiposervicio').append($('<option>').text(obj.nombre).attr('value',obj.id));
        });

    });
}

function modificar(id,id_empresa){
   $('#id').val(id);
   $('#id_empresa2').val(id_empresa);
}
