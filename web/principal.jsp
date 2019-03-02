<%-- 
    Document   : principal
    Created on : 18-jun-2018, 22:13:59
    Author     : INARDY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/vuelos.css" rel="stylesheet" type="text/css"/>
        <link href="css/mi-slider_1.css" rel="stylesheet" type="text/css"/>
        <title>Diagnostic</title>
        <script>
            $( document ).ready(function() {
               // <a href="principal.jsp">Prueba<span class="badge">5</span></a><br>
                        
           /*  $("#mLaboratiro").append('<span class="badge">3</span>');
              $("#mResultado").append('<span class="badge">5</span>');
              $("#mConsultario").append('<span class="badge">5</span>');*/
            });
            
            function fn_abrirPagina(pagina){
                $("#ContenidoPagina").load(pagina);
            }
        </script>
    </head>
    <body>
        <div class="container-fluid">
            
       <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">
        <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#myPage">Gestión de Información</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a id="mPersona" href="http://localhost:8084/Proyecto_FHS/faces/index.xhtml" onclick="fn_abrirPagina('persona.jsp');">REGISTRO DE USUARIOS</a></li>
        <li><a id="mMuestra" href="http://localhost:8084/Proyecto_FHS/faces/Consultas.xhtml" onclick="fn_abrirPagina('muestra.jsp');">REGISTRO DE VUELOS</a></li>
        <li><a id="mResultado" href="http://localhost:8084/Proyecto_FHS/faces/Pilotos.xhtml" onclick="fn_abrirPagina('resultado.jsp');">REGISTRO DE PILOTOS</a></li>
        <li><a id="mListaCliente" href="http://localhost:8084/Proyecto_FHS/faces/Restaurante.xhtml" onclick="fn_abrirPagina('miresultado.jsp');">REGISTRO DE RESTAURANTES </a></li>
        <li><a id="mListaCliente" href="http://localhost:8084/Proyecto_FHS/faces/Hotel.xhtml" onclick="fn_abrirPagina('miresultado.jsp');">REGISTRO DE HOTEL </a></li>
        <li><a href="pag_principal.jsp"> Cerrar Sesión </a></li>
      </ul>
    </div>
  </div>
