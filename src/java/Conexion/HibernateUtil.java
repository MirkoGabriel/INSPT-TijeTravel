/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Conexion;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author Mirko
 */
public class HibernateUtil {
    
    private static  SessionFactory sessionFactory;
    
    static {
        try {
            sessionFactory = new Configuration().configure().buildSessionFactory();
        }
        catch (Exception e) {
            System.out.println("error al configurar session factory");
        }
    }
    
    public static SessionFactory getSessionFactory() {
        return  sessionFactory;
    }
}
