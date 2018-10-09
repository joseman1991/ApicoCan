<%-- 
    Document   : registrarColmena
    Created on : 04-oct-2018, 11:37:37
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
        <title>Registrar nuevo mantenimiento</title>
    </head>
    <body>

        <jsp:include page="../menuHorizontal.jsp"/>
        <div class="row">
            <div class="col-md-2">
                <jsp:include page="../menu.jsp" />        
            </div>

            <div class="col-md-10">
                <div class="container">
                    <s:if test="listaColmenas.size()<1">
                        <h3>Necesitas al memos una colmena para hacer un mantenimiento</h3>
                    </s:if>
                    <s:else>
                        <h1>Registrar nuevo mantenimiento</h1>
                        <form action="mantenimientogistrado" method="post">
                            <label for="idcolmena">Colmena</label> 
                            <select name="idcolmena">
                                <s:iterator value="listaColmenas">
                                    <option value="<s:property value="idcolmena"/>"><s:property value="descripcion"/></option>
                                </s:iterator>
                            </select><br>               
                            <label for="tipo">Tipo</label>   <input type="text" name="tipo" max="45" required=""/> <br>                
                            <label for="fecha">Fecha</label>   <input type="date" name="fecha" max="45" required=""/> <br>
                            <label for="idobrero">Id Obrero </label><input type="number" name="idobrero" value="1" min="1" required=""/> <br>  
                            <label for="alimentacion">Alimentacion </label><input type="number" name="alimentacion" value="1" min="1" required=""/> <br>
                            <input type="submit" value="Registrar Colmena"/>
                            <span><s:property value="mensaje"/></span>
                        </form> 
                    </s:else>
                </div>
            </div>
        </div>



        <script src="assets/jQuery/jquery-3.3.1.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>

    </body>
</html>