</nav>
            
            <br>
            <br>
            <br>
            
       <div id="ContenidoPagina"></div>      
 </div>
        
       
        
          <!-- Modal Personas -->
        <div class="modal fade" id="ModalPersona" role="dialog">
             <div class="modal-dialog">
    
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Registro de Personas</h4>
                </div>
            <div class="modal-body">
                <div class="panel panel-default">
                    <div class="panel-body">
                          <div class="row">
                              <div class="col-md-2">
                                  <label>DNI</label>
                              </div>
                              <div class="col-md-10">
                                  <input type="text" class="form-control" id="txtDNI">
                              </div>
                        </div>
                        <br>
                        <div class="row">
                              <div class="col-md-2">
                                  <label>Nombre</label>
                              </div>
                              <div class="col-md-10">
                                  <input type="text" class="form-control" id="txtNombre">
                              </div>
                        </div>
                        <br>
                        <div class="row">
                              <div class="col-md-2">
                                  <label>Apellido Paterno</label>
                              </div>
                              <div class="col-md-10">
                                   <input type="text" class="form-control" id="txtApepa">
                              </div>
                        </div>
                        <div class="row">
                              <div class="col-md-2">
                                  <label>Apellido Materno</label>
                              </div>
                              <div class="col-md-10">
                                    <input type="text" class="form-control" id="txtApema">
                              </div>
                        </div>
                           <div class="row">
                              <div class="col-md-2">
                                  <label>Fecha Nacimienti</label>
                              </div>
                              <div class="col-md-10">
                                 <input type="date" id="dtpFnac" name="bday" max="3000-12-31" min="1000-01-01" class="form-control">
                              </div>
                        </div>
                        <div class="row">
                              <div class="col-md-2">
                                  <label>Dirección</label>
                              </div>
                              <div class="col-md-10">
                                    <input type="text" class="form-control" id="txtDirec">
                              </div>
                        </div>
                        <br>
                        <div class="row">
                              <div class="col-md-2">
                                  <label>Telefono</label>
                              </div>
                              <div class="col-md-10">
                                  <input type="text" id="txtTelef" class="form-control">
                              </div>
                        </div>
                        <br>
                           <div class="row">
                            <div class="col-md-2">
                                <label>Usuario</label>
                            </div>
                             <div class="col-md-10">
                                <select class="form-control" id="cboExamen">
                                        <option>Perfil Cliente</option>
                                        <option>Perfil Administrativo</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal" onclick="fn_RegistrarPersona()">Registrar</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
            </div>
            </div>
             </div>
    </div>
        
          <!-- Modal Consultorio -->
          <div class="modal fade" id="ModalConsultorio" role="dialog">
             <div class="modal-dialog modal-lg">
    
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Consultorio</h4>
                </div>
            <div class="modal-body">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="row">
                            <div class ="col-md-2">
                                <label>Cliente:</label>
                            </div>
                             <div class ="col-md-8">
                                  <input type="text" class="form-control" id="txtClienteBusqueda">
                            </div>
                            <div class="col-md-2">
                                  <button type="button" class="btn btn-info" data-toggle="modal" data-target="#modalClienteLista">Buscar</button>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-md-2">
                                <label>Servicio:</label>
                            </div>
                             <div class="col-md-10">
                                <select class="form-control" id="cboServicio">
                                        <option>Pediatría</option>
                                        <option>Cirugía gastroenterología</option>
                                        <option>Ginecología</option>
                                </select>
                            </div>
                        </div>
                         <br>
                           <div class="row">
                            <div class="col-md-2">
                                <label>Hospital:</label>
                            </div>
                             <div class="col-md-10">
                                <select class="form-control" id="cboHospital">
                                        <option>Hospoital 1</option>
                                        <option>Hospoital 1</option>
                                        <option>Hospoital 1</option>
                                </select>
                            </div>
                        </div>
                         <br>
                        <div class="row">
                            <div class="col-md-2">
                                <label>Muestra:</label>
                            </div>
                             <div class="col-md-10">
                                 <input type="text" class="form-control" id="txtMuestraConsultorio">
                            </div>
                        </div>
                          <br>
                        <div class="row">
                            <div class="col-md-2">
                                <label>Comentario:</label>
                            </div>
                             <div class="col-md-10">
                                  <textarea class="form-control" rows="5" id="txtComentarioConsultorio"></textarea>
                            </div>
                        </div>
                          <br>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal" onclick="fn_RegistrarPersona()">Registrar</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
            </div>
            </div>
             </div>
    </div>
          
           <!-- Modal Laboratiro -->
          <div class="modal fade" id="ModalLab" role="dialog">
             <div class="modal-dialog modal-lg">
    
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Laboratorio</h4>
                </div>
            <div class="modal-body">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class ="row">
                                <div class="panel-group">
                                  <div class="panel panel-default">
                                    <div class="panel-heading">
                                      <h4 class="panel-title">
                                          <a data-toggle="collapse" href="#collapse1"><p>Ver Lista Consultorio Pendiente</p></a>
                                      </h4>
                                    </div>
                                    <div id="collapse1" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            <table class="table table-hover">
                                                <thead>
                                                  <tr>
                                                    <th>Cliente</th>
                                                    <th>Servicio</th>
                                                    <th>Hospital</th>
                                                  </tr>
                                                </thead>
                                                <tbody>
                                                  <tr>
                                                    <td>John</td>
                                                    <td>Patologia</td>
                                                    <td>2 de Mayo</td>
                                                  </tr>
                                                  <tr>
                                                    <td>Mary</td>
                                                    <td>Patologia</td>
                                                    <td>2 de Mayo</td>
                                                  </tr>
                                                  <tr>
                                                    <td>July</td>
                                                    <td>Patologia</td>
                                                    <td>2 de Mayo</td>
                                                  </tr>
                                                </tbody>
                                              </table>
                                        </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                     </div>
                    
                    <br>
                        <div class="row">
                            <div class ="col-md-2">
                                <label>Consulta:</label>
                            </div>
                             <div class ="col-md-7">
                                  <input type="text" class="form-control" id="txtConsultaLaboratorio">
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-md-2">
                                <label>Diagnostico Patologo:</label>
                            </div>
                             <div class="col-md-10">
                                  <textarea class="form-control" rows="5" id="txtResultadoLab"></textarea>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-md-8 col-md-offset-3">
                                <label class="btn btn-block btn-primary">Cargar Imagen&hellip; <input type="file" style="display: none;" id="inputFile"  name="upload"></label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal" onclick="fn_RegistrarPersona()">Registrar</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
            </div>
            </div>
             </div>
    </div>
           
            <!-- Modal Resultado -->
          <div class="modal fade" id="ModalResultados" role="dialog">
             <div class="modal-dialog modal-lg">
    
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Resultados Cliente</h4>
                </div>
            <div class="modal-body">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="row">
                         <div class="table-responsive pre-scrollable" >
                                <table class="table table-bordered table-sm" id="dtExcel">
                                     <thead>
                                        <tr class="bg-primary">
                                          <th>Consulta</th>
                                          <th>Fecha Registro</th>
                                          <th>Descargar Resultado</th>
                                        </tr>
                                      </thead>
                                      <tbody>
                                          <tr>
                                              <td>Examen Piel</td>
                                              <td>22/06/2018</td>
                                              <td><input type="button" value="ver" /></td>
                                          </tr>
                                           <tr>
                                              <td>Examen Mama</td>
                                              <td>22/06/2018</td>
                                              <td><input type="button" value="ver" /></td>
                                          </tr>
                                           <tr>
                                              <td>test</td>
                                              <td>22/06/2018</td>
                                              <td><input type="button" value="ver" /></td>
                                          </tr>
                                           <tr>
                                              <td>Examen Piel</td>
                                              <td>22/06/2018</td>
                                              <td><input type="button" value="ver" /></td>
                                          </tr>
                                      </tbody>
                                </table>
                            </div> 
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
            </div>
            </div>
             </div>
    </div>
            
            
   <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Modal Header</h4>
        </div>
        <div class="modal-body">
          <p>This is a small modal.</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
            

 </body>
</html>
