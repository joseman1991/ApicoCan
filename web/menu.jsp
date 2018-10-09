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


        <ul class="nav nav-pills nav-stacked list-unstyled bg-warning">  
            <li class="active"><s:a href="%{inicio}">Inicio <span class="glyphicon glyphicon-home pull-right"></span></s:a> </li>
                <li> 
                    <a href="#usuario" data-toggle="collapse" aria-expanded="false">Usuarios <span class="glyphicon glyphicon-menu-down pull-right"></span></a>                    
                    <ul class=" nav collapse " id="usuario">                    
                        <li ><s:a href="%{registro}">Agregar nuevo usuario</s:a></li>
                    <li><s:a href="%{actualizar}">Lista de Usuarios</s:a></li>                                   
                    </ul>
                </li>
                <li>
                    <a href="#sectores" data-toggle="collapse" aria-expanded="false">Sectores  <span class="glyphicon glyphicon glyphicon-menu-down pull-right"></span></a>
                    <ul class="nav collapse" id="sectores">
                        <li><s:a href="%{agregarsector}">Agregar nuevo sector  </s:a></li>
                        <li><a href="#">Actualizar sector</a></li>
                        <li><a href="#">Listado de sectores</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#colmenas" data-toggle="collapse" aria-expanded="false">Colmenas  <span class="glyphicon glyphicon glyphicon glyphicon-menu-down pull-right"></span></a>
                    <ul class="nav collapse" id="colmenas">
                        <li><s:a href="%{agregarcolmena}">Agregar nueva colmena </s:a></li>
                        <li><a href="#">Actualizar colmena</a></li>
                        <li><a href="#">Lista de colmenas</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#acciones" data-toggle="collapse" aria-expanded="false">Acciones <span class="glyphicon glyphicon-menu-down pull-right"></span></a>
                    <ul class="nav collapse" id="acciones">
                        <li><s:a href="%{agregarmantenimiento}">Agregar nuevo mantenimiento</s:a></li>
                    <li><s:a href="%{listademantenimiento}">Actualizar Mantenimiento</s:a></li>
                    <li><s:a href="%{cosechar}">Cosechar colmena</s:a></li>
                    <li><s:a href="%{editCosecha}">Editar Cosecha colmena</s:a></li>
                    <li><s:a href="%{listadecosechas}">Lista de Cosechas</s:a></li>
                </ul>
            </li>
        </ul>


    </body>
</html>
