<%-- 
    Document   : enviar
    Created on : 16/07/2018, 12:07:37 AM
    Author     : PROPIETARIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/menu.css">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="css/estilosfin.css">
        <link href="css/menu.css" rel="stylesheet" type="text/css"/>
        <title>CONTÁCTANOS</title>
    </head>
    <body background="imagenes/equipaje.jpg">
        <?php
    $myemail = 'julissa.lombardi@gmail.com';
    $name = $_POST['nombre'];
    $email = $_POST['email'];
    $message = $_POST['mensaje'];
    
    $to = $myemail;
    $email_subject = "Nuevo mensaje: $subject";
    $email_body = "Haz recibido un nuevo mensaje. \n Nombre: $name \n Correo: $email \n Mensaje: \n $message";
    $headers = "From: $email";
    
    mail($to, $email_subject, $email_body, $headers);
    echo "El mensaje se ha enviado correctamente";
        ?>
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
        <center>
            <h1>Contactanos</h1>
            <form method="post" action="enviar.jsp">
                <input type="text" name="nombre" placeholder="NOMBRES">
                <input type="email" name="email" placeholder="CORREO">
                <br>
                <textarea type="text" name="mensaje" placeholder="MENSAJE"></textarea>
                <br>
                <input type="submit" value="ENVIAR">
                <br>
                <br>
                <table>
                    <tr>
                        <td align="center"><a href="https://www.facebook.com/Fly-High-Service-488579671585833/?modal=admin_todo_tour"><img src="imagenes/facebook.png"/>Contáctanos con Facebook</a></td>
                        
                    </tr>
                    <br>
                    <tr>
                        <td align="center"><a href="https://api.whatsapp.com/send?phone=51959196926"><img src="imagenes/wsp.png"/>Contáctanos por Whatsapp</a></td>
                        
                    </tr>
                </table>
            </form>
        </center>
    </body>
</html>
