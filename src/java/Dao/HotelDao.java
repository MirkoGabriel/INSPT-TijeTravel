/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Conexion.HibernateUtil;
import Form.HotelForm;
import Form.SucursalForm;
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
public class HotelDao {

    public List<HotelForm> getListaHoteles() throws SQLException {
        //ArrayList<HotelForm> lista = new ArrayList<HotelForm>();
       // HotelForm hotel;
//        String query = "SELECT * FROM hotel ";
//        Statement stmt = Conexion.getConnection().createStatement();
//        ResultSet rs = stmt.executeQuery(query);
//        while (rs.next()) {
//            hotel = new HotelForm();
//            hotel.setCodHotel(rs.getString(2));
//            hotel.setDireccion(rs.getString(3));
//            hotel.setCiudad(rs.getString(4));
//            hotel.setTelefono(rs.getString(5));
//            hotel.setNumPlazas(rs.getString(6));
//            hotel.setTipoPension(rs.getString(7));
//            lista.add(hotel);
//        }
//        Conexion.getConnection().close();

        SessionFactory sess = HibernateUtil.getSessionFactory();
        Session session = sess.openSession();
        session.beginTransaction();
        List<HotelForm> lista = session.createCriteria(HotelForm.class).list();
        return lista;
    }
}
