package View.login.component;

import View.login.swing.MyPasswordField;
import View.login.swing.MyTextField;
import javax.swing.JButton;
import java.awt.Color;
import java.awt.Cursor;
import java.awt.Font;
import java.awt.GradientPaint;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.event.ActionListener;
import javax.swing.ImageIcon;
import javax.swing.JLabel;
import net.miginfocom.swing.MigLayout;

public class PanelLoginAndRegister extends javax.swing.JLayeredPane {

    public PanelLoginAndRegister() {

        initComponents();
        initRegister();
        initLogin();
//        login.setVisible(false);
//        register.setVisible(true);
    }

    private void initRegister() {
        register.setLayout(new MigLayout("wrap", "push[center]push", "push[]25[]10[]10[]10[]25[]push"));
        JLabel label = new JLabel("Forgot Password");
        label.setFont(new Font("sansserif", 1, 30));
        label.setForeground(new Color(7, 164, 121));
        register.add(label);

        MyTextField txtUser = new MyTextField();
        txtUser.setPrefixIcon(new ImageIcon(getClass().getResource("/icon/Unknown_person.png")));
        txtUser.setHint("Nhập username");
        register.add(txtUser, "W 60%");

        MyTextField txtEmail = new MyTextField();
        txtEmail.setPrefixIcon(new ImageIcon(getClass().getResource("/icon/Mail.png")));
        txtEmail.setHint("Nhập Email");
        register.add(txtEmail, "W 60%");

        MyTextField txtVerrify = new MyTextField();
        txtVerrify.setPrefixIcon(new ImageIcon(getClass().getResource("/icon/Edit.png")));
        txtVerrify.setHint("Nhập mã xác nhận");
        register.add(txtVerrify, "W 60%");

        MyPasswordField txtPassword = new MyPasswordField();
        txtPassword.setPrefixIcon(new ImageIcon(getClass().getResource("/icon/Lock.png")));
        txtPassword.setHint("Nhập mật khẩu mới");
        register.add(txtPassword, "W 60%");

        JButton cmd = new JButton();
        cmd.setBackground(new Color(7, 164, 121));
        cmd.setForeground(new Color(250, 250, 250));
        register.add(cmd, "w 40%, h 40");
        cmd.setText("Change Password");
    }

    private void initLogin() {

        login.setLayout(new MigLayout("wrap", "push[center]push", "push[]25[]10[]10[]10[]25[]push"));
        JLabel label = new JLabel("Sign In");
        label.setFont(new Font("sansserif", 1, 30));
        label.setForeground(new Color(7, 164, 121));
        login.add(label);

        MyTextField txtUser = new MyTextField();
        txtUser.setPrefixIcon(new ImageIcon(getClass().getResource("/icon/Unknown_person.png")));
        txtUser.setHint("Nhập username");
        login.add(txtUser, "W 60%");

        MyPasswordField txtPassword = new MyPasswordField();
        txtPassword.setPrefixIcon(new ImageIcon(getClass().getResource("/icon/Lock.png")));
        txtPassword.setHint("Nhập mật khẩu");
        txtPassword.setForeground(new Color(0,0,0));
        login.add(txtPassword, "W 60%");

        JButton cmdCreateAcc = new JButton("Don't have an account yet? Sign up now");
        cmdCreateAcc.setForeground(new Color(100, 100, 100));
        cmdCreateAcc.setFont(new Font("sansseif", 1, 12));
        cmdCreateAcc.setContentAreaFilled(false);
        cmdCreateAcc.setCursor(new Cursor(Cursor.HAND_CURSOR));
        login.add(cmdCreateAcc);

        JButton cmd = new JButton();
        cmd.setBackground(new Color(7, 164, 121));
        cmd.setForeground(new Color(250, 250, 250));
        login.add(cmd, "w 40%, h 40");
        cmd.setText("Sign In");
    }

    public void showRegister(boolean show) {
        if (show) {
            register.setVisible(true);
            login.setVisible(false);
        } else {
            register.setVisible(false);
            login.setVisible(true);
        }
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        login = new javax.swing.JPanel();
        register = new javax.swing.JPanel();

        setBackground(new java.awt.Color(0, 153, 0));
        setLayout(new java.awt.CardLayout());

        login.setBackground(new java.awt.Color(255, 255, 255));

        javax.swing.GroupLayout loginLayout = new javax.swing.GroupLayout(login);
        login.setLayout(loginLayout);
        loginLayout.setHorizontalGroup(
            loginLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 400, Short.MAX_VALUE)
        );
        loginLayout.setVerticalGroup(
            loginLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 300, Short.MAX_VALUE)
        );

        add(login, "card3");

        register.setBackground(new java.awt.Color(255, 255, 255));

        javax.swing.GroupLayout registerLayout = new javax.swing.GroupLayout(register);
        register.setLayout(registerLayout);
        registerLayout.setHorizontalGroup(
            registerLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 400, Short.MAX_VALUE)
        );
        registerLayout.setVerticalGroup(
            registerLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 300, Short.MAX_VALUE)
        );

        add(register, "card2");
    }// </editor-fold>//GEN-END:initComponents


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JPanel login;
    private javax.swing.JPanel register;
    // End of variables declaration//GEN-END:variables
}
