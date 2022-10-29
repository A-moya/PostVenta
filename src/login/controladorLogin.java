/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package login;
import java.util.logging.Level;

import conexion.Conexion;
import ds.desktop.notify.DesktopNotify;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Logger;
import Usuarios.*;

/**
 *
 * @author User
 */
public class controladorLogin {

    modeloUsuario login(String usu) {
        modeloUsuario modelo = new modeloUsuario();
        
        Conexion con = new Conexion();
        String sql = "SELECT * FROM `usuarios` WHERE usu = '"+usu+"'";
        System.out.println("sql: "+sql);
        
        //LAS POSICIONES EN LAS QUE SE ENCUENTRE EN LA BASE DE DATOS
        try {
            ResultSet rs = con.consultar(sql);
            while (rs.next()) {
                modelo.setId(rs.getString(1));
                modelo.setUsuario(rs.getString(2));
                modelo.setRol(rs.getString(7));
                modelo.setPass(rs.getString(9));
                
            }
        } catch (Exception e) {
            System.out.println("Error login sql: "+e);
        }
        return modelo;
    }
}
