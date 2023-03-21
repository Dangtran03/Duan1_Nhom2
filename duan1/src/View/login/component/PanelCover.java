package View.login.component;

import View.login.swing.ButtonOutLine;
import java.awt.Color;
import java.awt.Font;
import java.awt.GradientPaint;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.event.ActionEvent;
import java.text.DecimalFormatSymbols;
import java.awt.event.ActionListener;
import java.text.DecimalFormat;
import java.util.Locale;
import javax.swing.JLabel;
import net.miginfocom.swing.MigLayout;

public class PanelCover extends javax.swing.JPanel {

    private final DecimalFormat df = new DecimalFormat("##0.###", DecimalFormatSymbols.getInstance(Locale.US));
    private MigLayout layout;
    private JLabel title;
    private JLabel description;
    private ButtonOutLine button;
    private boolean isLogin;

    private ActionListener event;

    public PanelCover() {
        initComponents();
        setOpaque(false);
        layout = new MigLayout("wrap, fill", "[center]", "push[]25[]10[]25[]push");
        setLayout(layout);
        init();
    }

    private void init() {
        title = new JLabel("Welcome Back");
        title.setFont(new Font("sansserif", 1, 30));
        title.setForeground(new Color(245, 245, 245));
        add(title);
        description = new JLabel("Login with your personal information");
        description.setForeground(new Color(245, 245, 245));
        add(description);
        button = new ButtonOutLine();
        button.setBackground(new Color(255, 255, 255));
        button.setForeground(new Color(255, 255, 255));
        button.setText("Sign In");
        button.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent ae) {
                event.actionPerformed(ae);

            }
        });
        add(button, "w 60%, h 40");
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        setBackground(new java.awt.Color(0, 204, 51));

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 404, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 304, Short.MAX_VALUE)
        );
    }// </editor-fold>//GEN-END:initComponents

    @Override
    protected void paintComponent(Graphics g) {
        Graphics2D g2 = (Graphics2D) g;
        GradientPaint gra = new GradientPaint(0, 0, new Color(42, 162, 42), 0, getHeight(), new Color(47, 182, 47));
        g2.setPaint(gra);
        g2.fillRect(0, 0, getWidth(), getHeight());

        super.paintComponent(g);
    }

    public void addEvent(ActionListener event) {
        this.event = event;
    }

    public void registerRight(Double v) {
        v = Double.valueOf(df.format(v));
        login(false);
        layout.setComponentConstraints(title, "pad 0 -" + v + "% 0 0");
        layout.setComponentConstraints(description, "pad 0 -" + v + "% 0 0");
    }

    public void registerLeft(Double v) {
        v = Double.valueOf(df.format(v));
        login(false);
        layout.setComponentConstraints(title, "pad 0 -" + v + "% 0 0");
        layout.setComponentConstraints(description, "pad 0 -" + v + "% 0 0");
    }

    public void loginLeft(Double v) {
        v = Double.valueOf(df.format(v));
        login(true);
        layout.setComponentConstraints(title, "pad 0 " + v + "% 0 " + v + "%");
         layout.setComponentConstraints(description, "pad 1 " + v + "% 0 " + v + "%");
    }

    public void loginRight(Double v) {
        v = Double.valueOf(df.format(v));
        login(true);
        layout.setComponentConstraints(title, "pad 1 " + v + "% 0 " + v + "%");
         layout.setComponentConstraints(description, "pad 1 " + v + "% 0 " + v + "%");
    }
     public void login(boolean login) {
        if (this.isLogin != login) {
            if (login) {
                title.setText("Hello, Friend!");
                description.setText("Enter your personal details");
                button.setText("Forgot Password");
            } else {
                title.setText("Welcome Back!");
                description.setText("To keep connected with us please");
                button.setText("Sign In");
            }
            this.isLogin = login;
        }
    }
    // Variables declaration - do not modify//GEN-BEGIN:variables
    // End of variables declaration//GEN-END:variables
}
