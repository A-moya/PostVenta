/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package inventarios;

import conexion.Conexion;
import ds.desktop.notify.DesktopNotify;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author User
 */
public class controladorInventarios {

    //REGISTRAR LOS PRODUCTOS EN LA BD
    boolean guardar(modeloInventarios modelo) {
        Conexion con = new Conexion();
        String sql = "INSERT INTO `productos`( "
                + "`descripcion`,"
                + " `valor`,"
                + " `costo`,"
                + " `cantidad`,"
                + " `impuesto`,"
                + " `estado`,"
                + " `proUsu`) VALUES ("
                + "'"+modelo.getDescripcion()+"',"
                + "'"+modelo.getValor()+"',"
                + "'"+modelo.getCosto()+"',"
                + "'"+modelo.getCantidad()+"',"
                + "'0',"
                + "'1',"
                + "'0')";

        System.out.println("guardar: " + sql);

        return con.ejecutar(sql);
    }

    //LISTAR EN LA TABLA LOS PRODUCTOS
    public ArrayList<modeloInventarios> listar() {
        ArrayList<modeloInventarios> rpta = new ArrayList<>();
        Conexion con = new Conexion();
        String sql = "SELECT * FROM `productos`";
        ResultSet rs = con.consultar(sql);

        try {

            while (rs.next()) {
                modeloInventarios modelo = new modeloInventarios();
                modelo.setId(rs.getString(1));
                modelo.setDescripcion(rs.getString(2));
                modelo.setValor(rs.getString(3));
                modelo.setCosto(rs.getString(4));
                modelo.setCantidad(rs.getString(5));
                modelo.setImpuesto(rs.getString(6));
                modelo.setEstado(rs.getString(7));
                rpta.add(modelo);
            }

        } catch (SQLException ex) {
            System.out.println("listar: " + ex);
        }

        return rpta;
    }

    //BUSCAR PRODUCTOS
    public ArrayList<modeloInventarios> buscar(String dato) {
        ArrayList<modeloInventarios> rpta = new ArrayList<>();
        Conexion con = new Conexion();
        String sql = "SELECT * FROM productos WHERE `descripcion` LIKE '%" + dato + "%'";
        System.out.println("buscar: " + sql);
        ResultSet rs = con.consultar(sql);

        try {

            while (rs.next()) {
                modeloInventarios modelo = new modeloInventarios();
                modelo.setId(rs.getString(1));
                modelo.setDescripcion(rs.getString(2));
                modelo.setValor(rs.getString(3));
                modelo.setCosto(rs.getString(4));
                modelo.setCantidad(rs.getString(5));
                modelo.setImpuesto(rs.getString(6));
                modelo.setEstado(rs.getString(7));
                rpta.add(modelo);
            }

        } catch (SQLException ex) {
            System.out.println("listar: " + ex);
        }
        return rpta;
    }

    //EDITAR PRODUCTOS
    public boolean editar(modeloInventarios modelo) {
        Conexion con = new Conexion();
        String sql = "UPDATE `productos` SET "
                + "`descripcion`='" + modelo.getDescripcion() + "',"
                + "`valor`='" + modelo.getValor() + "',"
                + "`costo`='" + modelo.getCosto() + "',"
                + "`cantidad`='" + modelo.getCantidad() + "',"
                + "`estado`='" + modelo.getEstado() + "' "
                + "WHERE `id`='" + modelo.getId() + "'";
        System.out.println("editar: " + sql);
        return con.ejecutar(sql);
    }
}
