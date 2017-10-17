<%-- 
    Document   : contactenos
    Created on : Oct 5, 2017, 9:01:04 PM
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
        <title>Contactenos</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js">
       
        <link rel="stylesheet" href="maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js">
        <script src="../javaScript/js.js" type="text/javascript"></script>
        <link href="../css/css.css" rel="stylesheet" type="text/css"/>
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
      <li class="active"><a href="#">Contactenos</a></li>
       <li ><a href="mantenimientoAdmi.jsp">Gestion</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicon glyphicon-user"></span> Iniciar Sesion</a></li>
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Registrarse</a></li>
    </ul>
  </div>
</nav>
        
        <br><br><br>
<div class="container-fluid">
    <div class="row-fluid" >
        <div class="col-md-offset-4 col-md-4" id="box">
            <h2 id='Contact'>Contactenos!</h2>
            <hr>
            <form class="form-horizontal" action=" " method="" id="contact_form">
                <fieldset>
                   
                    <div class="form-group">
                        <div class="col-md-12">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <input name="first_name" placeholder="Nombre" class="form-control" type="text">
                            </div>
                        </div>
                    </div>
                    
                    
                    <div class="form-group">
                        <div class="col-md-12">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                <input name="email" placeholder="E-Mail" class="form-control" type="text">
                            </div>
                        </div>
                    </div>
     
                    <div class="form-group">
                        <div class="col-md-12">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
                                <input name="phone" placeholder="2250-23-34" class="form-control" type="text">
                            </div>
                        </div>
                    </div>
                    
                    <!-- Text input-->
                    <div class="form-group">
                        <div class="col-md-12 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                                <textarea class="form-control" name="comment" placeholder="Mensaje"></textarea>
                            </div>
                        </div>
                    </div>
                   
                    
                    <div class="form-group">
                        <div class="col-md-12">
                            <button type="submit" class="btn btn-warning pull-right">Enviar <span class="glyphicon glyphicon-send"></span></button>
                        </div>
                    </div>
                
                </fieldset>
            </form>
        </div> 
    </div>
</div>
        
        <footer>
        <p>© 2017<a style="color:#0a93a6; text-decoration:none;" href="#"> Juber</a>, Bryan Ruiz R. Ronald Jimenez M</p>
    </footer>
    </body>
</html>
