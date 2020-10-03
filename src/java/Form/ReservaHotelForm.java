/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Form;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionServlet;
import org.apache.struts.upload.MultipartRequestHandler;

/**
 *
 * @author Mirko
 */
public class ReservaHotelForm extends ActionForm{
    private String codHotel;
    private String fechaDesde; 
    private String fechaHasta;
    private String numPlazas;
    private String codReservaHot;

    public String getCodHotel() {
        return codHotel;
    }

    public void setCodHotel(String codHotel) {
        this.codHotel = codHotel;
    }

    public String getFechaDesde() {
        return fechaDesde;
    }

    public void setFechaDesde(String fechaDesde) {
        this.fechaDesde = fechaDesde;
    }

    public String getFechaHasta() {
        return fechaHasta;
    }

    public void setFechaHasta(String fechaHasta) {
        this.fechaHasta = fechaHasta;
    }

    public String getNumPlazas() {
        return numPlazas;
    }

    public void setNumPlazas(String numPlazas) {
        this.numPlazas = numPlazas;
    }

    public String getCodReservaHot() {
        return codReservaHot;
    }

    public void setCodReservaHot(String codReservaHot) {
        this.codReservaHot = codReservaHot;
    }

    public ActionServlet getServlet() {
        return servlet;
    }

    public void setServlet(ActionServlet servlet) {
        this.servlet = servlet;
    }

    public MultipartRequestHandler getMultipartRequestHandler() {
        return multipartRequestHandler;
    }

    public void setMultipartRequestHandler(MultipartRequestHandler multipartRequestHandler) {
        this.multipartRequestHandler = multipartRequestHandler;
    }
    
    
}
