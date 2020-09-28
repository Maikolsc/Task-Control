//crear 
alert('listar');
var contador=1;
//fin
var listar_ot= function(){
    $.fn.dataTable.ext.errMode = 'throw';
    table = $('#myTable').DataTable({
        retrieve: true,
        "scrollX": true,
        "destroy": true,
        "language":idioma_esp ,
        "ajax":{
                      "method":"POST",
                      "url":"../controlador/lista_ot.php"
        },
        "columns":[
            //implementar   
            { "data": "id",
            "fnCreatedCell": function (nTd, sData, oData, iRow, iCol) {
                    $(nTd).html(contador);
                    contador++;
            }
            },
            //fin
            
            {"data":"id_persona"}, 
            {"data":"id_empresa"},
          
            {"data":"id_prioridad"}
            
        ],
        columnDefs: [
          {
              targets: [ 0, 1, 2 ],
              className: 'mdl-data-table__cell--non-numeric'
          }
      ]
  
      });
      $('#myTable tbody').on('click', 'tr', function () {
        var data = table.row( this ).data();
        
        //alert( 'You clicked on '+data[7]+'\'s row' );
        $('#id').val(data[0]);
       

        $('#id_empresa').val(data[1]);
        
        
        $('#id_persona').val(data[2]);
        
        
        $('#id_prioridad').val(data[3]);
        
        
        
        
     
        $('#btnregistrar').attr("disabled", true);
        $('#btnmodificar').attr("disabled", false);
        $('#btneliminar').attr("disabled", false);
    } );
    
    }
 function actualizar_tabla(){
    contador=1;
	var table = $('#myTable').DataTable();

    table.ajax.reload();

 }

        

