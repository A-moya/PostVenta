/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Facturacion;

/**
 *
 * @author Angela
 */
public class modeloFacturar {

    private String id;
    private String fecha;
    private String idUsuario;
    private String neto;
    private String impuesto;
    private String total;
    private String estado;

    //CONSTRUCTOR
    public modeloFacturar() {
    }

    public modeloFacturar(String id, String fecha, String idUsuario, String neto, String impuesto, String total, String estado) {
        this.id = id;
        this.fecha = fecha;
        this.idUsuario = idUsuario;
        this.neto = neto;
        this.impuesto = impuesto;
        this.total = total;
        this.estado = estado;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(String idUsuario) {
        this.idUsuario = idUsuario;
    }

    public String getNeto() {
        return neto;
    }

    public void setNeto(String neto) {
        this.neto = neto;
    }

    public String getImpuesto() {
        return impuesto;
    }

    public void setImpuesto(String impuesto) {
        this.impuesto = impuesto;
    }

    public String getTotal() {
        return total;
    }

    public void setTotal(String total) {
        this.total = total;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

   

}
