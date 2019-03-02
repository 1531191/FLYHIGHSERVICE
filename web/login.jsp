<%-- 
    Document   : login
    Created on : 25/05/2018, 12:18:15 PM
    Author     : Shrek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="css/estilosLogin.css">
        <title>LOGIN</title>
    </head>
    <body>  
        <%--<form action="#">--%> 
                <div class="ventana">
                    <br><div class="contenedor-form">
            <div class="toggle">
                           <span> Crear Cuenta</span>
            </div>            
            <div class="formulario">
                <br><br><h2>Iniciar Sesion</h2>
                <form action="InicioSecion" method="post">
                     <input type="hidden" value="login" name="metodo" />
                    <input type="text"  placeholder="&#128272; Usuario" id="id_nombre" name="usuario" required>
                    <input type="password" placeholder="&#128272; Contraseña" id="id_contraseña" name="password" required>
                    <input type="submit" value="Iniciar Sesión">
                </form>
            </div>
            <div class="formulario">
                <br><br><h2>Crea tu Cuenta</h2>
                <form action="Registrar" method="Post">
                    <input class="form-control" type="text"  placeholder="&#128272; Usuario" id="id_nombre" name="usuario" required>
                    <input class="form-control" type="password" placeholder="&#128272; Contraseña" id="id_contraseña" name="password" required>
                    <input class="form-control" type="email" placeholder="&#128272; Correo Electrónico" id="id_correo" name="correo" required>
                    <input class="form-control" type=text placeholder="Teléfono" id="id_telefono" name="telefono">
                    <input class="form-control" type="submit" value="Registrarse">
                </form>
            </div>
              <div class="reset-password">
                  <a href="#">**************** Fly-High Service ****************</a>
            </div>   
            <img src="imagenes/avatar.png" class="avatar">
            </div>
                    
            </div>
        <script src="js/jquery-3.1.1.min.js"></script>
        <script src="js/main.js"></script>
        <%--</form>--%>
    </body>
</html>
