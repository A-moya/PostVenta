/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conexion;

/**
 *
 * @author USUARIO
 */
public interface Configuracion {
    
    //CONEXIÓN A BD HOSTING
//    String DRIVER = "com.mysql.jdbc.Driver";
//    String DATA_BASE = "descalic_sgi";
//    String CONNECTION_URL = "jdbc:mysql://162.241.61.78/"+DATA_BASE;    
//    String USERNAME = "descalic_sgi";
//    String PASSWORD = "lJY3s@HowR@V";
    
    //CONEXIÓN A BD LOCAL
    String DRIVER = "com.mysql.jdbc.Driver";
    String DATA_BASE = "descalic_sgi";
    String CONNECTION_URL = "jdbc:mysql://localhost:3306/"+DATA_BASE;    
    String USERNAME = "root";
    String PASSWORD = "";
    
}
