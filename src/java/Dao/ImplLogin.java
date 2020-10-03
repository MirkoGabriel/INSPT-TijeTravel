/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Conexion.HibernateUtil;
import Dao.IfaceLogin;
import Form.UsuarioForm;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author mirko
 */
public class ImplLogin implements IfaceLogin {

    public UsuarioForm validaLogin(UsuarioForm obj) {
//        LoginForm bean = null;
//        Connection conn = null;
//        PreparedStatement ps = null;
//        ResultSet rs = null;
//
//        try {
//            conn = new Conexion().getConnection();
//            StringBuilder sb = new StringBuilder();
//            sb.append("select * from usuario where email = ? and password = ?");
//            ps = conn.prepareStatement(sb.toString());
//            ps.setString(1, obj.getEmail());
//            ps.setString(2, obj.getPassword());
//            rs = ps.executeQuery();
//            if (rs.next()) {
//                bean = new LoginForm();
//                bean.setUsuario(rs.getString("nombre"));
//                bean.setPassword(rs.getString("password"));
//                bean.setEmail(rs.getString("email"));
//                bean.setTipo(rs.getString("tipo"));
//            }
//            ps.close();
//            rs.close();
//            conn.close();
//        } catch (SQLException ex) {
//            ex.printStackTrace();
//        }
        UsuarioForm defaul=null;
        SessionFactory sess = HibernateUtil.getSessionFactory();
        Session session = sess.openSession();
        session.beginTransaction();
        System.out.println("hola poin"+obj.getEmail() + obj.getPassword());
        UsuarioForm bean=(UsuarioForm)session.createCriteria(UsuarioForm.class).add(Restrictions.eq("email", obj.getEmail())).uniqueResult();
        System.out.println("bye poin"+bean.getEmail());
        if(bean!= null){
            if(bean.getPassword().equals(obj.getPassword())){
               return bean;
            }
        }
        return defaul;
    }

}
