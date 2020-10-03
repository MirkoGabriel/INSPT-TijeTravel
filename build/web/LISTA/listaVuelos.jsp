<%-- 
    Document   : listaUsuarios
    Created on : 26/01/2020, 19:35:31
    Author     : Mirko
--%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tije-Travel</title>
    </head>
    <body>
        <table align="center">
            <tr>
                <td colspan = "2" style="font-weight: bold;size: 70px" align="center"><h3>Listado Vuelos</h3></td>
            </tr>
        </table>
        <table align="center">
            <tr>
               <td style="font-weight: bold;size:12px;color:black" align ="center">Nro Vuelo</td>
               <td style="font-weight: bold;size:12px;color:black" align ="center">Origen</td>
               <td style="font-weight: bold;size:12px;color:black" align ="center">Destino</td>
                <td style="font-weight: bold;size:12px;color:black" align ="center">Asien Primera</td>
                <td style="font-weight: bold;size:12px;color:black" align ="center">Asien Turista</td>
            </tr>
            <logic:iterate name="lista" id="itemLista">
                <tr>
                    <td style="font-weight: bold;size:12px;color:blue" align ="center"><bean:write property="nroVuelo" name="itemLista"></bean:write></td>
                    <td style="font-weight: bold;size:12px;color:blue" align ="center"><bean:write property="origenVuelo" name="itemLista"></bean:write></td>
                    <td style="font-weight: bold;size:12px;color:blue" align ="center"><bean:write property="destinoVuelo" name="itemLista"></bean:write></td>
                    <td style="font-weight: bold;size:12px;color:blue" align ="center"><bean:write property="asientosPrim" name="itemLista"></bean:write></td>
                    <td style="font-weight: bold;size:12px;color:blue" align ="center"><bean:write property="asientosTurista" name="itemLista"></bean:write></td>
                </tr>
            </logic:iterate>
        </table>
    </body>
</html>
