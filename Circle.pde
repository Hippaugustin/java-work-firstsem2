public class Circle
{
   private float xCoord;     //x coordinate of the circle
   private float yCoord;     //y coordinate of the circle
   private float diameter;   //diameter of the circle
   private float Speed1;     //speed of the x axis
   private float Speed2;     //speed of the y axis   
   int red,green,blue;       //rgb colours
   
   
   //Constructor to set the circle and its diameter
   public Circle(float diameter)
   {
      setDiameter(diameter);
      resetCircle();
   }
   
   //Updates the circles position. Returns to the start if it goes out of screen.
   public boolean update()
   {
      boolean back = false;
      
      
      xCoord = xCoord + Speed1;
      yCoord = yCoord + Speed2;
      colour(red,green,blue);
       
      //reset position if the circle leaves the screen and adds 10 to the diameter of the circle
      if (xCoord > width + diameter/2){
         resetCircle();
         back = true;
         xCoord = diameter/2;
         Speed1 = Speed1 * -1;
         diameter+=10;
      }
       
      //If the circle touches the left edge of the window, the direction  of xCoord changes.
      if (xCoord < diameter/2){
         xCoord = diameter/2;
         Speed1 = Speed1 * -1;
      }
       
      //If the circle touches the top or bottom of the window, the direction of yCoord changes.
      if (yCoord > height - diameter/2){
         yCoord = height - diameter/2;
         Speed2 = Speed2 * -1;
      } 
      else if (yCoord < diameter/2){
         yCoord = diameter/2;
         Speed2 = Speed2 * -1;
      }
      return back;
   }       
   
   //Draws the circle 
   public void show()
   {
      noStroke();
      ellipse(xCoord, yCoord, diameter, diameter);
   }
   //Gives the circle a colour
   public void colour(int red, int green, int blue){
     this.red = red+mouseX;
     this.green = green+mouseY;
     this.blue = blue+mouseX;
     fill(this.red,this.green,this.blue);
   }
  
   
   //getter methods
   public float getXCoord()
   {  
      return xCoord;
   }  

   public float getYCoord()
   {
      return yCoord;
   }  

   public float getDiameter()
   {
      return diameter;
   }  

   //setter methods
   public void setDiameter(float diameter)
   {
     //The circle has to be between diameter 10 and height/2
     if ((diameter >= 10) && (diameter <= height/2)){
        this.diameter = diameter;
     }
   
     else {
       
       //if a parameter is wrong, the diameter is brought back to 10
        this.diameter = 10;
     }
}

   
   
   // private resetCircle method
   private void resetCircle()
   {
     
      xCoord = diameter/2;
      yCoord = random(height);
      Speed1 = random(6, 2);   
     Speed2 = random(-3, 4);
   }
   
}
