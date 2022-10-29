/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package login;

import Escritorio.Escritorio;
import java.awt.MouseInfo;
import java.awt.Point;
import java.awt.event.KeyEvent;
import Usuarios.*;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.swing.JOptionPane;

/**
 *
 * @author User
 */
public class Login extends javax.swing.JFrame {
    /**
     * Creates new form Login
     */
    
    
    public Login() {
        initComponents();
        this.setLocationRelativeTo(null);
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        btnVerPass = new javax.swing.JButton();
        btnInicioSesion = new javax.swing.JButton();
        jPass = new javax.swing.JPasswordField();
        txtUsuario = new javax.swing.JTextField();
        lbCerrarLogin = new javax.swing.JLabel();
        lbFondo = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setUndecorated(true);
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel1.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        btnVerPass.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/botonPass.png"))); // NOI18N
        btnVerPass.setBorder(null);
        btnVerPass.setBorderPainted(false);
        btnVerPass.setContentAreaFilled(false);
        btnVerPass.setFocusPainted(false);
        btnVerPass.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mousePressed(java.awt.event.MouseEvent evt) {
                btnVerPassMousePressed(evt);
            }
            public void mouseReleased(java.awt.event.MouseEvent evt) {
                btnVerPassMouseReleased(evt);
            }
        });
        jPanel1.add(btnVerPass, new org.netbeans.lib.awtextra.AbsoluteConstraints(310, 310, 50, 30));

        btnInicioSesion.setBackground(new java.awt.Color(153, 153, 255));
        btnInicioSesion.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        btnInicioSesion.setForeground(new java.awt.Color(51, 204, 0));
        btnInicioSesion.setText("INICIAR SESION");
        btnInicioSesion.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));
        btnInicioSesion.setOpaque(false);
        btnInicioSesion.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnInicioSesionActionPerformed(evt);
            }
        });
        jPanel1.add(btnInicioSesion, new org.netbeans.lib.awtextra.AbsoluteConstraints(80, 360, 240, 50));

        jPass.setBackground(new java.awt.Color(37, 62, 74));
        jPass.setBorder(null);
        jPass.setName(""); // NOI18N
        jPass.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                jPassKeyReleased(evt);
            }
        });
        jPanel1.add(jPass, new org.netbeans.lib.awtextra.AbsoluteConstraints(120, 310, 180, 30));

        txtUsuario.setBackground(new java.awt.Color(37, 62, 74));
        txtUsuario.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        txtUsuario.setBorder(null);
        jPanel1.add(txtUsuario, new org.netbeans.lib.awtextra.AbsoluteConstraints(120, 260, 180, 30));

        lbCerrarLogin.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/cerrar.png"))); // NOI18N
        lbCerrarLogin.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                lbCerrarLoginMouseClicked(evt);
            }
        });
        jPanel1.add(lbCerrarLogin, new org.netbeans.lib.awtextra.AbsoluteConstraints(880, 10, -1, -1));

        lbFondo.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/login.png"))); // NOI18N
        jPanel1.add(lbFondo, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, -1, 520));

        getContentPane().add(jPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 920, 520));

        pack();
    }// </editor-fold>//GEN-END:initComponents

    //
    private void lbCerrarLoginMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lbCerrarLoginMouseClicked
        this.dispose();
    }//GEN-LAST:event_lbCerrarLoginMouseClicked

    private void btnVerPassMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnVerPassMousePressed
        jPass.setEchoChar((char) 0);
    }//GEN-LAST:event_btnVerPassMousePressed

    private void btnVerPassMouseReleased(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btnVerPassMouseReleased
        jPass.setEchoChar('*');
    }//GEN-LAST:event_btnVerPassMouseReleased

    private void btnInicioSesionActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnInicioSesionActionPerformed
        iniSesion();
    }//GEN-LAST:event_btnInicioSesionActionPerformed

    private void jPassKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jPassKeyReleased
        if (evt.getKeyCode() == KeyEvent.VK_ENTER) {
            iniSesion();
        }
    }//GEN-LAST:event_jPassKeyReleased

    
    
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
            java.util.logging.Logger.getLogger(Login.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Login.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Login.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Login.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Login().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnInicioSesion;
    private javax.swing.JButton btnVerPass;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPasswordField jPass;
    private javax.swing.JLabel lbCerrarLogin;
    private javax.swing.JLabel lbFondo;
    private javax.swing.JTextField txtUsuario;
    // End of variables declaration//GEN-END:variables

    private void iniSesion() {
        String usu = txtUsuario.getText();
        String pass = String.valueOf(jPass.getPassword());
        System.out.println("pass: "+pass);
        
        //
        controladorLogin control = new controladorLogin ();
        modeloUsuario modelo = control.login(usu);
        
        if (modelo.getPass().equals(getMD5(pass))) {
            this.dispose();
            new Escritorio().setVisible(true);
            
        } else {
            JOptionPane.showMessageDialog(null, "Usuario Incorrecto");
            System.out.println("Usuario Incorrecto");
        }
    }
    
    public String getMD5(String input) {
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            byte[] messageDigest = md.digest(input.getBytes());
            BigInteger number = new BigInteger(1, messageDigest);

            String hashtext = number.toString(16);
            System.out.println(hashtext);

            while (hashtext.length() < 32) {
                hashtext = "0" + hashtext;
            }
            return hashtext;
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }
}