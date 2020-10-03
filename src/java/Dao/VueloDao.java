/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;


import Conexion.HibernateUtil;
import Form.VueloForm;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author Mirko
 */
public class VueloDao {
    public List<VueloForm> getListaVuelos() throws SQLException {
//        ArrayList<VueloForm> lista = new ArrayList<VueloForm>();
//        VueloForm vuelo;
//        String query = "SELECT * FROM vuelos ";
//        Statement stmt = Conexion.getConnection().createStatement();
//        ResultSet rs = stmt.executeQuery(query);
//        while (rs.next()) {
//            vuelo=new VueloForm();
//            vuelo.setNroVuelo(rs.getString(2));
//            vuelo.setOrigenVuelo(rs.getString(3));
//            vuelo.setDestinoVuelo(rs.getString(4));
//            vuelo.setaTotales(rs.getString(5));
//            vuelo.setaDisponibles(rs.getString(6));
//            lista.add(vuelo);
//        }
//        Conexion.getConnection().close();
        SessionFactory sess = HibernateUtil.getSessionFactory();
        Session session = sess.openSession();
        session.beginTransaction();
        List<VueloForm> lista = session.createCriteria(VueloForm.class).list();
        return lista;
    }
}
