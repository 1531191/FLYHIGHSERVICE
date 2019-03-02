<%-- 
    Document   : Selva
    Created on : 10/07/2018, 10:59:26 PM
    Author     : PROPIETARIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Departamento Selva</title>
        <link href="css/Normilaze.css" rel="stylesheet" type="text/css"/>
        <link href="css/regiones.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="css/estilosfin.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
        <link rel="stylesheet" href="css/nivo-slider_1.css">
	<link rel="stylesheet" href="css/mi-slider_1.css">
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
                <%--<header>
            <marquee>
                <div id="encabezado"><font size="18">Departamentos de la Selva</font></div>
            </marquee>           
</header>--%>
        
        <section id="cuerpo">
        <table>
            <tr>
                    <td colspan="4">
                        <marquee>
                        <font size= 16>Departamentos de la Region Selva</font>
                        </marquee>
                    </td>
            </tr>
            <tr>
                <td align="center"><a href="Selva/Amazonas.jsp"><img id="ima" src="imagenes/Amazonas.png"/></a></td>
                <td align="center"><a href="Selva/Loreto.jsp"><img id="ima" src="imagenes/Loreto.png"/></a></td>
                <td align="center"><a href="Selva/SanMartin.jsp"><img id="ima" src="imagenes/SanMartin.png"/></a></td>
            </tr>
            
            <tr>
                <td><a href="Selva/Amazonas.jsp"><h2><font color="black" face="Comic Sans MS,arial,verdana">Amazonas</font></h2></a></td>
                <td><a href="Selva/Loreto.jsp"><h2><font color="black" face="Comic Sans MS,arial,verdana">Loreto</font></h2></a></td>
                <td><a href="Selva/SanMartin.jsp"><h2><font color="black" face="Comic Sans MS,arial,verdana">San Martín</font></h2></a></td>
            </tr>
            
            <tr>
                <td align="center"><a href="Selva/MadreDios.jsp"><img id="ima" src="imagenes/MadreDios.png"/></a></td>
                <td align="center" id="logo"><a href="pag_principal.jsp"><img id="ima" src="imagenes/logotipo.png"/></a></td>
                <td align="center"><a href="Selva/Ucayali.jsp"><img id="ima" src="imagenes/Ucayali.png"/></a></td>
            </tr>
            
            <tr>
                <td><a href="Selva/MadreDios.jsp"><h2><font color="black" face="Comic Sans MS,arial,verdana">Madre de Dios</font></h2></a></td>
                <td></td>
                <td><a href="Selva/Ucayali.jsp"><h2><font color="black" face="Comic Sans MS,arial,verdana">Ucayali</font></h2></a></td>
            </tr>
        </table>
            
        </section>
                         <footer>
            <pre>

<a href="Somos.jsp">Quiénes somos</a>            <a href="VisioMision.jsp">Visión y Misión</a>            <a href="Contactanos.jsp">Contáctanos</a>            <a href="compafiliadas.jsp">Compañías afiliadas</a>            <a href="principal.jsp">Ir al Backend</a> 


<p>¿Viajas con la familia y buscas hoteles económicos u hoteles familiares? Haz tu próxima reserva de hotel a través de Fly-High Service y no pierdas la oportunidad de encontrar el mejor precio.<p>
            </pre>
             
       </footer>
    </body>
    </center>
</html>
