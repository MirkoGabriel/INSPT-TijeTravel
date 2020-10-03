<%-- 
    Document   : listaViaje
    Created on : 07/03/2020, 13:24:22
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
                <td colspan = "2" style="font-weight: bold;size: 70px" align="center"><h3>Reserva Hotel</h3></td>
            </tr>
        </table>

        <table align ="center">
            <tr>
                <%--  <td style="font-weight: bold;size:12px;color:black" align ="center">Reserva Hotel</td> --%>
                <td style="font-weight: bold;size:12px;color:black" align ="center">Cod Hotel</td>
                <td style="font-weight: bold;size:12px;color:black" align ="center">Fecha Desde</td>
                <td style="font-weight: bold;size:12px;color:black" align ="center">Fecha Hasta</td>
                <td style="font-weight: bold;size:12px;color:black" align ="center">Num Plazas</td>
            </tr>
            <tr>
               <%-- <td style="font-weight: bold;size:12px;color:blue" align ="center"><bean:write property="codReservaHot" name="reserva"></bean:write></td> --%>
                <td style="font-weight: bold;size:12px;color:blue" align ="center"><bean:write property="codHotel" name="reserva"></bean:write></td>
                <td style="font-weight: bold;size:12px;color:blue" align ="center"><bean:write property="fechaDesde" name="reserva"></bean:write></td>
                <td style="font-weight: bold;size:12px;color:blue" align ="center"><bean:write property="fechaHasta" name="reserva"></bean:write></td>
                <td style="font-weight: bold;size:12px;color:blue" align ="center"><bean:write property="numPlazas" name="reserva"></bean:write></td>

                </tr>

            </table>
            <table align="center">
                <tr>
                    <td colspan = "2" style="font-weight: bold;size: 70px" align="center"><h3>Reserva Vuelo</h3></td>
                </tr>
            </table>
            <table align ="center">
                <tr>
                <%--  <td style="font-weight: bold;size:12px;color:black" align ="center">Reserva Vuelo</td> --%>
                    <td style="font-weight: bold;size:12px;color:black" align ="center">Nro Vuelo</td>
                    <td style="font-weight: bold;size:12px;color:black" align ="center">Nro Asientos</td>
                    <td style="font-weight: bold;size:12px;color:black" align ="center">Clase</td>
                </tr>
                <tr>
                <%--    <td style="font-weight: bold;size:12px;color:blue" align ="center"><bean:write property="codReserva" name="reserva"></bean:write></td> --%>
                <td style="font-weight: bold;size:12px;color:blue" align ="center"><bean:write property="nroVuelo" name="reserva"></bean:write></td>
                <td style="font-weight: bold;size:12px;color:blue" align ="center"><bean:write property="nroAsientos" name="reserva"></bean:write></td>
                <td style="font-weight: bold;size:12px;color:blue" align ="center"><bean:write property="clase" name="reserva"></bean:write></td>
           
            </tr>

        </table>
    </body>
</html>
