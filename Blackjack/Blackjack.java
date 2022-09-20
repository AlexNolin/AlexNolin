import java.awt.*;  
import java.awt.event.*;  
import javax.swing.*;  
import java.util.*;
import java.lang.*;

  
public class Blackjack
{
    JFrame window;
      Container con;
      JPanel panel;
      JButton button;
      JPanel picPanel;
      ImageIcon image;
      JLabel picLabel;
   
   public static void main (String args[])
   {
      Card club[] = new Card[13];
      for(int i = 0; i<13; i++)
         club[i] = new Card("club",i); 
      Card spade[] = new Card[13]; 
      for(int i = 0; i<13; i++)
         spade[i] = new Card("spade",i); 
      Card diamond[] = new Card[13]; 
      for(int i = 0; i<13; i++)
         diamond[i] = new Card("diamond",i); 
      Card heart[] = new Card[13]; 
      for(int i = 0; i<13; i++)
         heart[i] = new Card("heart",i); 
      Card deck[] = new Card[52];
      
      int i1 = 0;
      for(int i = 0; i<52; i++)
      {
         if(i1 == 13)
            i1 = 0;
         if(i<13)
            deck[i] = spade[i1];
         if(i>12 && i<26)
            deck[i] = club[i1];
         if(i>25 && i<39)
            deck[i] = diamond[i1];
         if(i>38 && i<52)
            deck[i] = heart[i1];
         i1++;
      }
      int[] cardHolder = new int[52];
      for(int i = 0; i<52; i++)
         cardHolder[i] = deck[i].getPresent();
      new Blackjack();
  }    
      
      
     
   public Blackjack()
   {
      window = new JFrame();
      window.setSize(1366,768);
      window.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
      window.getContentPane().setBackground(Color.black);

      window.setLayout(null);
      window.setVisible(true);
      //window.add(new CustomPaintComponent());
      con = window.getContentPane();
      
      panel = new JPanel();
      panel.setBounds(630,600,100,50);
      
      
      picPanel = new JPanel();
      picPanel.setBounds(100,100,100,100);
      picPanel.setBackground(Color.blue);
      con.add(picPanel);
      
      picLabel = new JLabel();
      
      String property = System.getProperty( "user.home" );
      image = new ImageIcon(property+"/"+"Desktop/Blackjack/res/lol.jpg");
      
      
      picLabel.setIcon(image);
      picPanel.add(picLabel);
      
      
      
      
      
      button = new JButton("START");
      button.setBackground(Color.white);
      panel.add(button);
      con.add(panel);
      con.add(picPanel);
      /*
      button.addActionListener(new ActionListener()
      {
         public void actionPerformed(ActionEvent e)
         {
            
         }
      });
      */
      
      
      
      panel.add(button);
      con.add(panel);
   }
}