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
        <script type="text/javascript">
            function listarViaje() {
                document.getElementById("formViaje").submit();
            }
        </script>
        <title>Tije-Travel</title>
    </head>
    <body>
        <table align="center">
            <tr>
                <td colspan = "2" style="font-weight: bold;size: 70px" align="center"><h3>Consultar Viaje</h3></td>
            </tr>

            <html:form action="consultarViaje.do">   
                <tr>
                    <td style="font-weight: bold;size:12px;color:blue" align ="center">Codigo De Reserva de Hotel: <html:text property="codReserva"/></td>
                </tr>
                <tr>
                    <td style="font-weight: bold;size:12px;color:blue" align ="center">Codigo De Reserva de Vuelo: <html:text property="codReservaV"/></td>
                </tr>
                <tr>
                    <td style="font-weight: bold;size:12px;color:blue" align ="center">
                        <input type="submit" value="enviar">
                    </td>
                </tr>
            </html:form>
        </table>
    </body>
</html>
