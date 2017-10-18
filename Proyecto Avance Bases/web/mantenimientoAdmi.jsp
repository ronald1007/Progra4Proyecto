<%-- 
    Document   : mantenimientoAdmi
    Created on : Oct 14, 2017, 1:53:07 PM
    Author     : Bryan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Gestion</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js">
        <link href="css/datetimepicker.min.css" rel="stylesheet" type="text/css"/>
       
        
        <script src="javaScript/datetimepicker.js" type="text/javascript"></script>
       
        <script src="javaScript/ConductorJS.js" type="text/javascript"></script>
        
        <link rel="stylesheet" href="maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js">
        
        <script src="javaScript/js.js" type="text/javascript"></script>
        <link href="css/css.css" rel="stylesheet" type="text/css"/>
        
        <script src="javaScript/utils.js" type="text/javascript"></script>
    </head>
    <body id="CUERPO">
      
        
         <nav class="navbar navbar-inverse navbar-fixed-top bs-docs-nav">
  <div class="container-fluid">
    <div class="navbar-header">
        
      <a class="navbar-brand" href="../index.jsp">Juber</a>
        <a class="navbar-brand" ><img src="../imagenes/logo1.png" alt="Chicago" height="25" width="45" ></a> </div>
    <ul class="nav navbar-nav">
      
      <li ><a href="../index.jsp">Inicio</a></li>
     
      <li ><a href="refInst.jsp">Referente Institucional</a></li>
      <li><a href="historia.jsp">Historia de la empresa</a></li>
      <li> <a href="contactenos.jsp">Contactenos</a></li>
       <li class="active"><a href="#">Gestion</a></li>
    
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicon glyphicon-user"></span> Iniciar Sesion</a></li>
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Registrarse</a></li>
    </ul>
  </div>
