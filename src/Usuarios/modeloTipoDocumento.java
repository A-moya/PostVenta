/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Usuarios;

/**
 *
 * @author Angela
 */
public class modeloTipoDocumento {
    private String id;
    private String tipoDocumento;

    
    
    //CONSTRUCTOR
    public modeloTipoDocumento() {
    }

    public modeloTipoDocumento(String id, String tipoDocumento) {
        this.id = id;
        this.tipoDocumento = tipoDocumento;
    }
    
    
    
    //GETTERS AND SETTERS

    /**
     * @return the id
     */
    public String getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(String id) {
        this.id = id;
    }

    /**
     * @return the tipoDocumento
     */
    public String getTipoDocumento() {
        return tipoDocumento;
    }

    /**
     * @param tipoDocumento the tipoDocumento to set
     */
    public void setTipoDocumento(String tipoDocumento) {
        this.tipoDocumento = tipoDocumento;
    }    
}
