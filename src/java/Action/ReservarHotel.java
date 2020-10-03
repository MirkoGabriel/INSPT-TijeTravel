/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Action;

import Conexion.Conexion;
import Form.ReservaHotelForm;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
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
public class ReservarHotel extends Action {

    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        ReservaHotelForm reserva = (ReservaHotelForm) form;
        int num2 = Integer.parseInt(reserva.getNumPlazas()); // guardo el num plazas ingresado por teclado
        int flag = 0; // flag si esta en 0 manda un ok si esta en 1 error
//            System.out.println("mirko poimn");
//            System.out.println(reserva.getCodHotel() + reserva.getFechaDesde() + reserva.getFechaHasta() + reserva.getNumPlazas());
//            System.out.println("mirko bye");
        //Ingresa datos a la tabla para consultar
        String queryCon = "insert into conreshot values ('"+reserva.getCodReservaHot()+ "', '"+ reserva.getCodHotel() + "', '" + reserva.getFechaDesde() + "', '" + reserva.getFechaHasta() + "', '" + reserva.getNumPlazas() + "')";
        Statement stmt3 = Conexion.getConexion().createStatement();
        stmt3.executeUpdate(queryCon);
        Conexion.getConexion().close();
        
        flag = 0;
       
        String query = "SELECT * FROM reservahotel WHERE codHotel ='" + reserva.getCodHotel() + "'";//consulta si hay una reserva con el cod ingresado

//            System.out.println("aca vaaaa" + num2);
        Statement stmt = Conexion.getConexion().createStatement();
        ResultSet rst = stmt.executeQuery(query);

        if (rst.next()) { // si hay un registro con el codHotel ingresado actualiza las plazas y pone flag en 0

            String qTopPL = "SELECT * FROM hotel WHERE codHotel ='" + reserva.getCodHotel() + "'";
            Statement stmt0 = Conexion.getConexion().createStatement();
            ResultSet rst0 = stmt0.executeQuery(qTopPL);

            if (rst0.next()) {
                int tope = Integer.parseInt(rst0.getString(6));
                //System.out.println("esta es la poinnnnnn"+tope);
                String numplazas = rst.getString(4);
                int num = Integer.parseInt(numplazas);
                int act = num + num2;
//                    System.out.println(num);
//                    System.out.println(num2);
//                    System.out.println(act);

                if (act > tope) {
                    flag = 1;
                } else {
                    String queryUpdt = "UPDATE reservahotel SET numPlazas='" + act + "' WHERE codHotel='" + rst.getString(1) + "'";
                    Statement stmt2 = Conexion.getConexion().createStatement();
                    stmt2.executeUpdate(queryUpdt);
                    Conexion.getConexion().close();
                    flag = 0;
                }
            }
        } else {// si no esta el registro en la tabla con el codHotel inserta los valores y pone la flag en 1
            String queryIns = "insert into reservahotel values ('" + reserva.getCodHotel() + "', '" + reserva.getFechaDesde() + "', '" + reserva.getFechaHasta() + "', '" + reserva.getNumPlazas() + "')";
            Statement stmt1 = Conexion.getConexion().createStatement();
            stmt1.executeUpdate(queryIns);
            Conexion.getConexion().close();
            flag = 0;
        }

        if (flag == 0) {
            return mapping.findForward("ok");
        } else {
            return mapping.findForward("error");
        }

    }
}
