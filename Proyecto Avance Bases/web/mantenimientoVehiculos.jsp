<%-- 
    Document   : mantenimientoVehiculos
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
        
        
        
       <!-- <script src="../javaScript/VehiculosJS.js" type="text/javascript"></script>-->
        <script src="javaScript/VehiculosJS.js" type="text/javascript"></script>
        
        <link rel="stylesheet" href="maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js">
         <!--<script src="javaScript/js.js" type="text/javascript"></script>-->
        <link href="css/css.css" rel="stylesheet" type="text/css"/>
               
        <!--<script src="../javaScript/utils.js" type="text/javascript"></script>-->
        <script src="javaScript/utils.js" type="text/javascript"></script>
    </head>
    
    <body id="CUERPO">
      
        
         <nav class="navbar navbar-inverse navbar-fixed-top bs-docs-nav">
  <div class="container-fluid">
    <div class="navbar-header">
        
      <a class="navbar-brand" href="../index.jsp">Juber</a>
        <a class="navbar-brand" ><img src="../imagenes/logo1.png" alt="" height="25" width="45" ></a> </div>
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
                        <h4 class="modal-title" id="myModalTitle">Insertar / Modificar Vehiculos
                    </div>
                    <div class="modal-body" id="myModalMessage">
                        <form role="form" onsubmit="return false;" id="formPersonas">
                            
                            <div class="form-group" id="groupIDVehiculo">
                                <label for="idVehiculo">ID Vehiculo:</label>
                                <input type="text" class="form-control" id="idVehiculo" autofocus="true" placeholder="ID Vehiculo">
                            </div>

                            <div class="form-group" id="groupUbicacionActual">
                                <label for="ubicacionActual">Ubicacion Actual:</label>
                                <input type="text" class="form-control" id="ubicacionActual" placeholder="Ubicacion Actual" >
                            </div>
                            
                            <div class="form-group" id="groupAnno">
                                <label for="anno">Anno:</label>
                                <input type="text" class="form-control" id="anno" placeholder="Anno" >
                            </div>
                            
                            <div class="form-group" id="groupModelo">
                                <label for="modelo">Modelo:</label>
                                <input type="text" class="form-control" id="modelo" placeholder="Modelo" >
                            </div>

                             <div class="form-group" id="groupPlaca">
                                <label for="placa">Placa:</label>
                                <input type="text" class="form-control" id="placa" placeholder="Placa" >
                            </div>
                            <div class="form-group" id="groupColor">
                                <label for="color">Color:</label>
                                <input type="text" class="form-control" id="color" placeholder="Color" >
                            </div>
                              <div class="form-group" id="groupEstado">
                                <label for="estado">Estado:</label>
                                <select class="form-control" id="estado">
                                    <option value=true selected="selected">Activo</option>
                                    <option value=false>No activo</option>
                                </select>
                            </div>
                            
                            <div class="form-group">
                                <input type="hidden" value="agregarVehiculo" id="vehiculoAction"/>
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
                        
                        <div class="col-md-4"><br>
                            <div class="dropdown">
                                <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Menú Principal
                                    <span class="caret"></span></button>
                                <ul class="dropdown-menu">

                                    <li><a href="mantenimientoAdmi.jsp">Mantenimiento Conductores</a></li>
                                     <li><a href="#">Mantenimiento Vehiculo</a></li>
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
                <div class="panel-heading"><h3>Mantenimiento de Vehiculos</h3></div>
                <div class="panel-body" style="background-color: brown" id="tablaTot">
                    <center>
                        <button type="button" class="btn btn-primary centered" data-toggle="modal" data-target="#myModalFormulario" id="btMostarForm">Insertar Vehiculo</button>
                    </center><br>
                    <!-- ********************************************************** -->
                    <div class="col-sm-12">
                        <form role="form" onsubmit="return false;" id="formPersonas" class="form-horizontal centered">
                            <div class="form-group" id="groupCedula">
                                <div class="col-sm-4" style="text-align: right; vertical-align: middle;">
                                    <p><b>Buscar por placa:</b></p>
                                </div>
                                <div class="col-sm-4">
                                    <input type="email" class="form-control" id="email" placeholder="Digite la placa del vehiculo">
                                </div><!-- *******______________________________________________________*************************************************** -->
                                <div class="col-sm-4">
                                   <button type="button" class="btn btn-info centered" id="buscarPorPlaca"> <!--data-toggle="modal" data-target="#myModalFormulario" id="buscarPorNom">-->
                                        Buscar <span class="glyphicon glyphicon-search"></span>
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <!-- ********************************************************** -->

                    <table class="table table-hover table-condensed" id="tablaVehiculos"></table>
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
