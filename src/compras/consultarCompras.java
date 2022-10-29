package compras;

import Facturacion.*;
import ds.desktop.notify.DesktopNotify;
import java.awt.Color;
import java.awt.Font;
import java.awt.event.KeyEvent;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableColumnModel;
import javax.swing.text.TabableView;

/**
 *
 * @author Angela
 */
public class consultarCompras extends javax.swing.JDialog {
    
    FacturaDetalle facDtalle;

    public consultarCompras(java.awt.Frame parent, boolean modal, FacturaDetalle facDtalle) {
        super(parent, modal);
        initComponents();
        setLocationRelativeTo(null);
        this.facDtalle=facDtalle;
        //DesktopNotify.showDesktopMessage("Notificacion", "\nPREGUNTAR ANULACIONES", DesktopNotify.SUCCESS, 20000);
    }


    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jDateChooser3 = new com.toedter.calendar.JDateChooser();
        jPanel1 = new javax.swing.JPanel();
        lbTituloConsultaVentas = new javax.swing.JLabel();
        btnCerrar = new javax.swing.JButton();
        jScrollPane1 = new javax.swing.JScrollPane();
        TablaCompra = new javax.swing.JTable();
        jLabel1 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        fechaini = new com.toedter.calendar.JDateChooser();
        fechafin = new com.toedter.calendar.JDateChooser();
        jButton1 = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setUndecorated(true);

        jPanel1.setBackground(new java.awt.Color(51, 51, 51));
        jPanel1.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));
        jPanel1.setMinimumSize(new java.awt.Dimension(0, 0));
        jPanel1.setPreferredSize(new java.awt.Dimension(0, 0));
        jPanel1.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        lbTituloConsultaVentas.setFont(new java.awt.Font("Dialog", 1, 24)); // NOI18N
        lbTituloConsultaVentas.setForeground(new java.awt.Color(255, 255, 255));
        lbTituloConsultaVentas.setText("Consulta de Compras");
        jPanel1.add(lbTituloConsultaVentas, new org.netbeans.lib.awtextra.AbsoluteConstraints(27, 16, -1, -1));

        btnCerrar.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/cerrar.png"))); // NOI18N
        btnCerrar.setBorder(null);
        btnCerrar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnCerrarActionPerformed(evt);
            }
        });
        jPanel1.add(btnCerrar, new org.netbeans.lib.awtextra.AbsoluteConstraints(1158, 7, -1, -1));

        TablaCompra.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {},
                {},
                {},
                {}
            },
            new String [] {

            }
        ));
        TablaCompra.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                TablaCompraKeyPressed(evt);
            }
        });
        jScrollPane1.setViewportView(TablaCompra);

        jPanel1.add(jScrollPane1, new org.netbeans.lib.awtextra.AbsoluteConstraints(27, 164, 1155, 455));

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(255, 255, 255));
        jLabel1.setText("Fecha Inicial");
        jPanel1.add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(120, 82, 85, 25));

        jLabel3.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel3.setForeground(new java.awt.Color(255, 255, 255));
        jLabel3.setText("Fecha Final");
        jPanel1.add(jLabel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(473, 78, 85, 25));
        jPanel1.add(fechaini, new org.netbeans.lib.awtextra.AbsoluteConstraints(211, 78, 192, -1));
        jPanel1.add(fechafin, new org.netbeans.lib.awtextra.AbsoluteConstraints(576, 74, 228, -1));

        jButton1.setText("Consultar");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });
        jPanel1.add(jButton1, new org.netbeans.lib.awtextra.AbsoluteConstraints(850, 70, -1, -1));

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, 1189, javax.swing.GroupLayout.PREFERRED_SIZE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, 700, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btnCerrarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnCerrarActionPerformed
        dispose();
    }//GEN-LAST:event_btnCerrarActionPerformed


    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        llenarTabla();
    }//GEN-LAST:event_jButton1ActionPerformed

    private void TablaCompraKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_TablaCompraKeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER) {
            
        }
    }//GEN-LAST:event_TablaCompraKeyPressed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(consultarCompras.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(consultarCompras.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(consultarCompras.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(consultarCompras.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>

        /* Create and display the dialog */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                consultarCompras dialog = new consultarCompras(new javax.swing.JFrame(), true, null);
                dialog.addWindowListener(new java.awt.event.WindowAdapter() {
                    @Override
                    public void windowClosing(java.awt.event.WindowEvent e) {
                        System.exit(0);
                    }
                });
                dialog.setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JTable TablaCompra;
    private javax.swing.JButton btnCerrar;
    private com.toedter.calendar.JDateChooser fechafin;
    private com.toedter.calendar.JDateChooser fechaini;
    private javax.swing.JButton jButton1;
    private com.toedter.calendar.JDateChooser jDateChooser3;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JLabel lbTituloConsultaVentas;
    // End of variables declaration//GEN-END:variables

    //METODOS
    SimpleDateFormat formatoF = new SimpleDateFormat("yyyy/MM/dd");
    
    
    public void confi_tabla() {
        TableColumnModel confi = TablaCompra.getColumnModel();
        TablaCompra.getTableHeader().setFont(new Font("Century Gothic", 1, 13));
        TablaCompra.setFont(new Font("Century Gothic", 0, 20));
        TablaCompra.setForeground(Color.WHITE);
        TablaCompra.setBackground(Color.GRAY);
        confi.getColumn(0).setPreferredWidth(5);
        confi.getColumn(1).setPreferredWidth(5);
        confi.getColumn(2).setPreferredWidth(200);
        confi.getColumn(3).setPreferredWidth(5);
        TablaCompra.setRowHeight(25);
    }

    
    private void llenarTabla() {
        String fechaIni = formatoF.format(fechaini.getDate());
        String fechaFin = formatoF.format(fechafin.getDate());

        controladorCompras control = new controladorCompras();
        ArrayList<modeloCompras> rpta = control.BuscarFacturas(fechaIni, fechaFin);
        ejecutarLLenarTabla(rpta);
    }

    
    DecimalFormat precio_forato = new DecimalFormat("###,###");
    private void ejecutarLLenarTabla(ArrayList<modeloCompras> rpta) {
        DefaultTableModel Mtabla = new DefaultTableModel();
        
        Mtabla= new DefaultTableModel() {

            //Reescribir el método para decirle que columnas son editables y cuales no
            public boolean isCellEditable(int rowIndex, int ColumnIndex) {
                //return false;
                return false;
            }
        };
        
        Mtabla.addColumn("Código de Producto");
        Mtabla.addColumn("Fecha de Compra");        
        Mtabla.addColumn("Producto");
        Mtabla.addColumn("Cantidad");
        TablaCompra.setModel(Mtabla);
        
        Object[] obj = new Object[4];
        for (modeloCompras p : rpta) {
            obj[0] = p.getId();
            obj[1] = p.getFecha();
            obj[2] = p.getProducto();        
            obj[3] = p.getCantidad();
            
            Mtabla.addRow(obj);
        }
        confi_tabla();
    }
    
}