/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package compras;

import conexion.Conexion;
import inventarios.modeloInventarios;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Angela
 */
public class controladorCompras {

    //---------------------------------------------------------------------------------------------------------------------------------------------------------------------
    // INTERFAZ REGISTRAR COMPRAS--------------------------------------------------------------------------------------------------------------------------------------------
    //BUSCAR CÓDIGO DEL PRODUCTO EN LA BD Y TRAER LA INFORMACIÓN NECESARIA
    modeloInventarios buscarCod (String cod) {
        modeloInventarios modelo = new modeloInventarios(); 
        
        Conexion con = new Conexion();
        String sql = "SELECT id, descripcion FROM `productos` WHERE id = '"+cod+"'";
        System.out.println("sql: "+sql);
        
        //LAS POSICIONES EN LAS QUE SE ENCUENTRE EN LA BASE DE DATOS
        try {
            ResultSet rs = con.consultar(sql);
            while (rs.next()) {
                modelo.setId(rs.getString(1));
                modelo.setDescripcion(rs.getString(2));
                
            }
        } catch (Exception e) {
            System.out.println("Error  sql: "+e);
        }
        return modelo;
    }

    
    //GUARDAR LAS COMPRAS 
    boolean guardarCompra(modeloCompras modelo) {
        //Contador
        //int cont = 0;//5--4
        boolean rp=false;
        Conexion con = new Conexion();
        String sql ="INSERT INTO `compras`("
                + "`idproducto`, "
                + "`fechacompra`, "
                + "`producto`, "
                + "`cantidad`) VALUES ("
                + "'"+modelo.getId()+ "',"
                + "'"+modelo.getFecha()+"',"
                + "'"+modelo.getProducto()+"',"
                + "'"+modelo.getCantidad()+"')";

        System.out.println("guardar: " + sql);
        
        
        //MODIFICAR LAS CANTIDADES DEL INVENTARIOS
        //UPDATE Productos SET cantidad = cantidad + '{$anterior}' where `id` = 
        if (con.ejecutar(sql)) { // si se comple
            sql = "UPDATE Productos SET cantidad = cantidad + '" + modelo.getCantidad()+ "'"
                    + " where `id` = '" + modelo.getId() + "'"; // ejecuta esto
             System.out.println("guardarCompra "+sql);
            if (con.ejecutar(sql)) {//si se cumple el proceso esta completo
                rp=true;
                //cont++;//<-- no es necesario por que es solo una modificacion en el caso anterior es por que registraban varios productos y queriamos saber cuantos se registron o se modificaron
            }
        }

        return rp;
    }

    
    //---------------------------------------------------------------------------------------------------------------------------------------------------------------------
    // INTERFAZ CONSULTAR COMPRAS--------------------------------------------------------------------------------------------------------------------------------------------
    ArrayList<modeloCompras> BuscarFacturas(String fechaIni, String fechaFin) {
        Conexion con = new Conexion();
        ArrayList<modeloCompras> rpta = new ArrayList<>();
        String sql = "SELECT * FROM `compras` WHERE fechacompra "
                + "BETWEEN '"+fechaIni+"' AND '"+fechaFin+"'";

        System.out.println("Buscar Facturas de Compras: " + sql);

        ResultSet rs = con.consultar(sql);
        try {
            while (rs.next()) {
                //Estas son las posiciones de la bd -----consultar bien
                modeloCompras modelo = new modeloCompras();
                modelo.setId(rs.getString(2));
                modelo.setFecha(rs.getString(3));
                modelo.setProducto(rs.getString(4));
                modelo.setCantidad(rs.getString(5));
                rpta.add(modelo);
            }
        } catch (Exception e) {
            System.out.println("Error en Buscar Facturas de Compras: " + e);
        }

        return rpta;
    }
}
