/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.util.List;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author JOSE
 */
public class ParroquiasDAOIT {
    
    public ParroquiasDAOIT() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    /**
     * Test of obtenerLista method, of class ParroquiasDAO.
     */
    @Test
    public void testObtenerLista() throws Exception {
        System.out.println("obtenerLista");
        List<Parroquia> lista = null;
        Parroquia dato = null;
        ParroquiasDAO instance = new ParroquiasDAO();
        instance.obtenerLista(lista, dato);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of obtenerRegistro method, of class ParroquiasDAO.
     */
    @Test
    public void testObtenerRegistro() throws Exception {
        System.out.println("obtenerRegistro");
        Parroquia dato = null;
        ParroquiasDAO instance = new ParroquiasDAO();
        Parroquia expResult = null;
        Parroquia result = instance.obtenerRegistro(dato);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
