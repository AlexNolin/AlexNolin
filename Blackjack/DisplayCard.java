import java.awt.*;  
import java.awt.event.*;  
import javax.swing.*;  
import java.util.*;
import java.lang.*;

public class DisplayCard implements ActionListener
{
   JFrame window;
      Container con;
      JPanel panel;
      Button button;
      JPanel picPanel;
      ImageIcon image;
      JLabel picLabel;
      Color c1 = Color.white;
      String s1 = "8 of club.jpg";
      int num = 0;
   
   public static void main (String args[])
   {
      new DisplayCard();
   }
   
   public DisplayCard()
   {
      window = new JFrame();
      window.setSize(1366,768);
      window.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
      Color c1 = Color.white;
      window.getContentPane().setBackground(c1);
      window.setLayout(null);
      
      con = window.getContentPane();
      
      panel = new JPanel();
      panel.setBounds(630,600,100,50);
      
      button = new Button("START");
      button.setBackground(Color.white);
      panel.add(button);
      con.add(panel);
      
      
      button.addActionListener(this);
      window.setVisible(true);
   }
   
   public void checker()
   {
      if(num == 0);
      {
         System.out.println("yo");
         drawCard();
         
      }
   }
         
   
  
   
   public void actionPerformed(ActionEvent e)
   {
      
      checker();
   }
     
   
   public void drawCard()
   {
      
      picPanel = new JPanel();
      picPanel.setBounds(0,0,310,410);
      picPanel.setBackground(Color.white);
      con.add(picPanel);
      
      picLabel = new JLabel();
      
      String property = System.getProperty( "user.home" );
      image = new ImageIcon(property+"/"+"Desktop/Blackjack/res/"+s1);
      
      
      picLabel.setIcon(image);
      picPanel.add(picLabel);

   }
 }
 
 
      
   
   