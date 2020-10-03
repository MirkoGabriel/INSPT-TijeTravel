<%-- 
    Document   : menuVendedor
    Created on : 28/12/2019, 20:46:06
    Author     : mirko
--%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tije-Travel</title>
        <script type="text/javascript">
            function listarClientes() {
                document.getElementById("formCliente").submit();
            }
            function listarSucursales() {
                document.getElementById("formSucursal").submit();
            }
            function listarHoteles() {
                document.getElementById("formHotel").submit();
            }
            function listarRHoteles() {
                document.getElementById("formRHotel").submit();
            }
            function listarVuelos() {
                document.getElementById("formVuelo").submit();
            }
            function listarRVuelos() {
                document.getElementById("formRVuelo").submit();
            }
        </script>
    </head>
    <body>
        <table align="center">
            <tr>
                <td colspan = "2" style="font-weight: bold;size: 20px" align ="center"><h3>Menu Vendedor</h3></td>
            </tr>
            <tr>
                <td style="font-weight: bold;size:12px;color:blue" align ="center"><a href="CARGAR/cargarCliente.jsp">Cargar Cliente</a></td>
            </tr>
            <tr>
                <td style="font-weight: bold;size:12px;color:blue" align ="center">
                    <html:link href="javascript:listarClientes()">Listar Clientes
                    
                    </html:link>
                     <html:form action="/listarClientes.do" styleId="formCliente">
                       
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
            <tr>
                <td style="font-weight: bold;size:12px;color:blue" align ="center">
                    <html:link href="javascript:listarRHoteles()">Reservar Hotel
                    
                    </html:link>
                     <html:form action="/menuReservarHotel.do" styleId="formRHotel">
                       
                    </html:form>
                </td>
            </tr>
            <tr>
                <td style="font-weight: bold;size:12px;color:blue" align ="center">
                    <html:link href="javascript:listarRVuelos()">Reservar Vuelo
                    
                    </html:link>
                     <html:form action="/menuReservarVuelo.do" styleId="formRVuelo">
                       
                    </html:form>
                </td>
            </tr>
            <tr>
                <td style="font-weight: bold;size:12px;color:blue" align ="center"><a href="index.jsp">Salir</a></td> 
            </tr>
        </table>
    </body>
</html>
