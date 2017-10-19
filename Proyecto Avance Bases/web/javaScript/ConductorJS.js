/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(function () {
    //Genera el datapicker
    $('#dpFechaNacimiento').datetimepicker({
        weekStart: 1,
        todayBtn: 1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,
        minView: 2,
        forceParse: 0
    });
     $('#dpFechaVencimientoLicencia').datetimepicker({
        weekStart: 1,
        todayBtn: 1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,
        minView: 2,
        forceParse: 0
    });
     $("#enviar").click(function () {
        enviar();
    });

});



$(document).ready(function () {
    consultarConductores();
});

function consultarConductores() {
    mostrarModal("myModal", "Espere por favor..", "Consultando la información de vehiculos en la base de datos");
    //Se envia la información por ajax
    $.ajax({
        url: 'ConductorServlet',
        data: {
            accion: "consultarConductor"
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
    $("#tablaConductores").html(""); 
    
    //muestra el enzabezado de la tabla
    var head = $("<thead />");
    var row = $("<tr />");
    head.append(row);
    $("#tablaConductores").append(head); 
    row.append($("<th><b>CEDULA</b></th>"));
    row.append($("<th><b>FEC. NAC.</b></th>"));
    row.append($("<th><b>FEC. VENCIMIENTO LICENCIA</b></th>"));
    row.append($("<th><b>TIPO LICENCIA</b></th>"));
    row.append($("<th><b>ID VEHICULO</b></th>"));
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
    $("#tablaConductores").append(row); 
    row.append($("<td>" + rowData.cedula + "</td>"));
    row.append($("<td>" + rowData.fechaNacimiento + "</td>"));
    row.append($("<td>" + rowData.fechaVencimientoLicencia + "</td>"));
    row.append($("<td>" + rowData.tipoLicencia + "</td>"));
    row.append($("<td>" + rowData.vehiculo + "</td>"));
    row.append($('<td><button type="button" class="btn btn-default btn-xs" aria-label="Left Align" onclick="consultarConductorByID('+rowData.cedula+');">'+
                        '<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>'+
                    '</button>'+
                    '<button type="button" class="btn btn-default btn-xs" aria-label="Left Align" onclick="eliminarConductor('+rowData.cedula+');">'+
                        '<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>'+
                    '</button></td>'));
}


function enviar() {
    if (validar()) {
        //Se envia la información por ajax
        $.ajax({
            url: 'ConductorServlet',
            data: {
                accion: $("#conductorAction").val(),
                cedula: $("#cedula").val(),
                vehiculo: $("#vehiculo").val(),
                tipoLicencia: $("#tipoLicencia").val(),
                fechaNacimiento: $("#dpFechaNacimiento").data('date'),
                 fechaVencimientoLicencia: $("#dpFechaVencimientoLicencia").data('date')
                
            },
            error: function () { //si existe un error en la respuesta del ajax
                mostrarMensaje("alert alert-danger", "Se genero un error, contacte al administrador (Error del ajax)", "Error!");
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
                        mostrarMensaje("alert alert-danger", respuestaTxt, "Error!");
                    } else {
                        mostrarMensaje("alert alert-danger", "Se genero un error,ds contacte al administrador", "Error!");
                    }
                }

            },
            type: 'POST'
        });
    } else {
        mostrarMensaje("alert alert-danger", "Debe digitar los campos del formulario", "Error!");
    }
}


function validar() {
    var validacion = true;

    //Elimina estilo de error en los css
    //notese que es sobre el grupo que contienen el input
    $("#groupCedula").removeClass("has-error");
    $("#groupVehiculo").removeClass("has-error");
       $("#groupTipo").removeClass("has-error");
    $("#groupFechaNacimiento").removeClass("has-error");
    $("#groupFechaVencimientoLicencia").removeClass("has-error");
    

    //valida cada uno de los campos del formulario
    //Nota: Solo si fueron digitados
    if ($("#cedula").val() === "") {
        $("#groupCedula").addClass("has-error");
        validacion = false;
    }
    if ($("#vehiculo").val() === "") {
        $("#groupVehiculo").addClass("has-error");
        validacion = false;
    }
     if ($("#tipoLicencia").val() === "") {
        $("#groupTipo").addClass("has-error");
        validacion = false;
    }
   
    if ($("#dpFechaNacimiento").data('date') === "") {
        $("#groupFechaNacimiento").addClass("has-error");
        validacion = false;
    }
    if ($("#dpFechaVencimientoLicencia").data('date') === "") {
        $("#groupFechaVencimientoLicencia").addClass("has-error");
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