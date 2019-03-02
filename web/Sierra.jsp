<%-- 
    Document   : Sierra
    Created on : 11-jul-2018, 0:32:15
    Author     : Diego
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/Normilaze.css" rel="stylesheet" type="text/css"/>
        <link href="css/estilosfin.css" rel="stylesheet" type="text/css"/>
        <link href="css/regiones.css" rel="stylesheet" type="text/css"/>
        
        <title>Departamentos de la Sierra</title>
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
                    <td colspan="3">
                        <marquee>
                        <font size= 16>Departamentos de la Region Sierra</font>
                        </marquee>
                    </td>
            </tr>
            <tr>
                <td><a href="Sierra/Cajamarca.jsp"><img id="ima"src="imagenes/cajamarca.jpg" alt=""/></a></td>
                <td><a href="Sierra/Libertad.jsp"><img id="ima" src="imagenes/libertad.jpg" alt=""/></a></td>
                <td><a href="Sierra/Huanuco.jsp"><img id="ima" src="imagenes/huanuco.jpg" alt=""/></a></td>
            </tr>
            <tr>
                <td><a href="Sierra/Cajamarca.jsp"><h2><font color="black" face="Comic Sans MS,arial,verdana">Cajamarca</font></h2></a></td>
                <td><a href="Sierra/Libertad.jsp"><h2><font color="black" face="Comic Sans MS,arial,verdana">La Libertad</font></h2></a></td>
                <td><a href="Sierra/Huanuco.jsp"><h2><font color="black" face="Comic Sans MS,arial,verdana">Huánuco</font></h2></a></td>
            </tr>
            <tr>
                <td><a href="Sierra/Pasco.jsp"><img id="ima" src="imagenes/pasco.jpg" alt=""/></a></td>
                <td><a href="Sierra/Junin.jsp"><img id="ima" src="imagenes/junin.jpg" alt=""/></a></td>
                <td><a href="Sierra/Huancavelica.jsp"><img id="ima" src="imagenes/huancavelica.jpg" alt=""/></a></td>
            </tr>
            <tr>
                <td><a href="Sierra/Pasco.jsp"><h2><font color="black" face="Comic Sans MS,arial,verdana">Pasco</font></h2></a></td>
                <td><a href="Sierra/Junin.jsp"><h2><font color="black" face="Comic Sans MS,arial,verdana">Junin</font></h2></a></td>
                <td><a href="Sierra/Huancavelica.jsp"><h2><font color="black" face="Comic Sans MS,arial,verdana">Huancavelica</font></h2></a></td>
            </tr>
            <tr>
                <td><a href="Sierra/Ayacucho.jsp"><img id="ima" src="imagenes/ayacucho.jpg" alt=""/></a></td>
                <td><a href="Sierra/Cusco.jsp"><img id="ima" src="imagenes/cusco.jpg" alt=""/></a></td>
                <td><a href="Sierra/Apurimac.jsp"><img id="ima" src="imagenes/apurimac.jpg" alt=""/></a></td>
            </tr>
            <tr>
                <td><a href="Sierra/Ayacucho.jsp"><h2><font color="black" face="Comic Sans MS,arial,verdana">Ayacucho</font></h2></a></td>
                <td><a href="Sierra/Cusco.jsp"><h2><font color="black" face="Comic Sans MS,arial,verdana">Cusco</font></h2></a></td>
                <td><a href="Sierra/Apurimac.jsp"><font color="black" face="Comic Sans MS,arial,verdana"><h2>Apurimac</font></h2></a></td>
            </tr>
            <tr>
                <td><a href="Sierra/Puno.jsp"><img id="ima" src="imagenes/puno.jpg" alt=""/></a></td>
            </tr>
            <tr>
                <td><a href="Sierra/Puno.jsp"><h2><font color="black" face="Comic Sans MS,arial,verdana">Puno</font></h2></a></td>
            </tr>
        </table>
    </center>
                         <footer>
            <pre>

<a href="Somos.jsp">Quiénes somos</a>            <a href="VisioMision.jsp">Visión y Misión</a>            <a href="Contactanos.jsp">Contáctanos</a>            <a href="compafiliadas.jsp">Compañías afiliadas</a>            <a href="principal.jsp">Ir al Backend</a> 


<p>¿Viajas con la familia y buscas hoteles económicos u hoteles familiares? Haz tu próxima reserva de hotel a través de Fly-High Service y no pierdas la oportunidad de encontrar el mejor precio.<p>
            </pre>
             
       </footer>
    </body>
</html>
