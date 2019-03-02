<%-- 
    Document   : Costa
    Created on : 09/07/2018, 09:01:00 PM
    Author     : LAB-USR-PT385-1406
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/Normilaze.css" rel="stylesheet" type="text/css"/>
        <link href="css/estilosfin.css" rel="stylesheet" type="text/css"/>
        <link href="css/regiones.css" rel="stylesheet" type="text/css"/>
        
        <title>Departamentos de la Costa</title>
    </head>
    <center>
    <body>
        <header>
            <nav>
                <%--<a href="#" class="logo-web"><img src="imagenes/logo1.jpg" alt=" " class="imagen"></a>--%>
                <ul>
                    <li><a href="pag_principal.jsp"> Inicio </a></li>
                    <li><a href="#">Destinos <span class="fa fa-angle-down"></span></a>
                    <ul>
                        <li><a href="Costa.jsp">Costa</a></li>
                        <li><a href="Sierra.jsp">Sierra</a></li>
                        <li><a href="Selva.jsp">Selva</a></li>
                    </ul></li> 
                    <li><a href="Vuelos.jsp">Reservas </a></li>                 
                    <li><a href="login.jsp"> Cerrar Sesión </a></li>
                </ul>
                </nav>
            
        </header>
        <table>
            <tr>
                    <td colspan="4">
                        <marquee>
                        <font size= 16>Departamentos de la Region Costa</font>
                        </marquee>
                    </td>
            </tr>
            <tr>
                <td><a href="Costa/Lima.jsp"><img id="ima" src="imagenes/lima.jpg" alt=""/></a></td>
                <td><a href="Costa/Trujillo.jsp"><img id="ima" src="imagenes/trujillo.jpg" alt=""/></a></td>
                <td><a href="Costa/Lambayeque.jsp"><img id="ima" src="imagenes/lambayeque.jpg" alt=""/></a></td>
            </tr>
            <tr>
                <td><a href="Costa/Lima.jsp"><h2><font color="black" face="Comic Sans MS,arial,verdana">Lima</font></h2></a></td>
                <td><a href="Costa/Trujillo.jsp"><h2><font color="black" face="Comic Sans MS,arial,verdana">Trujillo</font></h2></a></td>
                <td><a href="Costa/Lambayeque.jsp"><h2><font color="black" face="Comic Sans MS,arial,verdana">Lambayeque</font></h2></a></td>
            </tr>
            <tr>
                <td><a href="Costa/Chimbote.jsp"><img id="ima" src="imagenes/chimbote.jpg" alt=""/></a></td>
                <td><a href="Costa/Piura.jsp"><img id="ima" height="300" src="imagenes/piura.jpg" alt=""/></a></td>
                <td><a href="Costa/Tacna.jsp"><img id="ima" height="300" src="imagenes/tacna.jpg" alt=""/></a></td>
            </tr>
            <tr>
                <td><a href="Costa/Chimbote.jsp"><h2><font color="black" face="Comic Sans MS,arial,verdana">Chimbote</font></h2></a></td>
                <td><a href="Costa/Piura.jsp"><h2><font color="black" face="Comic Sans MS,arial,verdana">Piura</font></h2></a></td>
                <td><a href="Costa/Tacna.jsp"><h2><font color="black" face="Comic Sans MS,arial,verdana">Tacna</font></h2></a></td>
            </tr>
             <tr>
                <td><a href="Costa/Ica.jsp"><img id="ima" src="imagenes/ica.jpg" alt=""/></a></td>
                <td><a href="Costa/Moquegua.jsp"><img id="ima" src="imagenes/moquegua.jpg" alt=""/></a></td>
                <td><a href="Costa/Ancash.jsp"><img id="ima" src="imagenes/ancash.jpg" alt=""/></a></td>
            </tr>
            <tr>
                <td><a href="Costa/Ica.jsp"><h2><font color="black" face="Comic Sans MS,arial,verdana">Ica</font></h2></a></td>
                <td><a href="Costa/Moquegua.jsp"><h2><font color="black" face="Comic Sans MS,arial,verdana">Moquegua</font></h2></a></td>
                <td><a href="Costa/Ancash.jsp"><h2><font color="black" face="Comic Sans MS,arial,verdana">Ancash</font></h2></a></td>
            </tr>
        </table>
        <footer>
            <pre>

<a href="Somos.jsp">Quiénes somos</a>            <a href="VisioMision.jsp">Visión y Misión</a>            <a href="Contactanos.jsp">Contáctanos</a>            <a href="compafiliadas.jsp">Compañías afiliadas</a>            <a href="principal.jsp">Ir al Backend</a> 


<p>¿Viajas con la familia y buscas hoteles económicos u hoteles familiares? Haz tu próxima reserva de hotel a través de Fly-High Service y no pierdas la oportunidad de encontrar el mejor precio.<p>
            </pre>
             
       </footer>
    </body>
    </center>
</html>
