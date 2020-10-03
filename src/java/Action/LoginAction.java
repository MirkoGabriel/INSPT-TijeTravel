/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Action;

import Dao.IfaceLogin;
import Dao.ImplLogin;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import Form.UsuarioForm;

/**
 *
 * @author mirko
 */
public class LoginAction extends org.apache.struts.action.Action {

    /* forward name="success" path="" */
    private static final String ADMIN = "admin";
    private static final String VENDEDOR = "vendedor";
    private static final String CLIENTE = "cliente";

    /**
     * This is the action called from the Struts framework.
     *
     * @param mapping The ActionMapping used to select this instance.
     * @param form The optional ActionForm bean for this request.
     * @param request The HTTP Request we are processing.
     * @param response The HTTP Response we are processing.
     * @throws java.lang.Exception
     * @return
     */
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        UsuarioForm login = (UsuarioForm) form;
//        System.out.println("Email : " + login.getEmail());
//        System.out.println("Contraseña : " + login.getPassword());
        IfaceLogin iface = new ImplLogin();
        login = iface.validaLogin(login);

        if (login != null && login.getTipo().equals("A")) {
            return mapping.findForward(ADMIN);
        }else if(login != null && login.getTipo().equals("V")){
            return mapping.findForward(VENDEDOR); 
        }else if(login != null && login.getTipo().equals("C")){
            return mapping.findForward(CLIENTE); 
        }else {
            return mapping.findForward("error");
        }

    }
}
