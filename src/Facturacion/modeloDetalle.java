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
public class modeloDetalle {

    private String id;
    private String idFactura;
    private String idProducto;
    private String valor;
    private String cantidad;
    private String total;

    public modeloDetalle() {
    }

    
    public modeloDetalle(String id, String idFactura, String idProducto, String valor, String cantidad, String total) {
        this.id = id;
        this.idFactura = idFactura;
        this.idProducto = idProducto;
        this.valor = valor;
        this.cantidad = cantidad;
        this.total = total;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getIdFactura() {
        return idFactura;
    }

    public void setIdFactura(String idFactura) {
        this.idFactura = idFactura;
    }

    public String getIdProducto() {
        return idProducto;
    }

    public void setIdProducto(String idProducto) {
        this.idProducto = idProducto;
    }

    public String getValor() {
        return valor;
    }

    public void setValor(String valor) {
        this.valor = valor;
    }

    public String getCantidad() {
        return cantidad;
    }

    public void setCantidad(String cantidad) {
        this.cantidad = cantidad;
    }

    public String getTotal() {
        return total;
    }

    public void setTotal(String total) {
        this.total = total;
    }
    
    
    
}
