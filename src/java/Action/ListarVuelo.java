/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Action;

import Dao.VueloDao;
import java.sql.SQLException;
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
public class ListarVuelo extends Action{
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        try {

            VueloDao v =new VueloDao();
            request.setAttribute("lista",v.getListaVuelos());
        } catch (SQLException ex) {
            Logger.getLogger(AgregarVuelo.class.getName()).log(Level.SEVERE, null, ex);
            return mapping.findForward("error");
        }

        return mapping.findForward("ok");

    }
}
