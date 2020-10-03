/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 *
 */
package Action;

import Conexion.HibernateUtil;
import Form.HotelForm;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
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
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author Mirko
 */
public class AgregarHotel extends Action {

    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        HotelForm formHotel = (HotelForm) form;

        SessionFactory sess = HibernateUtil.getSessionFactory();
        Session session = sess.openSession();
        session.beginTransaction();
        session.save(formHotel);
        session.getTransaction().commit();

        
//        Hotel h = new Hotel(formHotel.getCodHotel(), formHotel.getDireccion(), formHotel.getCiudad(), formHotel.getTelefono(), formHotel.getTipoPension());
//        h.cargarDias(formHotel.getNumPlazas());
//        FileOutputStream f = new FileOutputStream(new File("C:\\Users\\Mirko\\Desktop\\UTN Informatica\\2do año\\PROGRAMACION II\\p2\\java\\agenciaStruts\\hotel.txt"), false);
//        ObjectOutputStream o = new ObjectOutputStream(f);
//        System.out.println(h.getCodHotel() + h.getDireccion());
//        System.out.println("algo hace");
//        o.writeObject(h);
//        o.close();
//        f.close();
        return mapping.findForward("ok");

    }
}
