<%-- 
    Document   : actualizar
    Created on : 30-sep-2018, 23:45:10
    Author     : 
--%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <script src="assets/jQuery/jquery-3.3.1.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <link href="css/style.css" rel="stylesheet">
        <link href="css/dataTables.bootstrap.min.css" rel="stylesheet">
        <script src="js/jquery.dataTables.min.js"></script>
        <script src="js/dataTables.bootstrap.min.js"></script>
        <script type="text/javascript" src="js/gijgo.min.js"></script>
        <link href="css/gijgo.min.css" rel="stylesheet" type="text/css" />
        <title>Listado de mantenimientos</title>
    </head>
    <body >


        <jsp:include page="../menuHorizontal.jsp"/>
        <div class="row content">
            <div class="col-md-2">
                <jsp:include page="../menu.jsp" />        
            </div>

            <div class="col-md-8">
                <div class="container col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading"><h3 class="text-warning">Listado de mantenimiento de la colmena <s:property value="mantenimiento.colmena.descripcion"/></h3></div>
                        <div class="panel-body" style="min-height: 600px; max-height: 600px;overflow-y: scroll;">

                            <div class="row">
                                <form class="form-inline col-md-12" action="imprimirc" method="post" target="_blank">
                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="fecha">Desde Fecha</label>   
                                        <div class="col-sm-6">
                                            <input  class="form-control" type="text" name="fecha" value="<s:date name=" new java.util.Date()" format="yyyy-MM-dd"/>" max="45" required="" id="datepicker" readonly=""/> 
                                            <input  class="form-control" type="hidden" name="idcolmena" value="<s:property value="mantenimiento.idcolmena"/>" id="idcolmena"/> 
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-sm-4" for="fecha">Hasta Fecha</label>   
                                        <div class="col-sm-6">
                                            <input  class="form-control" type="text" name="fecha2" value="<s:date name=" new java.util.Date()" format="yyyy-MM-dd"/>" max="45" required="" id="datepicker2" readonly=""/> 
                                        </div>
                                    </div>

                                    <div class="form-group">                                        
                                        <div class="col-sm-6">
                                            <button  class="btn btn-primary" type="button" id="buscar1">Buscar
                                                <span class="glyphicon glyphicon-search"></span>
                                            </button> 
                                        </div>
                                    </div>
                                    <div class="form-group">                                        
                                        <div class="col-sm-6">
                                            <button  class="btn btn-warning" type="submit"  max="45">Imprimir
                                                <span class="glyphicon glyphicon-print"></span>
                                            </button> 
                                        </div>
                                    </div>
                                </form>
                            </div><hr>

                             <div class="row form-inline">
                                <div class="form-group">
                                    <label class="control-label col-sm-3" >Colmena</label>
                                    <div class="col-sm-1">
                                        <input class="form-control" type="text" max="45" value="<s:property value="mantenimiento.colmena.descripcion"/>" readonly=""/>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="control-label col-sm-3" >Sector</label>   
                                    <div class="col-sm-1">
                                        <input  class="form-control" type="text" value="<s:property value="mantenimiento.colmena.sector.nombre"/>"  max="45" readonly=""/> 
                                    </div>
                                </div>
                            </div><hr>
                            
                            <div class="table-responsive">
                                <table class="table table-hover table-responsive table-bordered">
                                    <thead>
                                    <th>Codigo</th>
                                    <th>Tipo</th>
                                    <th>Fecha</th>
                                    <th>Obrero</th>
                                    <th>Aliementacion</th>             
                                    <th>Acciones</th>
                                    </thead>
                                    <tbody id="tbody">
                                        <s:iterator value="listaMantenimientos">
                                            <tr>
                                                <td><s:property value="idmantenimiento"/></td>
                                                <td><s:property value="tipo"/></td>
                                                <td><s:date name="fecha" format="EE, dd/MMM/yyyy"/></td>
                                                <td><s:property value="obrero.fullname"/></td>                 
                                                <td><s:property value="alimentacion"/></td> 
                                                <td>
                                                    <form action="actualizamantenimiento" method="post">
                                                        <input type="hidden" value="<s:property value="idmantenimiento"/>" name="idmantenimiento"/>
                                                        <button class="btn btn-warning btn-xs " data-toggle="tooltip" title="Editar mantenimiento" type="submit">
                                                            <span class="glyphicon glyphicon-edit"></span>
                                                        </button>
                                                    </form>  
                                                </td>
                                            </tr>
                                        </s:iterator>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
              <div class="col-sm-2 sidenav">
                <div class="well">
                    <p>Agricultura</p>
                    <img src="image/granero-aerogenerador_18591-54816.jpg" class="img-thumbnail" />
                </div>
                <div class="well">   
                    <p>Ganado</p>
                    <img src="image/ganado-vacuno-acaba-atmosfera-1.jpg" class="img-thumbnail" />                   
                </div>
            </div>
        </div>

        <footer class="container-fluid text-center">
            <p>Todos los Derechos Reservados 2018</p>
        </footer>



        <script type="text/javascript" src="mantenimientoView/js/mantenimiento.js">

        </script>

        <script >
            $(document).ready(function () {
                $('.table').DataTable({
                    "language": {
                        "lengthMenu": "Mostrando _MENU_ registro por página",
                        "zeroRecords": "Lo sentimos - no hay resultados",
                        "info": "Mostrando página _PAGE_ de _PAGES_",
                        "infoEmpty": "No hay registros",
                        "infoFiltered": "(filtrado de _MAX_ registros totales)",
                        "paginate": {
                            "first": "Primero",
                            "last": "'Last'Ultimo",
                            "next": "Siguiente",
                            "previous": "Anterior"
                        },
                        "search": "Buscar"

                    }
                });
                $('#datepicker').datepicker({
                    uiLibrary: 'bootstrap',
                    format: 'yyyy-mm-dd'
                });

                $('#datepicker2').datepicker({
                    uiLibrary: 'bootstrap',
                    format: 'yyyy-mm-dd'
                });
            });
        </script>

    </body>
</html>
