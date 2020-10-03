/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Action;

import Conexion.Conexion;
import Form.ConsultarCliente;
import Form.ReservaCompleta;
import Form.ReservaHotelForm;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author Mirko
 */
public class ConsultarViaje extends Action {

    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        try {
            
            ConsultarCliente consulta = (ConsultarCliente) form;
            ReservaCompleta reserva = new ReservaCompleta();;
            System.out.println("vamooo poinnnn que nesta sale"+consulta.getCodReserva());
            System.out.println("vamooo poinnnn que nesta sale"+consulta.getCodReserva());
            System.out.println("vamooo poinnnn que nesta sale"+consulta.getCodReserva());
            String query = "SELECT * FROM conreshot WHERE codReserva='" + consulta.getCodReserva() + "'";
            Statement stmt = Conexion.getConexion().createStatement();
            ResultSet rs = stmt.executeQuery(query);
            
            String query1 = "SELECT * FROM conresvue WHERE codReserva='" + consulta.getCodReservaV() + "'";
            Statement stmt1 = Conexion.getConexion().createStatement();
            ResultSet rs1 = stmt1.executeQuery(query1);
            if(rs1.next()){
                reserva.setCodReserva(rs1.getString(1));
                reserva.setNroVuelo(rs1.getString(2));
                reserva.setNroAsientos(rs1.getString(3));
                reserva.setClase(rs1.getString(4));
            }
            System.out.println(reserva.getCodReserva()+reserva.getNroVuelo()+reserva.getNroAsientos());
             System.out.println(reserva.getCodReserva()+reserva.getNroVuelo()+reserva.getNroAsientos());
             System.out.println(reserva.getCodReserva()+reserva.getNroVuelo()+reserva.getNroAsientos());
            if (rs.next()) {
                
                reserva.setCodReservaHot(rs.getString(1));
                reserva.setCodHotel(rs.getString(2));
                reserva.setFechaDesde(rs.getString(3));
                reserva.setFechaHasta(rs.getString(4));
                reserva.setNumPlazas(rs.getString(5));
            }
            Conexion.getConexion().close();
            System.out.println(reserva.getCodReservaHot()+reserva.getCodHotel()+reserva.getFechaDesde()+reserva.getFechaHasta()+reserva.getNumPlazas());
            System.out.println(reserva.getCodReservaHot()+reserva.getCodHotel()+reserva.getFechaDesde()+reserva.getFechaHasta()+reserva.getNumPlazas());
            System.out.println(reserva.getCodReservaHot()+reserva.getCodHotel()+reserva.getFechaDesde()+reserva.getFechaHasta()+reserva.getNumPlazas());
            
            
            request.setAttribute("reserva",reserva);
        } catch (SQLException ex) {
            Logger.getLogger(ConsultarViaje.class.getName()).log(Level.SEVERE, null, ex);
            return mapping.findForward("error");
        }

        return mapping.findForward("ok");

    }
}
