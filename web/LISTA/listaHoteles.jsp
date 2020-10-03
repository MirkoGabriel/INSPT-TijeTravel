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
                <td colspan = "2" style="font-weight: bold;size: 70px" align="center"><h3>Listado Hoteles</h3></td>
            </tr>
        </table>
        <table align ="center">
            <tr>
               <td style="font-weight: bold;size:12px;color:black" align ="center">Cod Hotel</td>
               <td style="font-weight: bold;size:12px;color:black" align ="center">Direccion</td>
               <td style="font-weight: bold;size:12px;color:black" align ="center">Ciudad</td>
               <td style="font-weight: bold;size:12px;color:black" align ="center">Telefono</td>
               <td style="font-weight: bold;size:12px;color:black" align ="center">Num Plazas</td>
               <td style="font-weight: bold;size:12px;color:black" align ="center">Tipo Pension</td>
            </tr>
            <logic:iterate name="lista" id="itemLista">
                <tr>
                    <td style="font-weight: bold;size:12px;color:blue" align ="center"><bean:write property="codHotel" name="itemLista"></bean:write></td>
                    <td style="font-weight: bold;size:12px;color:blue" align ="center"><bean:write property="direccion" name="itemLista"></bean:write></td>
                    <td style="font-weight: bold;size:12px;color:blue" align ="center"><bean:write property="ciudad" name="itemLista"></bean:write></td>
                    <td style="font-weight: bold;size:12px;color:blue" align ="center"><bean:write property="telefono" name="itemLista"></bean:write></td>
                    <td style="font-weight: bold;size:12px;color:blue" align ="center"><bean:write property="numPlazas" name="itemLista"></bean:write></td>
                    <td style="font-weight: bold;size:12px;color:blue" align ="center"><bean:write property="tipoPension" name="itemLista"></bean:write></td>
                </tr>
            </logic:iterate>
        </table>
    </body>
</html>
