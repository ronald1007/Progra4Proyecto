<%-- 
    Document   : index
    Created on : Oct 5, 2017, 9:05:42 PM
    Author     : Bryan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Juber</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js">
        <link rel="stylesheet" href="maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js">
        <link href="css/css.css" rel="stylesheet" type="text/css"/>
     
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="http://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7/html5shiv.js"></script>
        <script src="http://cdnjs.cloudflare.com/ajax/libs/respond.js/1.3.0/respond.js"></script>
        <script src="http://maps.google.com/maps/api/js?sensor=false"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBXMvwDDlT3Wnh0rZBcAlQFjAdbe2CflkY&callback=initMap">
    </script>
    <script src="javaScript/js.js" type="text/javascript"></script>
       
       
    </head>
    <body>

   


<nav class="navbar navbar-inverse navbar-fixed-top bs-docs-nav">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Juber</a>

      <a class="navbar-brand" href="#"><img src="imagenes/logo1.png" alt="Chicago" height="25" width="45" ></a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Inicio</a></li>
      
      <li><a href="paginas/refInst.jsp">Referente Institucional</a></li>
      <li><a href="paginas/historia.jsp">Historia de la empresa</a></li>
      <li><a href="paginas/contactenos.jsp">Contactenos</a></li>
       <!--<li ><a href="paginas/mantenimientoAdmi.jsp">Gestion</a></li>-->
        <li ><a href="mantenimientoVehiculos.jsp">Gestion</a></li>
        
    </ul>
    <ul class="nav navbar-nav navbar-right">
     <li><a href="#"><span class="glyphicon glyphicon-user"></span> Iniciar Sesion</a></li>
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Registrarse</a></li>
    </ul>
  </div>
</nav>


<!--<div id="map-container" class="col-md-6"></div>-->
        
        
  <div class="row">
    <div class="col-lg-8" >
        
         <div id="map"></div>

     </div>
    <div class="col-lg-3" >
        
         <div id="Botonn">
    <h1 class="name N"> Ordenar un Servicio</h1>
<div class="line A"></div>

<div class="container a">
    <a href="#">   <!--Ir a servicio-->
  <div class="box3 B" >
    <h2 >Servicio</h2>
  </div>
        </a>
</div>
    
</div>
        
      </div>
  </div>

   

    

    <div class="retroAlimentaciones">
	<div class="row">
		       <div class="featurette" id="about">
          
            <div class="container-fluid">
                <div id="custom_carousel" class="carousel slide" data-ride="carousel" data-interval="2500">
                    
                    <div class="carousel-inner">
                        <div class="item active">
                            <div class="container-fluid">
                                <div class="row">
                                    
                                    <div class="col-md-3"><img src="imagenes/juan-carlos.png" class="img-responsive"></div>
                                    <div class="col-md-9">
                                        <h2>Juan</h2>
                                        <p>Excelente Servicio!</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="container-fluid">
                                <div class="row">
                                    
                                    <div class="col-md-3"><img src="imagenes/dan.jpg" class="img-responsive"></div>
                                    <div class="col-md-9">
                                        <h2>Daniel</h2>
                                        <p>Recomiendo la empresa al 100%</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                           
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-md-3"><img src="imagenes/fer.gif" class="img-responsive"></div>
                                    <div class="col-md-9">
                                        <h2>Felipe</h2>
                                        <p>Falta mejorar el servicio</p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="item">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-md-3"><img src="imagenes/jorge.jpg" class="img-responsive"></div>
                                    <div class="col-md-9">
                                        <h2>Jorge</h2>
                                        <p>Lo volvere a utilizar!</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="item">
                            <div class="container-fluid">
                                
                                <div class="row">
                                    <div class="col-md-3"><img src="imagenes/maria.jpg" class="img-responsive"></div>
                                    <div class="col-md-9">
                                        <h2>Maria</h2>
                                        <p>Faltan conductores disponibles</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                      
                    </div>
                    
                    <div class="controls">
                        <ul class="nav">
                            <li data-target="#custom_carousel" data-slide-to="0" class="active">
                                <a href="#"><img src="imagenes/juan-carlos.png"><small>Juan</small></a>
                            </li>
                            <li data-target="#custom_carousel" data-slide-to="1">
                                <a href="#"><img src="imagenes/dan.jpg"><small>Daniel</small></a>
                            </li>
                            <li data-target="#custom_carousel" data-slide-to="2">
                                <a href="#"><img src="imagenes/fer.gif"><small>Felipe</small></a>
                            </li>
                          
                            <li data-target="#custom_carousel" data-slide-to="3">
                                <a href="#"><img src="imagenes/jorge.jpg" alt=""/><small>Jorge</small></a>
                            </li>
                             <li data-target="#custom_carousel" data-slide-to="4">
                                <a href="#"><img src="imagenes/maria.jpg" alt=""/><small>Jorge</small></a>
                            </li>
                        </ul>
                    </div>
                </div>
                
            </div>
        </div>
	</div>
</div>



 <footer>
        <p>© 2017<a style="color:#0a93a6; text-decoration:none;" href="#"> Juber</a>, Bryan Ruiz R. Ronald Jimenez M</p>
    </footer>

<br><br>

    </body>
</html>
