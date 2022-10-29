/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import Facturacion.facturarVentas;
import Facturacion.modeloFacturar;
import javax.swing.JTextField;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author Alexander
 */
public class pruebaInterfazFacturacion {
    
    
    modeloFacturar modelo;
    
    
    
    
    public pruebaInterfazFacturacion() {
         modelo = new modeloFacturar();
    }
    
    @BeforeClass
    public static void setUpClass() {
        System.out.println("metodo ante de la clase");
    }
    
    @AfterClass
    public static void tearDownClass() {
        System.out.println("metodo al finalizar la clase");
    }
    
    @Before
    public void setUp() {
        System.out.println("Inicio del metodo");
    }
    
    @After
    public void tearDown() {
        System.out.println("fin del metodo");
    }

    // TODO add test methods here.
    // The methods must be annotated with annotation @Test. For example:
    //
    // @Test
    // public void hello() {}
    
    
    
    @Test
    public void prueba1(){
       
    }
    
        @Test
    public void prueba2(){
        
    }
    
        @Test
    public void prueba3(){
        
    }
}
