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



function enviar() {
    if (validar()) {
        //Se envia la información por ajax
        $.ajax({
            url: 'ConductorServlet',
            data: {
                accion: $("#conductorAction").val(),
                cedula: $("#cedula").val(),
                vehiculo: $("#vehiculo").val(),
                fechaNacimiento: $("#dpFechaNacimiento").data('date'),
                 fechaVencimientoLicencia: $("#dpFechaVencimientoLicencia").data('date'),
                
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