<%-- 
    Document   : cargarSucursal
    Created on : 29/12/2019, 16:27:01
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
        <table align ="center">
            <tr>
                <td colspan = "2" style="font-weight: bold;size: 70px" align="center"><h3>Agregar Sucursal</h3></td>
            </tr>
            
            <html:form action="/agregarSucursal.do">
                <tr>
                    <td style="font-weight: bold;size:12px;color:blue" align ="center">Codigo De Sucursal: <html:text property="codSucursal"/> </td>
                    <td></td>
                </tr>
                <tr>
                    <td style="font-weight: bold;size:12px;color:blue" align ="center">Direccion De La Sucursal: <html:text property="direccionSucursal"/> </td>
                    <td></td>
                </tr>
                <tr>
                    <td style="font-weight: bold;size:12px;color:blue" align ="center">Telefono De La Sucursal: <html:text property="telefonoSucursal"/> </td>
                    <td></td>
                </tr>
                <tr>
                    <td style="font-weight: bold;size:12px;color:blue" align ="center"><input type="submit" value="enviar"></td>
                    <td></td>
                </tr>
            </html:form>
        </table>
    </body>
</html>
