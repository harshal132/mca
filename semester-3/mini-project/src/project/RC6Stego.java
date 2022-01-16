package project;
import java.io.File;
import javax.swing.JOptionPane;
import javax.swing.filechooser.FileFilter;
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import java.io.*;
import java.util.*;
import utils.Steganography;
import utils.RC6;
import utils.ExtensionFileFilter;



import javax.swing.JFileChooser;
public class RC6Stego extends javax.swing.JFrame {

    
    public RC6Stego() {
       
        
        initComponents();
         jInternalFrame1.setVisible(false);
        jInternalFrame2.setVisible(false);
        jInternalFrame3.setVisible(false);
        jInternalFrame4.setVisible(false);
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">
    private void initComponents() {

        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jButton3 = new javax.swing.JButton();
        jButton4 = new javax.swing.JButton();
        jLabel1 = new javax.swing.JLabel();
        jInternalFrame1 = new javax.swing.JInternalFrame();
        jTextField1 = new javax.swing.JTextField();
        jPasswordField1 = new javax.swing.JPasswordField();
        jButton5 = new javax.swing.JButton();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jTextField2 = new javax.swing.JTextField();
        jLabel5 = new javax.swing.JLabel();
        jButton6 = new javax.swing.JButton();
        jButton7 = new javax.swing.JButton();
        jButton11 = new javax.swing.JButton();
        jLabel21 = new javax.swing.JLabel();
        jButton13 = new javax.swing.JButton();
        jInternalFrame4 = new javax.swing.JInternalFrame();
        jLabel15 = new javax.swing.JLabel();
        jLabel16 = new javax.swing.JLabel();
        jLabel17 = new javax.swing.JLabel();
        jTextField9 = new javax.swing.JTextField();
        jTextField10 = new javax.swing.JTextField();
        jButton19 = new javax.swing.JButton();
        jButton20 = new javax.swing.JButton();
        jButton21 = new javax.swing.JButton();
        jButton22 = new javax.swing.JButton();
        jLabel18 = new javax.swing.JLabel();
        jLabel19 = new javax.swing.JLabel();
        jInternalFrame2 = new javax.swing.JInternalFrame();
        jButton8 = new javax.swing.JButton();
        jLabel6 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        jTextField3 = new javax.swing.JTextField();
        jTextField5 = new javax.swing.JTextField();
        jLabel8 = new javax.swing.JLabel();
        jButton9 = new javax.swing.JButton();
        jButton10 = new javax.swing.JButton();
        jPasswordField2 = new javax.swing.JPasswordField();
        jButton12 = new javax.swing.JButton();
        jLabel9 = new javax.swing.JLabel();
        jLabel22 = new javax.swing.JLabel();
        jInternalFrame3 = new javax.swing.JInternalFrame();
        jLabel10 = new javax.swing.JLabel();
        jLabel11 = new javax.swing.JLabel();
        jLabel12 = new javax.swing.JLabel();
        jLabel13 = new javax.swing.JLabel();
        jTextField4 = new javax.swing.JTextField();
        jTextField6 = new javax.swing.JTextField();
        jTextField7 = new javax.swing.JTextField();
        jButton14 = new javax.swing.JButton();
        jButton15 = new javax.swing.JButton();
        jLabel14 = new javax.swing.JLabel();
        jTextField8 = new javax.swing.JTextField();
        jButton17 = new javax.swing.JButton();
        jButton18 = new javax.swing.JButton();
        jLabel20 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jButton1.setText("ENCRYPTION");
        jButton1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jButton1MouseClicked(evt);
            }
        });
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jButton2.setText("DECRYPTION");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        jButton3.setText("STEGANOGRAPHY");
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });

        jButton4.setText("STEGANALYSIS");
        jButton4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton4ActionPerformed(evt);
            }
        });

        jLabel1.setFont(new java.awt.Font("Algerian", 2, 24));
        jLabel1.setText("DATA SECURITY USING CRYPTOGRAPHY AND STEGANOGRAPHY");

        jInternalFrame1.setVisible(true);

        jPasswordField1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jPasswordField1ActionPerformed(evt);
            }
        });

        jButton5.setText("ENCRYPT");
        jButton5.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton5ActionPerformed(evt);
            }
        });

        jLabel2.setText("SELECT A FILE:");

        jLabel3.setText("PASSWORD:");

        jLabel4.setText("SAVE CRYPT FILE AS:");

        jLabel5.setFont(new java.awt.Font("Verdana", 1, 18));
        jLabel5.setText("RC6 ENCRYPTION");

        jButton6.setText("OPEN FILE");
        jButton6.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton6ActionPerformed(evt);
            }
        });

        jButton7.setText("SAVE FILE AS:");
        jButton7.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton7ActionPerformed(evt);
            }
        });

        jButton11.setText("OK!!");
        jButton11.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton11ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jInternalFrame1Layout = new javax.swing.GroupLayout(jInternalFrame1.getContentPane());
        jInternalFrame1.getContentPane().setLayout(jInternalFrame1Layout);
        jInternalFrame1Layout.setHorizontalGroup(
            jInternalFrame1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jInternalFrame1Layout.createSequentialGroup()
                .addGap(34, 34, 34)
                .addGroup(jInternalFrame1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jInternalFrame1Layout.createSequentialGroup()
                        .addGap(88, 88, 88)
                        .addComponent(jButton5)
                        .addGap(37, 37, 37)
                        .addComponent(jButton11))
                    .addGroup(jInternalFrame1Layout.createSequentialGroup()
                        .addGroup(jInternalFrame1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jInternalFrame1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                                .addComponent(jLabel2, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addComponent(jLabel3, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, 84, Short.MAX_VALUE))
                            .addComponent(jLabel4, javax.swing.GroupLayout.PREFERRED_SIZE, 112, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(jInternalFrame1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jInternalFrame1Layout.createSequentialGroup()
                                .addComponent(jTextField2, javax.swing.GroupLayout.PREFERRED_SIZE, 227, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 12, Short.MAX_VALUE)
                                .addComponent(jButton7))
                            .addComponent(jLabel5)
                            .addGroup(jInternalFrame1Layout.createSequentialGroup()
                                .addGroup(jInternalFrame1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                    .addComponent(jPasswordField1, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, 227, Short.MAX_VALUE)
                                    .addComponent(jTextField1, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, 227, Short.MAX_VALUE)
                                    .addGroup(jInternalFrame1Layout.createSequentialGroup()
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                        .addComponent(jLabel21, javax.swing.GroupLayout.DEFAULT_SIZE, 227, Short.MAX_VALUE)))
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 30, Short.MAX_VALUE)
                                .addComponent(jButton6)))))
                .addContainerGap())
        );
        jInternalFrame1Layout.setVerticalGroup(
            jInternalFrame1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jInternalFrame1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel5, javax.swing.GroupLayout.PREFERRED_SIZE, 36, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addGroup(jInternalFrame1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 20, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jTextField1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jButton6))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jInternalFrame1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel3)
                    .addComponent(jPasswordField1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jInternalFrame1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel4)
                    .addComponent(jButton7)
                    .addComponent(jTextField2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(19, 19, 19)
                .addGroup(jInternalFrame1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jButton11)
                    .addComponent(jButton5))
                .addGap(18, 18, 18)
                .addComponent(jLabel21)
                .addGap(193, 193, 193))
        );

        jButton13.setText("EXIT");
        jButton13.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton13ActionPerformed(evt);
            }
        });

        jInternalFrame4.setVisible(true);

        jLabel15.setFont(new java.awt.Font("Verdana", 1, 18)); // NOI18N
        jLabel15.setText("STEGANOGRAPHY DECODING");

        jLabel16.setText("Select Stego Image:");

        jLabel17.setText("Select Extract file location:");

        jButton19.setText("Open Image");
        jButton19.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton19ActionPerformed(evt);
            }
        });

        jButton20.setText("open File");
        jButton20.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton20ActionPerformed(evt);
            }
        });

        jButton21.setText("DECODE IMAGE");
        jButton21.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton21ActionPerformed(evt);
            }
        });

        jButton22.setText("OK!!");
        jButton22.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton22ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jInternalFrame4Layout = new javax.swing.GroupLayout(jInternalFrame4.getContentPane());
        jInternalFrame4.getContentPane().setLayout(jInternalFrame4Layout);
        jInternalFrame4Layout.setHorizontalGroup(
            jInternalFrame4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jInternalFrame4Layout.createSequentialGroup()
                .addGroup(jInternalFrame4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jInternalFrame4Layout.createSequentialGroup()
                        .addGap(186, 186, 186)
                        .addGroup(jInternalFrame4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jInternalFrame4Layout.createSequentialGroup()
                                .addGap(77, 77, 77)
                                .addComponent(jLabel19, javax.swing.GroupLayout.PREFERRED_SIZE, 153, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(jInternalFrame4Layout.createSequentialGroup()
                                .addGap(29, 29, 29)
                                .addComponent(jLabel18, javax.swing.GroupLayout.PREFERRED_SIZE, 164, javax.swing.GroupLayout.PREFERRED_SIZE))))
                    .addGroup(jInternalFrame4Layout.createSequentialGroup()
                        .addGap(96, 96, 96)
                        .addComponent(jLabel15, javax.swing.GroupLayout.PREFERRED_SIZE, 329, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(jInternalFrame4Layout.createSequentialGroup()
                        .addGap(60, 60, 60)
                        .addGroup(jInternalFrame4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jButton21)
                            .addComponent(jLabel16)
                            .addComponent(jLabel17))
                        .addGroup(jInternalFrame4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jInternalFrame4Layout.createSequentialGroup()
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                .addGroup(jInternalFrame4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                    .addComponent(jTextField10)
                                    .addComponent(jTextField9, javax.swing.GroupLayout.DEFAULT_SIZE, 188, Short.MAX_VALUE))
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addGroup(jInternalFrame4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                    .addComponent(jButton20, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(jButton19)))
                            .addGroup(jInternalFrame4Layout.createSequentialGroup()
                                .addGap(39, 39, 39)
                                .addComponent(jButton22)))))
                .addContainerGap(47, Short.MAX_VALUE))
        );
        jInternalFrame4Layout.setVerticalGroup(
            jInternalFrame4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jInternalFrame4Layout.createSequentialGroup()
                .addGap(52, 52, 52)
                .addComponent(jLabel15, javax.swing.GroupLayout.PREFERRED_SIZE, 38, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(26, 26, 26)
                .addGroup(jInternalFrame4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(jLabel17)
                    .addGroup(jInternalFrame4Layout.createSequentialGroup()
                        .addGroup(jInternalFrame4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jTextField9, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel16))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jTextField10, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addComponent(jButton20)
                    .addGroup(jInternalFrame4Layout.createSequentialGroup()
                        .addComponent(jButton19)
                        .addGap(26, 26, 26)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jInternalFrame4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jButton22)
                    .addComponent(jButton21))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 75, Short.MAX_VALUE)
                .addComponent(jLabel18)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel19)
                .addGap(23, 23, 23))
        );

        jInternalFrame2.setVisible(true);

        jButton8.setText("OPEN FILE");
        jButton8.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton8ActionPerformed(evt);
            }
        });

        jLabel6.setText("CRYPT FILE:");

        jLabel7.setText("PASSWORD:");

        jLabel8.setText("DESTN. FILE:");

        jButton9.setText("SAVE AS:");
        jButton9.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton9ActionPerformed(evt);
            }
        });

        jButton10.setText("DECRYPT");
        jButton10.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton10ActionPerformed(evt);
            }
        });

        jButton12.setText("OK!!");
        jButton12.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton12ActionPerformed(evt);
            }
        });

        jLabel9.setFont(new java.awt.Font("Verdana", 1, 18));
        jLabel9.setText("RC6 DECRYPTION");

        javax.swing.GroupLayout jInternalFrame2Layout = new javax.swing.GroupLayout(jInternalFrame2.getContentPane());
        jInternalFrame2.getContentPane().setLayout(jInternalFrame2Layout);
        jInternalFrame2Layout.setHorizontalGroup(
            jInternalFrame2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jInternalFrame2Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jInternalFrame2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel6, javax.swing.GroupLayout.PREFERRED_SIZE, 78, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel7)
                    .addComponent(jLabel8))
                .addGap(34, 34, 34)
                .addGroup(jInternalFrame2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jTextField5, javax.swing.GroupLayout.DEFAULT_SIZE, 269, Short.MAX_VALUE)
                    .addComponent(jPasswordField2, javax.swing.GroupLayout.DEFAULT_SIZE, 269, Short.MAX_VALUE)
                    .addComponent(jTextField3, javax.swing.GroupLayout.DEFAULT_SIZE, 269, Short.MAX_VALUE))
                .addGap(18, 18, 18)
                .addGroup(jInternalFrame2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jButton8)
                    .addComponent(jButton9))
                .addGap(24, 24, 24))
            .addGroup(jInternalFrame2Layout.createSequentialGroup()
                .addGap(106, 106, 106)
                .addComponent(jLabel9, javax.swing.GroupLayout.PREFERRED_SIZE, 181, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(229, Short.MAX_VALUE))
            .addGroup(jInternalFrame2Layout.createSequentialGroup()
                .addGroup(jInternalFrame2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                    .addGroup(javax.swing.GroupLayout.Alignment.LEADING, jInternalFrame2Layout.createSequentialGroup()
                        .addGap(59, 59, 59)
                        .addComponent(jLabel22, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                    .addGroup(javax.swing.GroupLayout.Alignment.LEADING, jInternalFrame2Layout.createSequentialGroup()
                        .addGap(93, 93, 93)
                        .addComponent(jButton10)
                        .addGap(18, 18, 18)
                        .addComponent(jButton12)))
                .addContainerGap(273, Short.MAX_VALUE))
        );
        jInternalFrame2Layout.setVerticalGroup(
            jInternalFrame2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jInternalFrame2Layout.createSequentialGroup()
                .addGroup(jInternalFrame2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jInternalFrame2Layout.createSequentialGroup()
                        .addGap(23, 23, 23)
                        .addComponent(jLabel9)
                        .addGap(31, 31, 31)
                        .addGroup(jInternalFrame2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel6)
                            .addComponent(jTextField3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(jInternalFrame2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(jLabel7)
                            .addComponent(jPasswordField2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addGroup(jInternalFrame2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel8)
                            .addComponent(jTextField5, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jButton9))
                        .addGap(35, 35, 35)
                        .addGroup(jInternalFrame2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jButton12)
                            .addComponent(jButton10))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jLabel22))
                    .addGroup(jInternalFrame2Layout.createSequentialGroup()
                        .addGap(76, 76, 76)
                        .addComponent(jButton8)))
                .addContainerGap(117, Short.MAX_VALUE))
        );

        jInternalFrame3.setVisible(true);

        jLabel10.setFont(new java.awt.Font("Verdana", 1, 18));
        jLabel10.setText("STEGANOGRAPHY ENCODING");

        jLabel11.setText("File to hide :");

        jLabel12.setText("Cover Image File");

        jLabel13.setText("Image Extension:");

        jButton14.setText("open File");
        jButton14.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton14ActionPerformed(evt);
            }
        });

        jButton15.setText("open Image");
        jButton15.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton15ActionPerformed(evt);
            }
        });

        jLabel14.setText("Stego Image Name");

        jButton17.setText("ENCODE IMAGE");
        jButton17.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton17ActionPerformed(evt);
            }
        });

        jButton18.setText("OK!!");
        jButton18.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton18ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jInternalFrame3Layout = new javax.swing.GroupLayout(jInternalFrame3.getContentPane());
        jInternalFrame3.getContentPane().setLayout(jInternalFrame3Layout);
        jInternalFrame3Layout.setHorizontalGroup(
            jInternalFrame3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jInternalFrame3Layout.createSequentialGroup()
                .addGap(60, 60, 60)
                .addGroup(jInternalFrame3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jInternalFrame3Layout.createSequentialGroup()
                        .addGroup(jInternalFrame3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel11)
                            .addComponent(jLabel12)
                            .addComponent(jLabel13)
                            .addComponent(jLabel14))
                        .addGap(30, 30, 30)
                        .addGroup(jInternalFrame3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jInternalFrame3Layout.createSequentialGroup()
                                .addComponent(jButton17)
                                .addGap(18, 18, 18)
                                .addComponent(jButton18))
                            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jInternalFrame3Layout.createSequentialGroup()
                                .addGroup(jInternalFrame3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                    .addComponent(jTextField8, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, 160, Short.MAX_VALUE)
                                    .addComponent(jTextField7, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, 160, Short.MAX_VALUE)
                                    .addComponent(jTextField6, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, 160, Short.MAX_VALUE)
                                    .addComponent(jTextField4, javax.swing.GroupLayout.DEFAULT_SIZE, 160, Short.MAX_VALUE))
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addGroup(jInternalFrame3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                    .addComponent(jButton14, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(jButton15, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))))
                    .addComponent(jLabel10, javax.swing.GroupLayout.PREFERRED_SIZE, 308, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap())
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jInternalFrame3Layout.createSequentialGroup()
                .addGap(153, 153, 153)
                .addComponent(jLabel20, javax.swing.GroupLayout.DEFAULT_SIZE, 234, Short.MAX_VALUE)
                .addGap(59, 59, 59))
        );
        jInternalFrame3Layout.setVerticalGroup(
            jInternalFrame3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jInternalFrame3Layout.createSequentialGroup()
                .addComponent(jLabel10)
                .addGap(18, 18, 18)
                .addGroup(jInternalFrame3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel11)
                    .addComponent(jButton14)
                    .addComponent(jTextField4, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jInternalFrame3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(jLabel12)
                    .addGroup(jInternalFrame3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(jButton15)
                        .addComponent(jTextField6, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addGap(18, 18, 18)
                .addGroup(jInternalFrame3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel13)
                    .addComponent(jTextField7, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(jInternalFrame3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel14)
                    .addComponent(jTextField8, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(jInternalFrame3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jButton18)
                    .addComponent(jButton17))
                .addGap(26, 26, 26)
                .addComponent(jLabel20)
                .addContainerGap(102, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(49, 49, 49)
                        .addComponent(jButton1)
                        .addGap(51, 51, 51)
                        .addComponent(jButton3)
                        .addGap(39, 39, 39)
                        .addComponent(jButton4)
                        .addGap(53, 53, 53)
                        .addComponent(jButton2)
                        .addGap(31, 31, 31)
                        .addComponent(jButton13))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(24, 24, 24)
                        .addComponent(jLabel1))
                    .addGroup(layout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(jInternalFrame4, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(jInternalFrame1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(34, 34, 34)
                        .addComponent(jInternalFrame3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(jInternalFrame2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(16, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(36, 36, 36)
                .addComponent(jLabel1)
                .addGap(46, 46, 46)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jButton1)
                    .addComponent(jButton3)
                    .addComponent(jButton4)
                    .addComponent(jButton2)
                    .addComponent(jButton13))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(jInternalFrame4)
                    .addComponent(jInternalFrame1, javax.swing.GroupLayout.DEFAULT_SIZE, 338, Short.MAX_VALUE))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(jInternalFrame3)
                    .addComponent(jInternalFrame2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        jInternalFrame2.getAccessibleContext().setAccessibleParent(this);

        pack();
    }// </editor-fold>

    private void jButton1MouseClicked(java.awt.event.MouseEvent evt) {                                      
       
    }                                     

    private void jButton5ActionPerformed(java.awt.event.ActionEvent evt) {                                         
     try{
         String str =  jTextField1.getText();
          RC6 ob = new RC6();
	ob.readFile(str);
	String pwd = jPasswordField1.getText();
	String encryptFile = jTextField2.getText();
	byte[] key = ob.checkpasswordTF(pwd);
   	File file = new File(str);
	boolean valid = true;
		if(pwd.length() == 0)
	{
		valid = false;
		JOptionPane.showMessageDialog(null,
               "Please Enter Password!","Error",JOptionPane.ERROR_MESSAGE);
	}
		if(encryptFile.length() == 0)
	{
	valid = false;
	JOptionPane.showMessageDialog(null,
               "Please Enter Destination File Name!","Error",JOptionPane.ERROR_MESSAGE);
	}
    
    	if (!file.exists() || !file.isFile())
	{
             jLabel21.setText("FILE does Not Exists!");
		valid = false;
	}
         if(valid){
	ob.coreCrypt( encryptFile, key);
    	jLabel21.setText("FILE ENCRYPTED SUCCESSFULLY!");
            }
		
    }
    catch(Exception e){}
    }//encryption ends                                        

    private void jPasswordField1ActionPerformed(java.awt.event.ActionEvent evt) {                                                
        // TODO add your handling code here:
    }                                               

    private void jButton6ActionPerformed(java.awt.event.ActionEvent evt) {                                         
        JFileChooser fc = new JFileChooser();
        fc.showOpenDialog(null);
        jTextField1.setText(fc.getSelectedFile().getPath());
}                                        

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {                                         
        jInternalFrame1.setVisible(true);
        jTextField1.setText("");
        jTextField2.setText("");
        jPasswordField1.setText("");
    }                                        

    private void jButton11ActionPerformed(java.awt.event.ActionEvent evt) {                                          
       jInternalFrame1.setVisible(false);
       jLabel21.setText("");
    }                                         

    private void jButton12ActionPerformed(java.awt.event.ActionEvent evt) {                                          
            jInternalFrame2.setVisible(false);
    }                                         

    private void jButton7ActionPerformed(java.awt.event.ActionEvent evt) {                                         

     JFileChooser fileChooser = new JFileChooser(".");
	 int retval = fileChooser.showOpenDialog(null);

    fileChooser.setFileSelectionMode(JFileChooser.DIRECTORIES_ONLY);
	jTextField2.setText( fileChooser.getSelectedFile().getAbsolutePath());

    }                                        

    private void jButton13ActionPerformed(java.awt.event.ActionEvent evt) {                                          
       System.exit(0);
    }                                         

    private void jButton8ActionPerformed(java.awt.event.ActionEvent evt) {                                         
        JFileChooser fc = new JFileChooser();
        fc.showOpenDialog(null);
        jTextField3.setText(fc.getSelectedFile().getPath());
    }                                        

    private void jButton9ActionPerformed(java.awt.event.ActionEvent evt) {                                         
       JFileChooser fileChooser = new JFileChooser(".");
	 int retval = fileChooser.showOpenDialog(null);

    fileChooser.setFileSelectionMode(JFileChooser.DIRECTORIES_ONLY);
	jTextField5.setText( fileChooser.getSelectedFile().getAbsolutePath());
    }                                        

    private void jButton10ActionPerformed(java.awt.event.ActionEvent evt) {                                          
        try{
		String str =  jTextField3.getText();
	RC6 ob = new RC6();
	String pwd = jPasswordField2.getText();
	String encryptFile = jTextField5.getText();
	byte[] key = ob.checkpasswordTF(pwd);
	
	File file = new File(str);
	boolean valid= true;
	if(pwd.length() == 0)
	{
		valid = false;
		JOptionPane.showMessageDialog(null,
               "Please Enter Password!","Error",JOptionPane.ERROR_MESSAGE);
	}
		if(encryptFile.length() == 0)
	{
	valid = false;
	JOptionPane.showMessageDialog(null,
               "Please Enter Destination File Name!","Error",JOptionPane.ERROR_MESSAGE);
	}
    
    	if (!file.exists() || !file.isFile())
	{
             jLabel22.setText("FILE does Not Exists!");
		valid = false;
	}
	if(valid)
	{
		ob.coreDecrypt( str, key, encryptFile);
   		jLabel22.setText("FILE DECRYPTED SUCCESSFULLY!");
	}
	}
	catch(Exception e){
		e.printStackTrace();
	}
    }                                         

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {                                         
        jInternalFrame2.setVisible(true);
        jTextField3.setText("");
        jTextField5.setText("");
        jPasswordField2.setText("");
         jLabel22.setText("");
       
    }                                        

    private void jButton18ActionPerformed(java.awt.event.ActionEvent evt) {                                          
        jInternalFrame3.setVisible(false);
    }                                         

    private void jButton14ActionPerformed(java.awt.event.ActionEvent evt) {                                          

      JFileChooser fc = new JFileChooser();
        fc.showOpenDialog(null);
        jTextField4.setText(fc.getSelectedFile().getPath());
    
    }                                         

    private void jButton15ActionPerformed(java.awt.event.ActionEvent evt) {                                          
        FileFilter filter1 = new ExtensionFileFilter("JPG, JPEG and PNG", new String[] { "JPG", "JPEG","PNG" });
   JFileChooser fc = new JFileChooser(".");//ExtensionFileFilter
   fc.setFileFilter(filter1);
    int status = fc.showOpenDialog(null);
    if (status == JFileChooser.APPROVE_OPTION) {
      File imageFile = fc.getSelectedFile();
	jTextField6.setText( fc.getSelectedFile().getAbsolutePath());
	 String s = jTextField6.getText();
    int i = s.lastIndexOf('.');
    if (i > 0 &&  i < s.length() - 1)
      s = s.substring(i+1).toLowerCase();
	jTextField7.setText(s);
    }
    }                                         

    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {                                         
        jInternalFrame3.setVisible(true);
        jTextField4.setText("");
        jTextField6.setText("");
        jTextField7.setText("");
        jTextField8.setText("");
	jLabel20.setText("");
    }                                        

    private void jButton17ActionPerformed(java.awt.event.ActionEvent evt) {                                          
     try{
        Steganography ob =  new Steganography();
		String ext,path=" ";
		boolean valid = true;
		ext= jTextField7.getText();
		String img;
		String Simg;
		Simg = jTextField8.getText();
		byte[] bytes;
		String s = jTextField6.getText();
		File file = new File(s);
		if(Simg.length() == 0 )
		{
			valid = false;
			JOptionPane.showMessageDialog(null,
               "Please Enter STEGO Image Name!","Error",JOptionPane.ERROR_MESSAGE);
		}
		else if( s.length() == 0)
		{
			valid = false;
			JOptionPane.showMessageDialog(null,
               "Please Select a Cover Image!","Error",JOptionPane.ERROR_MESSAGE);
		}
		else if (!file.exists() || !file.isFile())
		{
             		JOptionPane.showMessageDialog(null,
               "Sorry!! The File Does Not Exists!","Error",JOptionPane.ERROR_MESSAGE);
		valid = false;
		}
        
		else
		{
  			  int i = s.lastIndexOf("\\");
  			  if (i > 0 &&  i < s.length() - 1)
  			    path = s.substring(0,i);
			    img=s.substring(i+1,s.lastIndexOf("."));
		//System.out.println("path = "+path+"\nsimg name = "+Simg+"\nimgage name = "+img+"extension is= "+ext);
		FileInputStream fin = new FileInputStream(jTextField4.getText());

		String buffer= new String();
		int ich,cnt=0;

		while((ich=fin.read()) != -1)
		{
			cnt++;
		buffer = buffer+""+(char)ich;
			
		}
		fin.close();
 	bytes = new byte[cnt];
 DataInputStream is = null;
    byte ch;
   try{
      is = new DataInputStream(new FileInputStream(jTextField4.getText()));
     for(int j=0;j<cnt;j++)
	bytes[j] = is.readByte();
	}
	catch(Exception e){}
	
      ob.encode(path,img,ext,Simg,bytes);
       jLabel20.setText("IMAGE ENCODED SUCCESSFULLY!");
	}
	}
	catch(Exception e){}
      }                                         

    private void jButton22ActionPerformed(java.awt.event.ActionEvent evt) {                                          
        jInternalFrame4.setVisible(false);
        jLabel20.setText("");
    }                                         

    private void jButton19ActionPerformed(java.awt.event.ActionEvent evt) {                                          
     FileFilter filter1 = new ExtensionFileFilter("PNG", new String[] { "PNG", "png" });
   JFileChooser fc = new JFileChooser(".");//ExtensionFileFilter
   fc.setFileFilter(filter1);
    int status = fc.showOpenDialog(null);
    if (status == JFileChooser.APPROVE_OPTION) {
      File imageFile = fc.getSelectedFile();
	jTextField9.setText( fc.getSelectedFile().getAbsolutePath());
    }
    }                                         

    private void jButton20ActionPerformed(java.awt.event.ActionEvent evt) {                                          
        JFileChooser fileChooser = new JFileChooser(".");
        int retval = fileChooser.showOpenDialog(null);

        fileChooser.setFileSelectionMode(JFileChooser.DIRECTORIES_ONLY);
        jTextField10.setText( fileChooser.getSelectedFile().getAbsolutePath());
    }                                         

    private void jButton21ActionPerformed(java.awt.event.ActionEvent evt) {                                          
       try
       {
           Steganography ob =  new Steganography();
		String path=" ",str=jTextField10.getText();
		String s = jTextField9.getText();
		if(s.length()==0 || str.length()==0)
			JOptionPane.showMessageDialog(null,
               "Please enter complete Data!","Error",JOptionPane.ERROR_MESSAGE);
		else
		{
  			  int i = s.lastIndexOf("\\");
  			  if (i > 0 &&  i < s.length() - 1)
  			    path = s.substring(0,i);
			    String Simg=s.substring(i+1,s.lastIndexOf("."));
		//System.out.println("path = "+path+"\nsimg name = "+Simg);

		
String ret=ob.decode(path,Simg,str);
if(ret!="")
        jLabel19.setText("SUCCESSFULLY IMAGE DECODED!");
	}
	}
	catch(Exception e){}
		
    }                                         

    private void jButton4ActionPerformed(java.awt.event.ActionEvent evt) {                                         
        jInternalFrame4.setVisible(true);
        jTextField9.setText("");
        jTextField10.setText("");
        jLabel19.setText("");
    }                                        

    public static void main(String args[]) {
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new RC6Stego().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton10;
    private javax.swing.JButton jButton11;
    private javax.swing.JButton jButton12;
    private javax.swing.JButton jButton13;
    private javax.swing.JButton jButton14;
    private javax.swing.JButton jButton15;
    private javax.swing.JButton jButton17;
    private javax.swing.JButton jButton18;
    private javax.swing.JButton jButton19;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton20;
    private javax.swing.JButton jButton21;
    private javax.swing.JButton jButton22;
    private javax.swing.JButton jButton3;
    private javax.swing.JButton jButton4;
    private javax.swing.JButton jButton5;
    private javax.swing.JButton jButton6;
    private javax.swing.JButton jButton7;
    private javax.swing.JButton jButton8;
    private javax.swing.JButton jButton9;
    private javax.swing.JInternalFrame jInternalFrame1;
    private javax.swing.JInternalFrame jInternalFrame2;
    private javax.swing.JInternalFrame jInternalFrame3;
    private javax.swing.JInternalFrame jInternalFrame4;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel14;
    private javax.swing.JLabel jLabel15;
    private javax.swing.JLabel jLabel16;
    private javax.swing.JLabel jLabel17;
    private javax.swing.JLabel jLabel18;
    private javax.swing.JLabel jLabel19;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel20;
    private javax.swing.JLabel jLabel21;
    private javax.swing.JLabel jLabel22;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPasswordField jPasswordField1;
    private javax.swing.JPasswordField jPasswordField2;
    private javax.swing.JTextField jTextField1;
    private javax.swing.JTextField jTextField10;
    private javax.swing.JTextField jTextField2;
    private javax.swing.JTextField jTextField3;
    private javax.swing.JTextField jTextField4;
    private javax.swing.JTextField jTextField5;
    private javax.swing.JTextField jTextField6;
    private javax.swing.JTextField jTextField7;
    private javax.swing.JTextField jTextField8;
    private javax.swing.JTextField jTextField9;
    // End of variables declaration

}
