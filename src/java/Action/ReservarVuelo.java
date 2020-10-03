/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Action;

import Conexion.Conexion;
import Form.ReservaVueloForm;
import java.sql.ResultSet;
import java.sql.Statement;
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
public class ReservarVuelo extends Action {

    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        ReservaVueloForm reserva = (ReservaVueloForm) form;
        int num2 = Integer.parseInt(reserva.getNroAsientos());
        int flag = 0;

        String queryCon = "insert into conresvue values ('" + reserva.getCodReserva() + "', '" + reserva.getNroVuelo() + "', '" + reserva.getNroAsientos() + "', '" + reserva.getTipo() + "')";
        Statement stmt3 = Conexion.getConexion().createStatement();
        stmt3.executeUpdate(queryCon);
        Conexion.getConexion().close();
        String clase = reserva.getTipo();
        String query = "SELECT * FROM reservavuelo WHERE nroVuelo ='" + reserva.getNroVuelo() + "'";//consulta si hay una reserva con el cod ingresado
        Statement stmt = Conexion.getConexion().createStatement();
        ResultSet rst = stmt.executeQuery(query);

        if (rst.next()) {// si esta el nroVuelo en la tabla actualiza
            String qTopPL = "SELECT * FROM vuelos WHERE nroVuelo ='" + reserva.getNroVuelo() + "'";
            Statement stmt0 = Conexion.getConexion().createStatement();
            ResultSet rst0 = stmt0.executeQuery(qTopPL);

            if (rst0.next()) {
                if (clase.equals("Primera")) {
                    int topeP = Integer.parseInt(rst0.getString(5));
                    int numP = Integer.parseInt(rst.getString(2));
                    int actP = numP + num2;

                    if (actP > topeP) {
                        String delete = "DELETE FROM conresvue WHERE codReserva='" + reserva.getCodReserva() + "'";
                        Statement stmt4 = Conexion.getConexion().createStatement();
                        stmt4.executeUpdate(delete);
                        Conexion.getConexion().close();

                        flag = 1;
                    } else {
                        String queryUpdt = "UPDATE reservavuelo SET nroAsientosP='" + actP + "' WHERE nroVuelo='" + rst.getString(1) + "'";
                        Statement stmt2 = Conexion.getConexion().createStatement();
                        stmt2.executeUpdate(queryUpdt);
                        Conexion.getConexion().close();

                        flag = 0;
                    }
                } else {
                    int topeT = Integer.parseInt(rst0.getString(6));
                    int numT = Integer.parseInt(rst.getString(3));
                    int actT = numT + num2;

                    if (actT > topeT) {
                        String delete = "DELETE FROM conresvue WHERE codReserva='" + reserva.getCodReserva() + "'";
                        Statement stmt4 = Conexion.getConexion().createStatement();
                        stmt4.executeUpdate(delete);
                        Conexion.getConexion().close();

                        flag = 1;
                    } else {
                        String queryUpdt = "UPDATE reservavuelo SET nroAsientosT='" + actT + "' WHERE nroVuelo='" + rst.getString(1) + "'";
                        Statement stmt2 = Conexion.getConexion().createStatement();
                        stmt2.executeUpdate(queryUpdt);
                        Conexion.getConexion().close();

                        flag = 0;
                    }
                }

            }
        } else {// zino esta inserta 

            if (clase.equals("Primera")) {
                String queryIns = "insert into reservavuelo values ('" + reserva.getNroVuelo() + "', '" + reserva.getNroAsientos() + "', '" + 0 + "')";
                Statement stmt1 = Conexion.getConexion().createStatement();
                stmt1.executeUpdate(queryIns);
                Conexion.getConexion().close();
                flag = 0;
            } else {
                String queryIns = "insert into reservavuelo values ('" + reserva.getNroVuelo() + "', '" + 0 + "', '" + reserva.getNroAsientos() + "')";
                Statement stmt1 = Conexion.getConexion().createStatement();
                stmt1.executeUpdate(queryIns);
                Conexion.getConexion().close();
                flag = 0;
            }
        }

        if (flag == 0) {
            return mapping.findForward("ok");
        } else {
            return mapping.findForward("error");
        }
    }
}
