/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(function () {
      $("#enviar").click(function () {
        enviar();
    });
    
    /*
    $('#buscarPorPlaca').click(function(){
        
        var N = document.getElementById("email").value;
        consultarVehiculoByID(N);
        //btnBuscar(N);
         //mostrarModal("myModal", "ASSAS..", "Dude wtfs");
    });*/

});


$(document).ready(function () {
    consultarVehiculos();
});

function consultarVehiculos() {
    mostrarModal("myModal", "Espere por favor..", "Consultando la información de vehiculos en la base de datos");
    //Se envia la información por ajax
    $.ajax({
        url: 'VehiculoServlet',
        data: {
            accion: "consultarVehiculo"
        },
        error: function () { //si existe un error en la respuesta del ajax
            alert("Se presento un error a la hora de cargar la información de las vehiculos en la base de datos");
        },
        success: function (data) { //si todo esta correcto en la respuesta del ajax, la respuesta queda en el data
            dibujarTabla(data);
            // se oculta el modal esta funcion se encuentra en el utils.js
            ocultarModal("myModal");
        },
        type: 'POST',  //tipo
        dataType: "json"
    });
}

function dibujarTabla(dataJson) {
    //limpia la información que tiene la tabla
    $("#tablaVehiculos").html(""); 
    
    //muestra el enzabezado de la tabla
    var head = $("<thead />");
    var row = $("<tr />");
    head.append(row);
    $("#tablaVehiculos").append(head); 
    row.append($("<th><b>ID VEHICULO</b></th>"));
    row.append($("<th><b>UBICACION ACTUAL</b></th>"));
    row.append($("<th><b>ANNO</b></th>"));
    row.append($("<th><b>MODELO</b></th>"));
    row.append($("<th><b>PLACA</b></th>"));
    row.append($("<th><b>COLOR</b></th>"));
    row.append($("<th><b>ACCIÓN</th>"));
    
    //carga la tabla con el json devuelto
    if(dataJson.length<5){
        for (var i = 0; i < dataJson.length; i++) {
        dibujarFila(dataJson[i]);
        }
    }
    else{
     for (var i = 0; i < 5; i++) {
         dibujarFila(dataJson[i]);
     }
    }
}
function dibujarFila(rowData) {
    //Cuando dibuja la tabla en cada boton se le agrega la funcionalidad de cargar o eliminar la informacion
    //de una persona
    
    //VER SET CONDUCTORS
    
    var row = $("<tr />");
    $("#tablaVehiculos").append(row); 
    row.append($("<td>" + rowData.idVehiculo + "</td>"));
    row.append($("<td>" + rowData.ubicacionActual + "</td>"));
    row.append($("<td>" + rowData.ano + "</td>"));
    row.append($("<td>" + rowData.modelo + "</td>"));
    row.append($("<td>" + rowData.placa + "</td>"));
    row.append($("<td>" + rowData.color + "</td>"));
    row.append($('<td><button type="button" class="btn btn-default btn-xs" aria-label="Left Align" onclick="consultarVehiculoByID('+rowData.idVehiculo+');">'+
                        '<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>'+
                    '</button>'+
                    '<button type="button" class="btn btn-default btn-xs" aria-label="Left Align" onclick="eliminarVehiculo('+rowData.idVehiculo+');">'+
                        '<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>'+
                    '</button></td>'));
}


function enviar() {
    if (validar()) {
        //Se envia la información por ajax
        $.ajax({
            url: 'VehiculoServlet',
            data: {
                accion: $("#vehiculoAction").val(),
                idVehiculo: $("#idVehiculo").val(),
                ubicacionActual: $("#ubicacionActual").val(),
                ano: $("#anno").val(),
                modelo: $("#modelo").val(),
                placa: $("#placa").val(),
                color: $("#color").val(),
                estado: $("#estado").val()
              //conductors: null
                
            },
            error: function () { //si existe un error en la respuesta del ajax
                mostrarMensaje("alert alert-danger", "Se genero un error, contacte al administrador (Error del ajaxLOL)", "Errory!");
            },
            success: function (data) { //si todo esta correcto en la respuesta del ajax, la respuesta queda en el data
                var respuestaTxt = data.substring(2);
                var tipoRespuesta = data.substring(0, 2);
                if (tipoRespuesta === "C~") {
                    mostrarMensaje("alert alert-success", respuestaTxt, "Correcto!");
                    $("#myModalFormulario").modal("hide");
                    consultarPersonas();
                } else {
                    if (tipoRespuesta === "E~") {
                        mostrarMensaje("alert alert-danger", respuestaTxt, "Error1123!");
                    } else {
                        mostrarMensaje("alert alert-danger", "Se genero un error,ds contacte al administrador", "Errororo!");
                    }
                }

            },
            type: 'POST'
        });
    } else {
        mostrarMensaje("alert alert-danger", "Debe digitar los campos del formulario", "Erroreese!");
    }
}


