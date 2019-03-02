<%-- 
    Document   : Vuelos
    Created on : 22/05/2018, 07:40:51 PM
    Author     : LAB-USR-AQ265-A0905
--%>
    
<%@page import="java.util.List"%>

<%@page import="modelo.Vuelos"%>
<%@page import="modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns:p="http://primefaces.org/ui"
      xmlns="http://www.w3.org/1999/xhtml"
      xmlns:h="http://xmlns.jcp.org/jsf/html">
    
   <%
                            HttpSession sesion = request.getSession();
                            String usuario= (String) sesion.getAttribute("usuario");
                              
                            
   
                        %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/estilosfin.css" rel="stylesheet" type="text/css"/>
        <link href="css/vuelos.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
        <link href="iconos/fonts/style.css" rel="stylesheet">    
            <script src="js/jquery-3.1.1.min.js"></script>
            <script src="js/viaje_main.js"></script>
   </head>
    <center>
        <body> 
        <header>
            <nav>
                <ul>
                    <li><a href="pag_principal.jsp"> Inicio </a></li>
                    <li><a href="#"> Destinos <span class="fa fa-angle-down"></span></a>
                    <ul>
                        <li><a href="Costa.jsp">Costa</a></li>
                        <li><a href="Sierra.jsp">Sierra</a></li>
                        <li><a href="Selva.jsp">Selva</a></li>
                    </ul></li> 
                    <li><a href="Vuelos.jsp"> Reservas </a>
                    </li>                 
                    <li><a href="login.jsp"> Cerrar Sesión </a></li>
                </ul>
                </nav>
        </header>

            <div class="ventana">
          <br><div class="contenedor-form">
            <div class="toggle">    
                 <a href="#1t" ><span class="a">&#9992; <br> Vuelos </span></a>
                <a href="#2t" ><span class="b">&#127976; <br> Hoteles </span></a>
              
                   <a href="#44t" ><span class="c">&#9992; <br> Reservas </span></a>
            </div>
            <div class="formulario">
                <form action="RegistroVuelo" method="post" id="1t"> 
                    <table  id="tabla" CELLSPACING="20" >
                            <tr>
                                <td colspan="4"><h2>Registre su vuelo</h2></td>
                            </tr>
                             <td>
                                
                            </td>
                            <tr>
                                <td
                                <label>Ciudad de Origen </label>
               <select colspan="2" placeholder="&#128272; Ciudad de destino" id="id_ciudad" name="origen" required>
                    <option value="Lima">Lima</option>
                    <option value="Huaraz"> Huaraz</option>
                    <option value="Piura"> Piura</option>
                    <option value="Cuzco"> Cuzco</option>
                    <option value="Trujillo"> Trujillo</option>
                    <option value="Arequipa"> Arequipa</option>
                    <option value="Amazonas"> Amazonas</option>
                     <option value="Iquitos"> Iquitos</option>
                      <option value="Tacna"> Tacna</option>
                    </select></td>
                   
                     <td
                                <label>Ciudad de Destino </label>
               <select colspan="2" placeholder="&#128272; Ciudad de destino"  id="id_destino" name="destino" required>
                    <option value="Lima">Lima</option>
                    <option value="Huaraz"> Huaraz</option>
                    <option value="Piura"> Piura</option>
                    <option value="Cuzco"> Cuzco</option>
                    <option value="Trujillo"> Trujillo</option>
                    <option value="Arequipa"> Arequipa</option>
                    <option value="Amazonas"> Amazonas</option>
                     <option value="Iquitos"> Iquitos</option>
                      <option value="Tacna"> Tacna</option>
                    </select></td>
                               
                        <tr><td colspan="4"><input type="text"  placeholder="&#128272; Pasajeros" id="id_pasajeros" name="pasajeros" required></td>        
                                
                            </tr>
                            <tr>
                                <td><input type="date"  placeholder="&#128272; Salida" id="id_salida" name="salida" required></td>
                                <td><input type="date" placeholder="&#128272; Retorno" id="id_retorno" name="retorno" </td>
                                                             
                                <td><input type="hidden"   id="id_usuario" name="usuario" value="<%=usuario%>" </td>
                            </tr>
                            <tr>
                            <td><input type="submit" value="Enviar datos"></td></tr>
                    </table>                   
                </form>
            </div>
            <div class="formulario">
                <form action="RegistraHotel" method="Past" id="2t">
                    <table  CELLSPACING="20" id="tabla">
                            <tr>
                                <td  colspan="2"><h2> Registre su hotel </h2> </td> 
                            </tr>
                            <tr>
                                <td colspan="2"><input type="text"  placeholder="&#128272; Nombre del hotel" id="id_salida" name="hotel" required></td>
                            </tr>
                            <tr>                                
                                <td><input type="date"  placeholder="&#128272; Entrada" id="id_salida" name="fecha_entrada" required></td>
                                <td><input type="date"  placeholder="&#128272; Salida" id="id_salida" name="fecha_salida" required></td>
                            </tr> 
                           <tr>
                                <td><input type="text" placeholder="&#128272; Habitaciones" id="id_destino" name="habitacion" required></td>                             
                                <td><input type="submit" value="Enviar datos"></td>
                            </tr>
                    </table>  
                </form>
            </div> 
                          <div class="formulario">
                <form action="RegistroRestaurante" id="3t">
                    <table  CELLSPACING="20" id="tabla" >
                            <tr>
                                <td  colspan="2"><h2> Reserva tu restaurante </h2> </td> 
                            </tr>
                            <tr>
                                <td><input type="text"  placeholder="&#128272; Lugar" id="id_salida" name="lugar" required></td>
                                <td><input type="text"  placeholder="&#128272; Restaurante" id="id_salida" name="restaurante" required></td>
                            </tr>
                            <tr>                                
                                <td><input type="date"  placeholder="&#128272; Fecha" id="id_salida" name="fecha_inicio" required></td>
                                <td><input type="date"  placeholder="&#128272; Restaurante" id="id_salida" name="fecha_final" required></td>
                            </tr>
                            <tr>
                                <td><input type="text" placeholder="&#128272; Nro de Reservas" id="id_destino" name="numeroreserva" required></td>                             
                                <td><input type="submit" value="Enviar datos"></td>
                            </tr>
                    </table>  
                </form>
            </div>
              
              <div class="formulario">
                <form action="RegistroRestaurante" id="44t">
                     <a href="InicioSecion?metodo=reservas&idusuario=<%=usuario%>" ><i class="fa fa-dashboard fa-fw"></i> VER RESERVAS</a>
                    <table  CELLSPACING="2" id="tabla" >
                            <tr>
                                <td  colspan="2"><h2> Mis reservas </h2> </td> 
                            </tr>
                            
      <table class="table">
                              
                <thead>
                    <tr>
                        <th>Origen</th>
                        <th>Destino </th>
                        <th>Fecha Salida</th>
                        <th>Fecha Retorno</th>
                    </tr>
                </thead>
                <tbody>
              <%
                List<Vuelos> data = (List<Vuelos>)request.getAttribute("datareserva");
                if(data!= null)
                {
                    for(Vuelos x: data)
                    {
                    %>
   
                    <tr>
                      <td><%=x.getOrigen()%> </td>
                                                        <td><%=x.getDestino()%></td>
                                                        <td><%=x.getSalida()%></td>
                                                        <td><%=x.getRetorno()%></td>
                                                     </tr>
                                                 </tbody>
                                                
                                                 <%}
}%>      </table>
            

                        
                     </table>  
                    
                     
                </form>
            </div>
            </div> 
            </div>
                     <footer>
            <pre>

<a href="Somos.jsp">Quiénes somos</a>            <a href="VisioMision.jsp">Visión y Misión</a>            <a href="Contactanos.jsp">Contáctanos</a>            <a href="compafiliadas.jsp">Compañías afiliadas</a>            <a href="principal.jsp">Ir al Backend</a> 


<p>¿Viajas con la familia y buscas hoteles económicos u hoteles familiares? Haz tu próxima reserva de hotel a través de Fly-High Service y no pierdas la oportunidad de encontrar el mejor precio.<p>
            </pre>
             
       </footer>
    </body>
    </center>
</html>