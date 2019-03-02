<%-- 
    Document   : compafiliadas
    Created on : 14/07/2018, 11:17:45 PM
    Author     : PROPIETARIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/estilocom.css">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="css/estilosfin.css">
        <link href="css/estilo1.css" rel="stylesheet" type="text/css"/>

        
        <title>Compañías afiliadas</title>
    </head>
    <body background="imagenes/equipaje.jpg">
       <header>
            <nav>
                <ul>
                    <li><a href="pag_principal.jsp"> Inicio </a></li>
                    <li><a href="#">Destinos <span class="fa fa-angle-down"></span></a>
                    <ul>
                        <li><a href="Costa.jsp">Costa</a></li>
                        <li><a href="Sierra.jsp">Sierra</a></li>
                        <li><a href="Selva">Selva</a></li>
                    </ul></li> 
                    <li><a href="Vuelos.jsp">Reservas </a></li>                 
                    <li><a href="login.jsp"> Cerrar Sesión </a></li>
                </ul>
                </nav>
        </header>            
        <h1>Compañías afiliadas</h1>
        
        <div id="conten">
            
            <div id="conten-img">
                <img src="imagenes/agencia_viajes.png" id="img"/><br>
                <label>AGV Lima</label>
                <table>
                    <tr>
                        <td><a href="http://www.agencia-viajes-lima.com/">Ver Información</a></td>
                    </tr>
                </table>
            </div>
            
            <div id="conten-img">
                <img src="imagenes/travel-group-peru.png" id="img"/><br>
                <label>Travel Group Peru</label>
                <table>
                    <tr>
                        <td><a href="http://www.travelgroup.com.pe/">Ver Información</a></td>
                    </tr>
                </table>
            </div>
            
            <div id="conten-img">
                <img src="imagenes/logo_peruvian.png" id="img"/><br>
                <label>Peruvian Travel Service</label>
                <table>
                    <tr>
                        <td><a href="http://www.peruviantravelservice.com/">Ver Información</a></td>
                    </tr>
                </table>
            </div>
            
            <div id="conten-img">
                <img src="imagenes/logo-fertur-travel.png" id="img"/><br>
                <label>Fertur Peru Travel</label>
                <table>
                    <tr>
                        <td><a href="https://www.fertur-travel.com/es/">Ver Información</a></td>
                    </tr>
                </table>
            </div>
            
            <div id="conten-img">
                <img src="imagenes/logo_viajes_club.png" id="img"/><br>
                <label>Viajes Club</label>
                <table>
                    <tr>
                        <td><a href="http://www.viajesclub.com/">Ver Información</a></td>
                    </tr>
                </table>
            </div>
            
            <div id="conten-img">
                <img src="imagenes/logo_viaja_peru.png" id="img"/><br>
                <label>Viaja Perú</label>
                <table>
                    <tr>
                        <td><a href="https://www.viaja-peru.com/">Ver Información</a></td>
                    </tr>
                </table>
            </div>
                
        </div>
    </body>
</html>
