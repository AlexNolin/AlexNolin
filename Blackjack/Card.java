//********************************************************************
//  Card.java       Author: Alex Nolin
//
//  Creates a randomly drawn card
//********************************************************************
import java.util.Random;
public class Card
{
   private int suit;
   private int face;
   private String suitName;
   private String faceName;
   private int present; 
   private static Random generator = new Random();
   //constructor for the Card class
   public Card ()
   {
      suit = 0;
      face = 0;
      getSuit();

   }
   
   public Card(String suitS, int num)
   {
      if(suitS == "club")
         suit = 1;
      if(suitS == "heart")
         suit = 2;
      if(suitS == "spade")
         suit = 3;
      if(suitS == "diamond")
         suit = 4;
      getSuit();
      getFace(num);
      present = 1;
   }
         
   public int getPresent()
   {
      return present;
   }
   
   public void draw()
   {
      present  = 0;
   }
   //gets the random suit for the card
   public String getSuit()
   {
      if (suit == 1)
         suitName = "clubs";
      if (suit == 2)
         suitName = "hearts";
      if (suit == 3)
         suitName = "spades";
      if (suit == 4)
         suitName = "diamonds";
      return suitName; 
   }
   
   //gets the face value of the card
   public String getFace(int face)
   {
      face = face +1;
      if (face == 1)
         faceName = "ace";
      if (face == 2)
         faceName = "2";
      if (face == 3)
         faceName = "3";
      if (face == 4)
         faceName = "4";
      if (face == 5)
         faceName = "5";
      if (face == 6)
         faceName = "6";
      if (face == 7)
         faceName = "7";
      if (face == 8)
         faceName = "8";
      if (face == 9)
         faceName = "9";
      if (face == 10)
         faceName = "10";
      if (face == 11)
         faceName = "jack";
      if (face == 12)
         faceName = "queen";
      if (face == 13)
         faceName = "king";
      return faceName;
      
   }
   
   //converts variables into string form
   public String toString()
   {
      String result;
      result = faceName + " of " + suitName;
      return result;
   }
      
}
      
