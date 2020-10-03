/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;


import Conexion.HibernateUtil;
import Form.UsuarioForm;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Mirko
 */
public class ClienteDao {
     public List<UsuarioForm> getListaClientes() throws SQLException {
//        ArrayList<UsuarioForm> lista = new ArrayList<UsuarioForm>();
//        UsuarioForm usuario;
//        String query = "SELECT * FROM usuario  WHERE tipo='C'";
//        Statement stmt = Conexion.getConnection().createStatement();
//        ResultSet rs = stmt.executeQuery(query);
//        while (rs.next()) {
//            usuario = new UsuarioForm();
//            usuario.setEmail(rs.getString(3));
//            usuario.setNombre(rs.getString(2));
//            usuario.setPassword(rs.getString(4));
//            usuario.setTipo(rs.getString(5));
//            lista.add(usuario);
//        }
//        Conexion.getConnection().close();
//        return lista;
        SessionFactory sess = HibernateUtil.getSessionFactory();
        Session session = sess.openSession();
        session.beginTransaction();
        List<UsuarioForm> lista =session.createCriteria(UsuarioForm.class).add(Restrictions.eq("tipo", "C")).list();
        return lista;
    }
}
