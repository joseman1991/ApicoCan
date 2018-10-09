<%-- 
    Document   : actualizar
    Created on : 30-sep-2018, 23:45:10
    Author     : JOSE
--%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <title>Lista de Usuarios</title>
    </head>
    <body>


        <jsp:include page="../menuHorizontal.jsp"/>
        <div class="row">
            <div class="col-md-2">
                <jsp:include page="../menu.jsp" />        
            </div>

            <div class="col-md-10">
                <div class="container">
                    <h1>Lista de usuarios</h1>
                    <table>
                        <thead>
                        <th>Codigo</th>
                        <th>Colmena</th>
                        <th>Obrero</th>
                        <th>Marcos</th>
                        <th>Peso vacío</th>
                        <th>Peso lleno</th>
                        <th>Fecha</th>
                        <th>Tipo alza</th>
                        <th>Acciones</th>
                        </thead>
                        <tbody>
                            <s:iterator value="lista">
                                <tr>
                                    <td><s:property value="idcosecha"/></td>
                                    <td><s:property value="colmena.descripcion"/></td>
                                    <td><s:property value="idobrero"/></td>
                                    <td><s:property value="marcos"/></td>                   
                                    <td><s:property value="pesovacio"/></td>                   
                                    <td><s:property value="pesolleno"/></td>                   
                                    <td><s:property value="fecha"/></td>                   
                                    <td><s:property value="tipoalza"/></td>                   
                                    <td>
                                        <form action="actualiza" method="post">
                                            <input type="hidden" value="<s:property value="idcosecha"/>" name="idcosecha"/>
                                            <button type="submit">Editar</button>
                                        </form>    
                                    </td>
                                </tr>
                            </s:iterator>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>




        <script src="assets/jQuery/jquery-3.3.1.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    </body>
</html>
