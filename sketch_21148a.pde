import javax.swing.JOptionPane;

Circle circle;
{
JOptionPane.showMessageDialog(null,
"Welcome",
"Loop Welcome",                         //Shows a message box when starting that says Welcome
JOptionPane.PLAIN_MESSAGE);
}

void setup()
{
   size(600,600);
   noStroke();
   
   
   circle = new Circle(10);   // uses the circle method the make a new Circle
}
   

void draw()
{
   background(0);       
  
   circle.update();   //applies the update method on the circle class
   circle.show();     // applies the show method on the circle class
   circle.colour(100,50,10);  //applies the colour method on the circle class
   
   
}

{
int numbers[] = new int[1];             

// we start with the number of circles drawn on the window
for (int i = 0; i < numbers.length ; i ++)  {    
  numbers[i] = 1;
}      

//now we print the value
for (int i = 0; i < numbers.length ; i ++)   {   
      println("There " + "is " + numbers[i] + " Circle Showed Right Now" + " And it gets Bigger over Time 'o' ");
} 
}
