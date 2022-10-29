/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Usuarios;

import conexion.Conexion;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Angela y Alexander
 */
public class controladorUsuario {

    //METODO CREAR USUARIOS
    boolean guardar(modeloUsuario modelo) {
        Conexion con = new Conexion();
        String sql = "INSERT INTO `usuarios`("
                + "`usuario`, "
                + "`tipoDocumento`, "
                + "`documento`, "
                + "`telefono`, "
                + "`direccion`, "
                + "`rol`, "
                + "`usu`, "
                + "`pass`, "
                + "`estado`) VALUES ("
                + "'" + modelo.getUsuario() + "',"
                + "'" + modelo.getTipoDocumento() + "',"
                + "'" + modelo.getDocumento() + "',"
                + "'" + modelo.getTelefono() + "',"
                + "'" + modelo.getDireccion() + "',"
                + "'" + modelo.getRol() + "',"
                + "'" + modelo.getUsu()+ "',"
                + "'" + modelo.getPass()+ "',"
                + "'1')";

        System.out.println("guardar: " + sql);

        return con.ejecutar(sql);
    }
    

    //METODO CONSULTAR BOTON BUSCAR
    ArrayList<modeloUsuario> buscar(String dato) {
        ArrayList<modeloUsuario> rpta = new ArrayList<>();
        Conexion con = new Conexion();
        String sql = "SELECT * FROM usuarios WHERE `usuario` LIKE '%" + dato + "%'";
        System.out.println("buscar: " + sql);
        ResultSet rs = con.consultar(sql);

        try {

            while (rs.next()) {
                modeloUsuario modelo = new modeloUsuario();
                modelo.setId(rs.getString(1));
                modelo.setUsuario(rs.getString(2));
                modelo.setTipoDocumento(rs.getString(3));
                modelo.setDocumento(rs.getString(4));
                modelo.setTelefono(rs.getString(5));
                modelo.setDireccion(rs.getString(6));
                modelo.setRol(rs.getString(7));
                modelo.setUsu(rs.getString(8));
                modelo.setPass(rs.getString(9));
                modelo.setEstado(rs.getString(10));
                rpta.add(modelo);
            }

        } catch (SQLException ex) {
            System.out.println("listar: " + ex);
        }

        return rpta;
    }

    
    //METODO MODIFICAR
    boolean editar(modeloUsuario modelo) {
        Conexion con = new Conexion();
        String sql = "UPDATE `usuarios` SET "
                + "`usuario`='" + modelo.getUsuario()+ "',"
                + "`tipoDocumento`='" + modelo.getTipoDocumento()+ "',"
                + "`documento`='" + modelo.getDocumento()+ "',"
                + "`telefono`='" + modelo.getTelefono()+ "',"
                + "`direccion`='" + modelo.getDireccion()+ "',"
                + "`rol`='" + modelo.getRol()+ "',"
                + "`usu`='" + modelo.getUsu()+ "',"
                + "`pass`='" + modelo.getPass()+ "',"
                + "`estado`='" + modelo.getEstado() + "' "
                + "WHERE `id`='" + modelo.getId() + "'";
        System.out.println("editar: " + sql);
        return con.ejecutar(sql);
    }

    //LISTAR EN LA TABLA
    ArrayList<modeloUsuario> listar() {
        ArrayList<modeloUsuario> rpta = new ArrayList<>();
        Conexion con = new Conexion();
        String sql = "SELECT\n"
                + "    u.id AS ID,\n"
                + "    u.usuario AS usuario,\n"
                + "    d.tipo_documento AS tipo,\n"
                + "    u.documento AS DOCUMENTO,\n"
                + "    u.telefono AS telefono,\n"
                + "    u.direccion AS Direccion,\n"
                + "    r.rol AS Rol,\n"
                + "    u.usu AS Usu,\n"
                + "    u.pass AS Pass,\n"
                + "    e.tipo_estado AS Estado\n"
                + "FROM\n"
                + "    `usuarios` u\n"
                + "JOIN roles r ON\n"
                + "    u.rol = r.id\n"
                + "JOIN estados e ON\n"
                + "    u.estado = e.id\n"
                + "JOIN documentos d ON\n"
                + "    u.tipoDocumento = d.id";
        ResultSet rs = con.consultar(sql);

        try {

            while (rs.next()) {
                modeloUsuario modelo = new modeloUsuario();
                modelo.setId(rs.getString(1));
                modelo.setUsuario(rs.getString(2));
                modelo.setTipoDocumento(rs.getString(3));
                modelo.setDocumento(rs.getString(4));
                modelo.setTelefono(rs.getString(5));
                modelo.setDireccion(rs.getString(6));
                modelo.setRol(rs.getString(7));
                modelo.setUsu(rs.getString(8));
                modelo.setPass(rs.getString(9));
                modelo.setEstado(rs.getString(10));
                rpta.add(modelo);
            }
        } catch (SQLException ex) {
            System.out.println("listar Usuario: " + ex);
        }
        return rpta;
    }
    
    
    //CONSULTAR BD Y TRAER INFO A EL COMBO BOX - ROL
    ArrayList<modeloRol> consultaRol() {
        ArrayList<modeloRol> rpta = new ArrayList<>();
        Conexion con = new Conexion();
        String sql = "SELECT * FROM `roles`";
        System.out.println("consultaRol: " + sql);

        ResultSet rs = con.consultar(sql);
        try {
            while (rs.next()) {
                modeloRol modelo = new modeloRol();
                modelo.setId(rs.getString(1));
                modelo.setRol(rs.getString(2));
                rpta.add(modelo);
            }
        } catch (Exception e) {
            System.out.println("error consultaRol: " + e);
        }
        return rpta;
    }

    //CONSULTAR BD Y TRAER INFO A EL COMBO BOX - TIPO DE DOCUMENTO
    ArrayList<modeloTipoDocumento> consultaTipoDocumento() {
        ArrayList<modeloTipoDocumento> rpta2 = new ArrayList<>();
        Conexion con = new Conexion();
        String sql = "SELECT * FROM `documentos`";
        System.out.println("consultaTipoDocumento: " + sql);

        ResultSet rs = con.consultar(sql);
        try {
            while (rs.next()) {
                modeloTipoDocumento modelo = new modeloTipoDocumento();
                modelo.setId(rs.getString(1));
                modelo.setTipoDocumento(rs.getString(2));
                rpta2.add(modelo);
            }
        } catch (Exception e) {
            System.out.println("error consultaTipoDocumento: " + e);
        }
        return rpta2;
    }
}
