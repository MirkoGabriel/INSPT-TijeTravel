<%-- 
    Document   : cargarHotel
    Created on : 29/12/2019, 16:24:00
    Author     : mirko
--%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
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
                <td colspan = "2" style="font-weight: bold;size: 50px" align="center"><h3>Agregar Vuelo</h3></td>
            </tr>
            <html:form action="/agregarVuelo.do">
                <tr>
                    <td style="font-weight: bold;size:12px;color:blue" >Numero De Vuelo: </td>
                    <td>
                       <html:text property="nroVuelo"/> 
                    </td>
                </tr>
                <tr>
                    <td style="font-weight: bold;size:12px;color:blue">Origen Del Vuelo:</td>
                    <td>
                          <html:text property="origenVuelo"/>
                    </td>
                </tr>
                <tr>
                    <td style="font-weight: bold;size:12px;color:blue">Destino Del Vuelo:</td>
                    <td>
                         <html:text property="destinoVuelo"/>
                    </td>
                </tr>
                <tr>
                    <td style="font-weight: bold;size:12px;color:blue" >Asientos Primera: </td>
                    <td><html:text property="asientosPrim"/></td>
                </tr>
                <tr>
                    <td style="font-weight: bold;size:12px;color:blue" align ="center">Asientos Turista </td>
                    <td><html:text property="asientosTurista"/></td>
                </tr>
                <table align ="center">
                    <td>
                        <input type="submit" value="salir">
                        
                        <input type="submit" value="enviar">

                    </td>
                </table>
            </html:form>
        </table>
    </body>
</html>