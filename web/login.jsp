<%-- 
    Document   : login
    Created on : 25/12/2019, 16:17:24
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
        <html:form action="/validateLogin.do">
            <table align="center">
                <tr>
                    <td colspan = "2" style="font-weight: bold;size: 20px" align="center">Ingresa Tu Usuario Y Contraseña</td>
                </tr>
            </table>
            <table align ="center">
                <tr>
                    <td style="font-weight: bold;size:12px;color:blue" align ="right">Email:</td>
                    <td><html:text property="email"/></td>
                </tr>
                <tr>
                    <td style="font-weight: bold;size:12px;color:blue" align ="right">Contraseña:</td>
                    <td><html:password property="password"/></td>
                </tr>
            </table>
            <table align="center">
                <tr>
                    <td><a href="index.jsp"><input type="button" value="Cancelar" style="font-size: 14px;color: blue"></a></td></td>
                    <td><input type="submit" value="Aceptar" style="font-size: 14px;color: blue"></td>
                </tr>    
            </table>
            <table align ="center">
            <tr>
                <td colpsan="2" align="center"><img src="img/imagen1.jpg" id="miImagen"></td>
            </tr>
            </table>
        </html:form>
        
    </body>
</html>
