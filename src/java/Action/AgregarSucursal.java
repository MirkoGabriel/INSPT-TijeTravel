/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Action;

import Conexion.HibernateUtil;
import Form.SucursalForm;
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
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author Mirko
 */
public class AgregarSucursal extends Action{
     @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        SucursalForm formSucursal = (SucursalForm) form;

//        try {
//            String query = "insert into sucursales values ('" + formSucursal.getCodSucursal() + "', '" + formSucursal.getDireccionSucursal() + "', '" + formSucursal.getTelefonoSucursal() + "')";
//            Statement stmt = Conexion.getConnection().createStatement();
//            stmt.executeUpdate(query);
//            Conexion.getConnection().close();
//
//        } catch (SQLException ex) {
//            Logger.getLogger(AgregarVuelo.class.getName()).log(Level.SEVERE, null, ex);
//            return mapping.findForward("error");
//        }
        SessionFactory sess = HibernateUtil.getSessionFactory();
        Session session = sess.openSession();
        session.beginTransaction();
        session.save(formSucursal);
        session.getTransaction().commit();
        
        return mapping.findForward("ok");

    }
}