function validar() {
    var validacion = true;

    //Elimina estilo de error en los css
    //notese que es sobre el grupo que contienen el input
    $("#groupIDVehiculo").removeClass("has-error");
    $("#groupUbicacionActual").removeClass("has-error");
    $("#groupAnno").removeClass("has-error");
    $("#groupModelo").removeClass("has-error");
     $("#groupPlaca").removeClass("has-error");
    $("#groupColor").removeClass("has-error");
    
    

    //valida cada uno de los campos del formulario
    //Nota: Solo si fueron digitados
    if ($("#idVehiculo").val() === "") {
        $("#groupIDVehiculo").addClass("has-error");
        validacion = false;
    }
    if ($("#ubicacionActual").val() === "") {
        $("#groupUbicacionActual").addClass("has-error");
        validacion = false;
    }
    if ($("#anno").val() === "") {
        $("#groupAnno").addClass("has-error");
        validacion = false;
    }
    if ($("#modelo").val() === "") {
        $("#groupModelo").addClass("has-error");
        validacion = false;
    }
    if ($("#placa").val() === "") {
        $("#groupPlaca").addClass("has-error");
        validacion = false;
    }
    if ($("#color").val() === "") {
        $("#groupColor").addClass("has-error");
        validacion = false;
    }
   
   

    return validacion;
}



function mostrarMensaje(classCss, msg, neg) {
    //se le eliminan los estilos al mensaje
    $("#mesajeResult").removeClass();

    //se setean los estilos
    $("#mesajeResult").addClass(classCss);

    //se muestra la capa del mensaje con los parametros del metodo
    $("#mesajeResult").fadeIn("slow");
    $("#mesajeResultNeg").html(neg);
    $("#mesajeResultText").html(msg);
    $("#mesajeResultText").html(msg);
}

function limpiarForm() {
    //setea el focus del formulario
    $('#idVehiculo').focus();
    $("#idVehiculo").removeAttr("readonly"); //elimina el atributo de solo lectura
    
    //se cambia la accion por agregarPersona
    $("#vehiculoAction").val("agregarVehiculo"); 

    //esconde el div del mensaje
    mostrarMensaje("hiddenDiv", "", "");

    //Resetear el formulario
    $('#formPersonas').trigger("reset");
}


function eliminarVehiculo(idVehiculo) {
    mostrarModal("myModal", "Espere por favor..", "Se esta eliminando a la persona seleccionada");
    //Se envia la información por ajax
    $.ajax({
        url: 'VehiculoServlet',
        data: {
            accion: "eliminarVehiculo",
            idVehiculo: idVehiculo
        },
        error: function () { //si existe un error en la respuesta del ajax
            cambiarMensajeModal("myModal","Resultado acción","Se presento un error, contactar al administador");
        },
        success: function (data) { //si todo esta correcto en la respuesta del ajax, la respuesta queda en el data
            // se cambia el mensaje del modal por la respuesta del ajax
            var respuestaTxt = data.substring(2);
            var tipoRespuesta = data.substring(0, 2);
            if (tipoRespuesta === "E~") {
                cambiarMensajeModal("myModal","Resultado acción",respuestaTxt);
            }else{
                setTimeout(consultarVehiculos, 3000);// hace una pausa y consulta la información de la base de datos
            }
        },
        type: 'POST',
        dataType: "text"
    });
}




/*
function consultarVehiculoByID(idVehiculo) {
    mostrarModal("myModal", "Espere por favor..", "Consultando el vehiculo seleccionado");
    //Se envia la información por ajax
    $.ajax({
        url: 'VehiculoServlet',
        data: {
            accion: "consultarVehiculoByID",
            idVehiculo: idVehiculo
        },
        error: function () { //si existe un error en la respuesta del ajax
            cambiarMensajeModal("myModal","Resultado acción","Se presento un error, contactar al administador");
        },
        success: function (data) { //si todo esta correcto en la respuesta del ajax, la respuesta queda en el data
            // se oculta el mensaje de espera
            ocultarModal("myModal");
            limpiarForm();
            //se muestra el formulario
            $("#myModalFormulario").modal();
            
            //************************************************************************
            //carga información de la persona en el formulario
            //************************************************************************
            //se indicar que la cédula es solo readOnly
            //$("#cedula").attr('readonly', 'readonly');
            
            //se modificar el hidden que indicar el tipo de accion que se esta realizando
            $("#vehiculoAction").val("modificarVehiculo"); 
    
            //se carga la información en el formulario
            $("#idVehiculo").val(data.idVehiculo);
            $("#ubicacionActual").val(data.ubicacionActual);
            $("#ano").val(data.anno);
            $("#modelo").val(data.modelo);
            $("#placa").val(data.placa);
            $("#color").val(data.color);
            $("#estado").val(data.estado);
        },
        type: 'POST',
        dataType: "json"
    });
}*/