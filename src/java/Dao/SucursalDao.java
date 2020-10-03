/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Conexion.HibernateUtil;
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
public class SucursalDao {
    public List<SucursalForm> getListaSucursales() throws SQLException {
//        ArrayList<SucursalForm> lista = new ArrayList<SucursalForm>();
//        SucursalForm sucursal;
//        String query = "SELECT * FROM sucursales ";
//        Statement stmt = Conexion.getConnection().createStatement();
//        ResultSet rs = stmt.executeQuery(query);
//        while (rs.next()) {
//            sucursal = new SucursalForm();
//            sucursal.setCodSucursal(rs.getString(2));
//            sucursal.setDireccionSucursal(rs.getString(3));
//            sucursal.setTelefonoSucursal(rs.getString(4));
//            lista.add(sucursal);
//        }
//        Conexion.getConnection().close();
        SessionFactory sess = HibernateUtil.getSessionFactory();
        Session session = sess.openSession();
        session.beginTransaction();
        List<SucursalForm> lista = session.createCriteria(SucursalForm.class).list();
        return lista;
    }
}
