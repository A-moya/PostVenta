/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Facturacion;

import conexion.Conexion;
import inventarios.modeloInventarios;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.swing.JOptionPane;

/**
 *
 * @author Angela
 */
public class controladorFacturacion {

    //---------------------------------------------------------------------------------------------------------------------------------------------------------------------
    // INTERFAZ CONSULTAR VENTAS--------------------------------------------------------------------------------------------------------------------------------------------
    ArrayList<modeloFacturar> BuscarFacturas(String fechaIni, String fechaFin) {
        Conexion con = new Conexion();
        ArrayList<modeloFacturar> rpta = new ArrayList<>();
        String sql = "SELECT "
                + "f.`id`,"
                + "u.usuario,"
                + "f.`fecha`,"
                + "f.`neto`,"
                + "f.`impuesto`,"
                + "f.total,"
                + "f.estado"
                + " FROM factura f JOIN usuarios u ON f.idUsuario=u.id "
                + "AND f.fecha BETWEEN '" + fechaIni + "' AND '" + fechaFin + "'";

        System.out.println("BuscarFacturas: " + sql);

        ResultSet rs = con.consultar(sql);
        try {
            while (rs.next()) {
                modeloFacturar modelo = new modeloFacturar();
                modelo.setId(rs.getString(1));
                modelo.setIdUsuario(rs.getString(2));
                modelo.setFecha(rs.getString(3));
                modelo.setNeto(rs.getString(4));
                modelo.setImpuesto(rs.getString(5));
                modelo.setTotal(rs.getString(6));
                modelo.setEstado(rs.getString(7));
                rpta.add(modelo);
            }
        } catch (Exception e) {
            System.out.println("Error en BuscarFacturas: " + e);
        }

        return rpta;
    }

    //---------------------------------------------------------------------------------------------------------------------------------------------------------------------
    // INTERFAZ FACTURAR VENTAS--------------------------------------------------------------------------------------------------------------------------------------------
    public ArrayList<modeloInventarios> listarCarrito(String id) {
        ArrayList<modeloInventarios> rpta1 = new ArrayList<>();
        Conexion con = new Conexion();

        String sql = "SELECT id, descripcion, cantidad, valor FROM `productos` WHERE id=" + id;
        System.out.println("SQL= " + sql);

        ResultSet rs = con.consultar(sql);
        try {
            while (rs.next()) {
                modeloInventarios modelo = new modeloInventarios();
                modelo.setId(rs.getString(1));
                modelo.setDescripcion(rs.getString(2));
                modelo.setCantidad(rs.getString(3));
                modelo.setValor(rs.getString(4));
                rpta1.add(modelo);
            }

        } catch (SQLException ex) {
            System.out.println("listar: " + ex);

        }

        return rpta1;
    }

    //
    boolean facturar(modeloFacturar modelof, ArrayList<modeloDetalle> productos) {
        int cont = 0;//5--4
        Conexion con = new Conexion();
        String sql = "INSERT INTO `factura`( `fecha`, `idUsuario`, `neto`, `impuesto`, `total`, `estado`) "
                + "VALUES ("
                + "'" + modelof.getFecha() + "',"
                + "'" + modelof.getIdUsuario() + "',"
                + "'" + modelof.getNeto() + "',"
                + "'" + modelof.getImpuesto() + "',"
                + "'" + modelof.getTotal() + "',"
                + "'" + modelof.getEstado() + "')";

        if (con.ejecutar(sql)) {
            System.out.println("factura registrada");

            
            //Elegir el ultimo Id y con ello registrar en la tabla detalles
            sql = "SELECT MAX(`id`) AS id FROM `factura`";
            ResultSet rs = con.consultar(sql);

            try {
                while (rs.next()) {
                    String idfactura = rs.getString(1);

                    for (int i = 0; i < productos.size(); i++) {

                        sql = "INSERT INTO `detalle`( `idFactura`, `idProducto`, `valor`, `cantidad`, `total`) "
                                + "VALUES ("
                                + "'" + idfactura + "',"
                                + "'" + productos.get(i).getIdProducto() + "',"
                                + "'" + productos.get(i).getValor() + "',"
                                + "'" + productos.get(i).getCantidad() + "',"
                                + "'" + productos.get(i).getTotal() + "')";

                        System.out.println("facturar -----> " + sql);
                        
                        
                        
                        //UPDATE Productos SET cantidad = cantidad - '{$anterior}' where `id` = 
                        if (con.ejecutar(sql)) {
                            sql = "UPDATE Productos SET cantidad = cantidad - '" + productos.get(i).getCantidad() + "'"
                                    + " where `id` = '" + productos.get(i).getIdProducto() + "'";

                            if (con.ejecutar(sql)) {
                                cont++;
                            }
                        }
                    }
                }
            } catch (SQLException ex) {
                System.out.println("listar: " + ex);
            }

        }
        //productos.size() ---> cantidad de productos registrados
        //cont ---> cantidad de productos actualizados o restado de mi inventario
        if (productos.size() == cont) {
            return true;
        } else {
            return false;
        }
    }

    
    //---------------------------------------------------------------------------------------------------------------------------------------------------------------------
    // INTERFAZ FACTURAR DETALLES--------------------------------------------------------------------------------------------------------------------------------------------
    String patron = "[^az AZ 0-9]"; //Quita caracteres especiales excepto los que estan allí especificados
    
    ArrayList<modeloDetalle> buscarDetalle(String id) {
        ArrayList<modeloDetalle> rpta1 = new ArrayList<>();
        Conexion con = new Conexion();
        String sql = "SELECT\n" +
                        "d.id,\n" +
                        "p.descripcion,\n" +
                        "d.valor,\n" +
                        "d.cantidad,\n" +
                        "d.total\n" +
                        "\n" +
                        "FROM detalle d \n" +
                        "JOIN factura f ON \n" +
                        "f.id=d.idFactura\n" +
                        "JOIN productos p ON \n" +
                        "p.id=d.idProducto WHERE f.id='"+id+"'";
        
        System.out.println("BuscarFacturasDetalle: " + sql);

        ResultSet rs = con.consultar(sql);
        try {
            while (rs.next()) {
                modeloDetalle modelo = new modeloDetalle();
                modelo.setId(rs.getString(1));
                modelo.setIdProducto(rs.getString(2));
                modelo.setValor(rs.getString(3).replaceAll(patron, ""));
                modelo.setCantidad(rs.getString(4));
                modelo.setTotal(rs.getString(5).replaceAll(patron, ""));
                rpta1.add(modelo);
            }
        } catch (Exception e) {
            System.out.println("Error en BuscarFacturasDetalle: " + e);
        }

        return rpta1;
    }
}
