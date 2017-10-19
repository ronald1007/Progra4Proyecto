<%-- 
    Document   : historia
    Created on : Oct 5, 2017, 9:01:59 PM
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
        <title>Historia</title>
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
    <body>
        <nav class="navbar navbar-inverse navbar-fixed-top bs-docs-nav">
  <div class="container-fluid">
    <div class="navbar-header">
        
      <a class="navbar-brand" href="../index.jsp">Juber</a>
        <a class="navbar-brand" ><img src="../imagenes/logo1.png" alt="Chicago" height="25" width="45" ></a></div>
    <ul class="nav navbar-nav">
      <li ><a href="../index.jsp">Inicio</a></li>
      
      <li ><a href="refInst.jsp">Referente Institucional</a></li>
      <li class="active"><a href="#">Historia de la empresa</a></li>
      <li ><a href="contactenos.jsp">Contactenos</a></li>
       <li ><a href="mantenimientoAdmi.jsp">Gestion</a></li>
       
    </ul>
    <ul class="nav navbar-nav navbar-right">
     <li><a href="#"><span class="glyphicon glyphicon-user"></span> Iniciar Sesion</a></li>
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Registrarse</a></li>
    </ul>
  </div>
</nav>
        
        <br><br><br>
        <div id="his">
            Nuestra Empresa<br>
            <img src="../imagenes/logo1.png" alt=""/>
        </div>
        
        
        
        
        <!---------------------------->
        
        <div class="container">
 <div class="row"  style="margin-top:20px;">
        <div class=" well well-sm  bg-white borderZero"  >
            <div class="btn-group date-block btn-group-justified font-small dropdown" data-toggle="buttons">
                <label href="#home" data-toggle="tab" class="btn btn-info  next font-small semiBold" title="Next Day" style="font-size:22px; border-radius:0;">
                   2010
                </label>
                <label  href="#profile" data-toggle="tab" class="btn btn-info previous text-right font-small semiBold" title="Previous Day" style="font-size:22px;">
                    2011
                </label>
                <label href="#contact" data-toggle="tab" class="btn date-buttons btn-info text-right semiBold" style="font-size:22px;" >
                    2013
                </label>
                <label  href="#education" data-toggle="tab" class="btn date-buttons btn-info text-right semiBold" style="font-size:22px;" >
                   2016
                </label>
                <label href="#skills" data-toggle="tab"  class="btn date-buttons btn-info text-right semiBold" style="font-size:22px;">
                    2017
                </label>
               
            </div>
          
        </div>
          <div id="myTabContent" class="tab-content">
                
              <div class="tab-pane fade" id="home">
            <p class="text-center" style="font-size: 16px">
                Juber fue fundada en mayo de 2010 por Ronald Jimenez, empresario Nicaraguense, ingeniero en alimentos y graduado de la Universidad de Managua.
                La motivación de Ronald para crear una empresa de redes de transporte surgió como reacción a la experiencia negativa vivida al intentar introducir vehículos eléctricos en distintas ciudades de Costa Rica. El alto coste inicial de esos vehículos hacía poco atractiva la propuesta para los clientes que recorrían solo unos pocos km cada día.
                De Ronald comenzó a discutir la idea con Bryan Ruiz, uno de los fundadores del internet. Juber estableció su primera red de transporte en Costa Rica y poco tiempo después su idea atrajo a inversores de Silicon Valley. Ruiz quedó como el CEO, 
                mientras que Ronald se convirtio en asesor ya que continúan trabajando en su propia startup.</p>
            </div>
              
            <div class="tab-pane fade" id="profile">
                <p class="text-center" style="font-size: 16px">
                    En Noviembre de 2011, sólo 6 semanas después de su lanzamiento oficial, Juber había registrado 20 000 usuarios y realizado casi 3000 viajes, únicamente en Costa Rica. En los siguientes dos años, más de 150 conductores de America se unieron a la empresa.
                    
                </p>
            </div>
          <div class="tab-pane fade" id="contact">
             <p class="text-center" style="font-size: 16px">
             En septiembre de 2013, Juber recaudó 4 millones de dólares en una ronda de inversión Series Seed de Black Vine, el fondo belga Emerge; Angels Investors a través de AngelList (incluyendo a los gemelos Winklevoss) y una serie de inversores latinoamericanos.
             </p>
          </div>
          <div class="tab-pane fade" id="education">
            <p class="text-center" style="font-size: 16px">
            En abril de 2016, Rakuten invirtió 92 millones de dólares más en Juber. La inversión de Rakuten fue parte de una ronda de 
            financiación en la que Juber recaudó 120 millones de dólares. Tras esto la compañía anunció que comenzaría a operar en Argentina (Buenos Aires y Rosario), Brasil (Sao Paulo),
            Costa Rica, Portugal (Lisboa), Bolivia, Ecuador, y Panamá. También anunció que expandiría sus servicios actuales a ciudades como Valparaíso y Viña del Mar en Chile.
            </p>
          </div>
           <div class="tab-pane fade" id="skills">
            <p class="text-center" style="font-size: 16px">
            Actualmente la compañía opera en todo America , y ocho ciudades españolas a partir de 2018 - Madrid, Barcelona, Valencia, Bilbao, Vitoria, La Coruña, Málaga y Sevilla, y en la isla de Tenerife. Después de la financiación de 2016, 
            Juber fue valorado en alrededor de 320 millones de dólares. Actualmente cuenta con 400 empleados fijos en las áreas de ingeniería, ventas, márketing, logística y servicio al cliente.
            </p>
          </div>
    </div>
    </div>
</div>
        
        <footer>
        <p>© 2017<a style="color:#0a93a6; text-decoration:none;" href="#"> Juber</a>, Bryan Ruiz R. Ronald Jimenez M</p>
    </footer>
    </body>
</html>
