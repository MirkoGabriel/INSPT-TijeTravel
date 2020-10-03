<%-- 
    Document   : consultarDatos
    Created on : 10/02/2020, 19:20:41
    Author     : Mirko
--%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript">
            function listarUsuarios() {
                document.getElementById("formUsuario").submit();
            }
            function listarSucursales() {
                document.getElementById("formSucursal").submit();
            }
            function listarHoteles() {
                document.getElementById("formHotel").submit();
            }
            function listarVuelos() {
                document.getElementById("formVuelo").submit();
            }
        </script>
        <title>Tije-Travel</title>
    </head>
    <body>
        <table align="center">
            <tr>
                <td colspan = "2" style="font-weight: bold;size: 20px" align="center"><h3>Consultar</h3></td>
            </tr>
            <tr>
                <td style="font-weight: bold;size:12px;color:blue" align ="center">
                    <html:link href="javascript:listarUsuarios()">Listar Usuarios
                    
                    </html:link>
                     <html:form action="/listarUsuarios.do" styleId="formUsuario">
                       
                    </html:form>
                </td>
            </tr>
            <tr>
                <td style="font-weight: bold;size:12px;color:blue" align ="center">
                    <html:link href="javascript:listarSucursales()">Listar Sucursales
                    
                    </html:link>
                     <html:form action="/listarSucursales.do" styleId="formSucursal">
                       
                    </html:form>
                </td>
            </tr>
            <tr>
                <td style="font-weight: bold;size:12px;color:blue" align ="center">
                    <html:link href="javascript:listarHoteles()">Listar Hoteles
                    
                    </html:link>
                     <html:form action="/listarHoteles.do" styleId="formHotel">
                       
                    </html:form>
                </td>
            </tr>
            <tr>
                <td style="font-weight: bold;size:12px;color:blue" align ="center">
                    <html:link href="javascript:listarVuelos()">Listar Vuelos
                    
                    </html:link>
                     <html:form action="/listarVuelos.do" styleId="formVuelo">
                       
                    </html:form>
                </td>
            </tr>
        </table>
    </body>
</html>
