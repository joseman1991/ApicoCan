<%-- 
    Document   : menu
    Created on : 30-sep-2018, 19:18:48
    Author     : JOSE
--%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    </head>
    <body>
        <ul class="nav nav-pills nav-stacked list-unstyled bg-info">  
            <li class="active"><s:a href="%{inicio}">Inicio <span class="glyphicon glyphicon-home pull-right"></span></s:a> </li>
                <s:if test="#user!=null">
                    <s:if test="#user.idperfil==1">
                    <li>                     
                        <a href="#usuario" data-toggle="collapse" aria-expanded="false">Usuarios <span class="glyphicon glyphicon-menu-down pull-right"></span></a>                    
                        <ul class=" nav collapse " id="usuario">                    
                            <li ><s:a href="%{registro}">Agregar nuevo usuario</s:a></li>
                            <li><s:a href="%{actualizar}">Lista de Usuarios</s:a></li>                                   
                            </ul>
                        </li>
                </s:if>

                <li>
                    <a href="#sectores" data-toggle="collapse" aria-expanded="false">Ganadería <span class="glyphicon glyphicon glyphicon-menu-down pull-right"></span></a>
                    <ul class="nav collapse" id="sectores">
                        <li><s:a href="%{agregarsector}">Agregar nuevo ganado </s:a></li>                       
                        <li><s:a href="%{sectores}">Lista de ganados</s:a></li>
                        </ul>
                    </li>
                    
                    <li>
                        <a href="#colmenas" data-toggle="collapse" aria-expanded="false">Agricultura <span class="glyphicon glyphicon glyphicon glyphicon-menu-down pull-right"></span></a>
                        <ul class="nav collapse" id="colmenas">
                            <li><s:a href="%{agregarcolmena}">Agregar cosecha </s:a></li>
                        <li><s:a href="%{listacolmenas}">Lista de cosechas</s:a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#acciones" data-toggle="collapse" aria-expanded="false">Reportes <span class="glyphicon glyphicon-menu-down pull-right"></span></a>
                        <ul class="nav collapse" id="acciones">                        
                            <li><s:a href="%{listademantenimiento}">Listado de general de Cosechas</s:a></li>
                        <li><s:a href="%{listadecosechas}">Lista de general de ganado</s:a></li>                     
                        </ul>
                    </li>
            </s:if>

        </ul>


    </body>
</html>