</nav>
        
        
        <div class="modal fade" id="myModal" role="dialog">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title" id="myModalTitle">Modal Header</h4>
                    </div>
                    <div class="modal-body" id="myModalMessage">
                        <p>This is a small modal.</p>
                    </div>
                </div>
            </div>
        </div>  <!-- TALVEZ NO-->
        
        
        <!-- ********************************************************** -->
        <!-- ********************************************************** -->
        <!-- Modal insertar Conbductor -->
        <!-- 
        <!-- ********************************************************** -->
        <!-- ********************************************************** -->
  
        
        
        <div class="modal fade" id="myModalFormulario" role="dialog">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title" id="myModalTitle">Insertar / Modificar Conductores
                    </div>
                    <div class="modal-body" id="myModalMessage">
                        <form role="form" onsubmit="return false;" id="formPersonas">
                            
                            <div class="form-group" id="groupCedula">
                                <label for="cedula">Cedula:</label>
                                <input type="text" class="form-control" id="cedula" autofocus="true" placeholder="Cedula">
                            </div>

                            <div class="form-group" id="groupVehiculo">
                                <label for="vehiculo">ID Vehiculo:</label>
                                <input type="text" class="form-control" id="vehiculo" placeholder="Id de Vehiculo" >
                            </div>
                            
                            <div class="form-group" id="groupTipo">
                                <label for="tipoLicencia">Tipo de Licencia:</label>
                                <input type="text" class="form-control" id="tipoLicencia" placeholder="Tipo de Licencia" >
                            </div>

                         <div class="form-group" id="groupFechaNacimiento">
                                <label for="dpFechaNacimiento">Fecha Nacimiento:</label>
                                <div id="dpFechaNacimiento" class="input-group date form_date" data-date="" data-date-format="dd/mm/yyyy" data-link-field="dtp_input2" data-link-format="dd/mm/yyyy">
                                    <input class="form-control" type="text" value="" readonly placeholder="dd/mm/aaaa" id="dpFechaNacimientoText">
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-calendar"></span>
                                    </span>
                                </div>
                            </div>


                            <div class="form-group" id="groupFechaVencimientoLicencia">
                                <label for="dpFechaVencimientoLicencia">Fecha Vencimiento Licencia:</label>
                                <div id="dpFechaVencimientoLicencia" class="input-group date form_date" data-date="" data-date-format="dd/mm/yyyy" data-link-field="dtp_input2" data-link-format="dd/mm/yyyy">
                                    <input class="form-control" type="text" value="" readonly placeholder="dd/mm/aaaa" id="dpFechaVencimientoLicenciaText">
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-calendar"></span>
                                    </span>
                                </div>
                            </div>

                           
                            <div class="form-group">
                                <input type="hidden" value="agregarConductor" id="conductorAction"/>
                                <button type="submit" class="btn btn-primary" id="enviar">Guardar</button>
                                <button type="reset" class="btn btn-danger" id="cancelar">Cancelar</button>
                            </div>

                            <div class="form-group height25" >
                                <div class="alert alert-success hiddenDiv" id="mesajeResult">
                                    <strong id="mesajeResultNeg">Info!</strong> 
                                    <span id="mesajeResultText">This alert box could indicate a neutral informative change or action.</span>
                                </div>
                            </div>

                        </form>
                        
                        
                        
                    </div>
                </div>
            </div>
        </div>
        
        
        <BR><BR>
        
        
        <div class="container">
            
            <div class="page-header">
                 <div class="panel panel-default">
                        <!-- ********************************************************** -->
                        <!-- COLUMNA DEL MENU -->
                        <!-- ********************************************************** -->
                        <div class="col-md-4">
                            <div class="dropdown">
                                <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Menú Principal
                                    <span class="caret"></span></button>
                                <ul class="dropdown-menu">
                                    <li><a href="#">Mantenimiento Conductores</a></li>
                                    <li><a href="mantenimientoVehiculos.jsp">Mantenimiento Vehiculo</a></li>
                                    <li><a href="#">Mantenimiento Cliente</a></li>
                                    
                                  
                                    <li class="divider"></li>
                                    <li><a href="Logout">Cerrar Sesión</a></li>
                                </ul>
                            </div>
                        </div>
                
            </div>
                <h1>Agenda <small>Sistema para la administración</small></h1>
            </div>
            
            <div class="panel panel-primary">
                <div class="panel-heading"><h3>Mantenimiento de Conductores</h3></div>
                <div class="panel-body" style="background-color:greenyellow" id="tablaTot">
                    <center>
                        <button type="button" class="btn btn-primary centered" data-toggle="modal" data-target="#myModalFormulario" id="btMostarForm">Insertar Conductor</button>
                    </center><br>
                    <!-- ********************************************************** -->
                    <div class="col-sm-12">
                        <form role="form" onsubmit="return false;" id="formPersonas" class="form-horizontal centered">
                            <div class="form-group" id="groupCedula">
                                <div class="col-sm-4" style="text-align: right; vertical-align: middle;">
                                    <p><b>Buscar por nombre:</b></p>
                                </div>
                                <div class="col-sm-4">
                                    <input type="email" class="form-control" id="email" placeholder="Digite el nombre de la persona">
                                </div><!-- *******______________________________________________________*************************************************** -->
                                <div class="col-sm-4">
                                   <button type="button" class="btn btn-info centered" id="buscarPorNom"> <!--data-toggle="modal" data-target="#myModalFormulario" id="buscarPorNom">-->
                                        Buscar <span class="glyphicon glyphicon-search"></span>
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <!-- ********************************************************** -->

                    <table class="table table-hover table-condensed" id="tablaConductores"></table>
                    <ul class="pagination pagination" style="padding-left: 40%;">
    <li><a id="primera" href="#">1</a></li>
    <li><a id="segunda" href="#">2</a></li>
    <li><a id="tercera" href="#">3</a></li>
    <li><a id="cuarta" href="#">4</a></li>
    <li><a id="quinta" href="#">5</a></li>
  </ul>
                </div>
                <div class="panel-footer">Nota: Acciones validas dependeran del rol del usuario</div>
            </div>
        </div>
        
        
        
        <footer>
        <p>© 2017<a style="color:#0a93a6; text-decoration:none;" href="#"> Juber</a>, Bryan Ruiz R. Ronald Jimenez M</p>
    </footer>
    </body>
</html>
