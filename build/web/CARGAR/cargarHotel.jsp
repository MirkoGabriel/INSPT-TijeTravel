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
        <table align ="center">
            <tr>
                <td colspan = "2" style="font-weight: bold;size: 70px" align="center"><h3>Agregar Hotel</h3></td>
            </tr>
            <html:form action="/agregarHotel.do">
                <tr>
                    <td style="font-weight: bold;size:12px;color:blue" >Codigo De Hotel: </td>
                
                    <td style="font-weight: bold;size:12px;color:blue" ><html:text property="codHotel"/></td>
                </tr>
                <tr>
                    <td style="font-weight: bold;size:12px;color:blue" >Direccion De Hotel:</td>
                    <td style="font-weight: bold;size:12px;color:blue" ><html:text property="direccion"/></td>
                </tr>
                <tr>
                    <td style="font-weight: bold;size:12px;color:blue" >Ciudad Del Hotel: </td>
                    <td style="font-weight: bold;size:12px;color:blue" ><html:text property="ciudad"/></td>
                </tr>
                <tr>
                    <td style="font-weight: bold;size:12px;color:blue" >Telefono Del Hotel:</td>
                    <td style="font-weight: bold;size:12px;color:blue" ><html:text property="telefono"/></td>
                </tr>
                <tr>
                    <td style="font-weight: bold;size:12px;color:blue" >Numero De Plazas:</td>
                    <td style="font-weight: bold;size:12px;color:blue" ><html:text property="numPlazas"/> </td>
                </tr>
                <tr>
                    <td style="font-weight: bold;size:12px;color:blue" >
                        Tipo de pension: 
                    </td>
                    <td align ="center">
                        <html:select property="tipoPension">
                            <html:option value="C">Pension Completa</html:option>
                            <html:option value="M">Media Pension</html:option>
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
