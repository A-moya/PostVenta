/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package inventarios;

/**
 *
 * @author User
 */
public class modeloInventarios {

    private String id;
    private String descripcion;
    private String valor;
    private String costo;
    private String cantidad;
    private String impuesto;
    private String estado;

    public modeloInventarios() {
    }

    public modeloInventarios(String id, String descripcion, String valor, String costo, String cantidad, String impuesto, String estado) {
        this.id = id;
        this.descripcion = descripcion;
        this.valor = valor;
        this.costo = costo;
        this.cantidad = cantidad;
        this.impuesto = impuesto;
        this.estado = estado;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getValor() {
        return valor;
    }

    public void setValor(String valor) {
        this.valor = valor;
    }

    public String getCosto() {
        return costo;
    }

    public void setCosto(String costo) {
        this.costo = costo;
    }

    public String getCantidad() {
        return cantidad;
    }

    public void setCantidad(String cantidad) {
        this.cantidad = cantidad;
    }

    public String getImpuesto() {
        return impuesto;
    }

    public void setImpuesto(String impuesto) {
        this.impuesto = impuesto;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
    
    
    
    
    

}
