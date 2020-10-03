<%-- 
    Document   : cargarUsuario
    Created on : 29/12/2019, 16:26:32
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
                <td colspan = "2" style="font-weight: bold;size: 70px" align="center"><h3>Alta Clientes</h3></td>
            </tr>
            <html:form action="/agregarCliente.do">
                <tr>
                    <td style="font-weight: bold;size:12px;color:blue" >nombre de usuario: </td>
                    <td><html:text property="nombre"/> </td>
                </tr>

                <tr>
                    <td style="font-weight: bold;size:12px;color:blue" >contraseña de usuario: </td>
                    <td><input type="password" id="password" name="password"></td>
                </tr>

                <tr>
                    <td style="font-weight: bold;size:12px;color:blue" >email de usuario:</td>
                    <td> <html:text property="email"/></td>
                </tr>

                <tr>
                    <td style="font-weight: bold;size:12px;color:blue" >
                        Tipo de usuario: 
                    </td>
                    <td align="center">
                        <html:select property="tipo">
                            <html:option value="C">Cliente</html:option>
                        </html:select>
                    </td>
                </tr>
                <table align ="center">
                    
                    <td>
                        
                        <input type="submit" value="enviar">

                    </td>
                </table>
            </html:form>
        </table>
    </body>
</html>
