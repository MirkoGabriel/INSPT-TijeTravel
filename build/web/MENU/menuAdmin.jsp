<%-- 
    Document   : menuAdmin
    Created on : 28/12/2019, 20:16:56
    Author     : mirko
--%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript">
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
                <td colspan = "2" style="font-weight: bold;size: 20px" align="center"><h3>Menu Administradores</h3></td>
            </tr>
            <tr>
                <td style="font-weight: bold;size:12px;color:blue" align ="center"><a href="CARGAR/cargarUsuario.jsp">Crear Nuevo Usuario</a></td>
            </tr>
            <tr>
                <td style="font-weight: bold;size:12px;color:blue" align ="center"><a  href="CARGAR/cargarHotel.jsp">Cargar Nuevo Hotel</a></td>
            </tr>
            <tr>
                <td style="font-weight: bold;size:12px;color:blue" align ="center"><a href="CARGAR/cargarVuelo.jsp">Cargar Nuevo Vuelo</a></td> 
            </tr>
            <tr>
                <td style="font-weight: bold;size:12px;color:blue" align ="center"><a href="CARGAR/cargarSucursal.jsp">Cargar Nueva Sucursal</a></td> 
            </tr>
            <tr>
                <td style="font-weight: bold;size:12px;color:blue" align ="center"><a href="LISTA/consultar.jsp">Consultar Datos</a></td>        
            </tr>
            <tr>
                <td style="font-weight: bold;size:12px;color:blue" align ="center">
                    <html:link href="javascript:listarHoteles()">Reservar Hotel
                    
                    </html:link>
                     <html:form action="/menuReservarHotel.do" styleId="formHotel">
                       
                    </html:form>
                </td>
            </tr>
            <tr>
                <td style="font-weight: bold;size:12px;color:blue" align ="center">
                    <html:link href="javascript:listarVuelos()">Reservar Vuelo
                    
                    </html:link>
                     <html:form action="/menuReservarVuelo.do" styleId="formVuelo">
                       
                    </html:form>
                </td>
            </tr>
            <tr>
                <td style="font-weight: bold;size:12px;color:blue" align ="center"><a href="index.jsp">Salir</a></td> 
            </tr>
        </table>
    </body>
</html>
