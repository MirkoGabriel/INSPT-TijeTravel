/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import Dao.UsuarioDao;
import Form.UsuarioForm;
import java.sql.SQLException;
import java.util.List;
import junit.framework.TestCase;

/**
 *
 * @author Mirko
 */
public class TestMenu extends TestCase{
    public void testListaUsuarios() throws SQLException{
       UsuarioDao u=new UsuarioDao();
       List <UsuarioForm> lista = u.getListaUsuarios();
       assertTrue(lista.size()>0);
    }
    
        public void testListaUsuario6s() throws SQLException{
       UsuarioDao u=new UsuarioDao();
       List <UsuarioForm> lista = u.getListaUsuarios();
       assertTrue(lista.size()>0);
    }
}
