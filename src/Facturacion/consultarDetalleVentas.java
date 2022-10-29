package Facturacion;

import ds.desktop.notify.DesktopNotify;
import java.awt.Color;
import java.awt.Font;
import java.awt.event.KeyEvent;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableColumnModel;

/**
 *
 * @author Angela
 */
public class consultarDetalleVentas extends javax.swing.JDialog {

    public consultarDetalleVentas(java.awt.Frame parent, boolean modal) {
        super(parent, modal);
        initComponents();
        setLocationRelativeTo(null);
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
        TablaVenta = new javax.swing.JTable();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        fechaini = new com.toedter.calendar.JDateChooser();
        fechafin = new com.toedter.calendar.JDateChooser();
        jButton1 = new javax.swing.JButton();
        txtTotal = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setUndecorated(true);

        jPanel1.setBackground(new java.awt.Color(51, 51, 51));
        jPanel1.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));
        jPanel1.setMinimumSize(new java.awt.Dimension(0, 0));
        jPanel1.setPreferredSize(new java.awt.Dimension(0, 0));
        jPanel1.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        lbTituloConsultaVentas.setFont(new java.awt.Font("Dialog", 1, 24)); // NOI18N
        lbTituloConsultaVentas.setForeground(new java.awt.Color(255, 255, 255));
        lbTituloConsultaVentas.setText("Consulta de Ventas");
        jPanel1.add(lbTituloConsultaVentas, new org.netbeans.lib.awtextra.AbsoluteConstraints(27, 16, -1, -1));

        btnCerrar.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/cerrar.png"))); // NOI18N
        btnCerrar.setBorder(null);
        btnCerrar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnCerrarActionPerformed(evt);
            }
        });
        jPanel1.add(btnCerrar, new org.netbeans.lib.awtextra.AbsoluteConstraints(1158, 7, -1, -1));

        TablaVenta.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {},
                {},
                {},
                {}
            },
            new String [] {

            }
        ));
        jScrollPane1.setViewportView(TablaVenta);

        jPanel1.add(jScrollPane1, new org.netbeans.lib.awtextra.AbsoluteConstraints(27, 164, 1155, 455));

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(255, 255, 255));
        jLabel1.setText("Fecha Inicial");
        jPanel1.add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(120, 82, 85, 25));

        jLabel2.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel2.setForeground(new java.awt.Color(255, 255, 255));
        jLabel2.setText("Fecha Final");
        jPanel1.add(jLabel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(211, 668, 111, 25));

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

        txtTotal.setFont(new java.awt.Font("Dialog", 1, 18)); // NOI18N
        txtTotal.setForeground(new java.awt.Color(0, 153, 0));
        txtTotal.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        txtTotal.setText("$ 0");
        txtTotal.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
        jPanel1.add(txtTotal, new org.netbeans.lib.awtextra.AbsoluteConstraints(990, 90, 130, 40));

        jLabel5.setText("Total Ventas");
        jPanel1.add(jLabel5, new org.netbeans.lib.awtextra.AbsoluteConstraints(1010, 60, -1, -1));

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
            java.util.logging.Logger.getLogger(consultarDetalleVentas.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(consultarDetalleVentas.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(consultarDetalleVentas.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(consultarDetalleVentas.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>

        /* Create and display the dialog */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                consultarDetalleVentas dialog = new consultarDetalleVentas(new javax.swing.JFrame(), true);
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
    private javax.swing.JTable TablaVenta;
    private javax.swing.JButton btnCerrar;
    private com.toedter.calendar.JDateChooser fechafin;
    private com.toedter.calendar.JDateChooser fechaini;
    private javax.swing.JButton jButton1;
    private com.toedter.calendar.JDateChooser jDateChooser3;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JLabel lbTituloConsultaVentas;
    private javax.swing.JLabel txtTotal;
    // End of variables declaration//GEN-END:variables

    //METODOS
    SimpleDateFormat formatoF = new SimpleDateFormat("yyyy/MM/dd");

    private void llenarTabla() {
        String fechaIni = formatoF.format(fechaini.getDate());
        String fechaFin = formatoF.format(fechafin.getDate());

        controladorFacturacion control = new controladorFacturacion();
        ArrayList<modeloFacturar> rpta = control.BuscarFacturas(fechaIni, fechaFin);
        ejecutarLLenarTabla(rpta);
    }

    public void confi_tabla() {
        TableColumnModel confi = TablaVenta.getColumnModel();
        TablaVenta.getTableHeader().setFont(new Font("Century Gothic", 1, 13));
        TablaVenta.setFont(new Font("Century Gothic", 0, 20));
        TablaVenta.setForeground(Color.WHITE);
        TablaVenta.setBackground(Color.GRAY);
        confi.getColumn(0).setPreferredWidth(5);
        confi.getColumn(1).setPreferredWidth(200);
        confi.getColumn(2).setPreferredWidth(5);
        confi.getColumn(3).setPreferredWidth(5);
        confi.getColumn(4).setPreferredWidth(5);
        TablaVenta.setRowHeight(25);
    }

    DecimalFormat precio_forato = new DecimalFormat("###,###");

    private void ejecutarLLenarTabla(ArrayList<modeloFacturar> rpta) {
        DefaultTableModel Mtabla = new DefaultTableModel();
        Mtabla.addColumn("Num.Factura");
        Mtabla.addColumn("Nombre Usuario");
        Mtabla.addColumn("Fecha de venta");        
        Mtabla.addColumn("Neto");
        Mtabla.addColumn("Total");
        TablaVenta.setModel(Mtabla);
        Object[] obj = new Object[5];
        for (modeloFacturar p : rpta) {
            obj[0] = p.getId();
            obj[1] = p.getIdUsuario();
            obj[2] = p.getFecha();            
            if (p.getNeto().equalsIgnoreCase("")) {
                obj[3] = "$0";
            } else {
                obj[3] = "$" + precio_forato.format(Integer.parseInt(p.getNeto()));
            }
            
            if (p.getTotal().equalsIgnoreCase("")) {
                obj[4] = "$0";
            } else {
                obj[4] = "$" + precio_forato.format(Integer.parseInt(p.getTotal()));
            }
            Mtabla.addRow(obj);
        }
        confi_tabla();
        sumaTotal();
    }
    
    
    
    String patron = "[^az AZ 0-9]"; //Quita caracteres especiales excepto los que estan allí especificados
    int total;
    
    //Este método suma la cantidad total de la compra en el label txtTotal
    public void sumaTotal() {
        this.total = 0;
        for (int i = 0; i < TablaVenta.getRowCount(); i++) {
            //getValueAt(i, 3) es el metodo que se usa para capturar la informacion de la tabla
            // el cual recibe 2 datos 
            //i = es el número de la fila, es el iterable
            //3 = es el número de la columna que necesitamos para operar, en esta caso es el valor
            //System.out.println("------- "+jTablaFacturar.getValueAt(i, 4).toString().replaceAll(patron, ""));
            int valor = Integer.parseInt(TablaVenta.getValueAt(i, 4).toString().replaceAll(patron, ""));
            this.total += valor;
        }
        txtTotal.setText("$" + precio_forato.format(total));
    }
}
