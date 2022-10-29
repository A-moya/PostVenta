/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package administradores;

import Usuarios.modeloRol;
import conexion.Conexion;

/**
 *
 * @author Angela
 */
public class controladorAdmin {

    boolean guardar(modeloRol modelo) {
        Conexion con=new Conexion();
        String sql="INSERT INTO `roles`("
                + "`rol`) VALUES ("
                + "'"+modelo.getRol()+"')";
        
        System.out.println("guardar: "+sql);
        
        return con.ejecutar(sql);
    }
    
}
