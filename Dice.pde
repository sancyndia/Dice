int sum;
 
 void setup()
  {
      size(550,550);
      noLoop();
  }
  void draw()
  {
    background(0);
    for(int y = 50; y <= 500; y = y + 100)
    {
      for(int x = 50; x <=500; x = x + 100)
      {
       Die theDie = new Die(x,y);
       theDie.show();
       sum = theDie.value + sum;
      }
    }
    fill(255);
    text("Sum of Dice: " + sum, 50,530);
  }
  void mousePressed()
  {
      redraw();
      sum= 0;
  }
  class Die //models one single dice cube
  {
      int value;
      int myX, myY;
      
      Die(int x, int y) //constructor
      {
          value = (int)(Math.random()*6+1);
          myX = x;
          myY = y;
      }
      void roll()
      {
          //your code here
      }
      void show()
      {
        fill(255);
          rect(myX,myY ,50,50);
          if(value == 1)
          {
          fill(0);  
          ellipse(myX+25,myY+25,10,10);
          }
          else if
            (value == 2)
          {
          fill(0);  
          ellipse(myX+12.5, myY+37.5,10,10);
          ellipse(myX+37.5,myY+12.5,10,10);
          }
          else if

            (value == 3)
          {
          fill(0);  
          ellipse(myX+25,myY+25,10,10);
          ellipse(myX+12.5, myY+37.5,10,10);
          ellipse(myX+37.5,myY+12.5,10,10);
          }
          else if

            (value == 4)
          {
          fill(0);  
          ellipse(myX+12.5, myY+37.5,10,10);
          ellipse(myX+37.5,myY+12.5,10,10);
          ellipse(myX+12.5, myY+12.5,10,10);
          ellipse(myX+37.5,myY+37.5,10,10);
          }
          else if

            (value == 5)
          {
          fill(0); 
          ellipse(myX+25,myY+25,10,10);
          ellipse(myX+12.5, myY+37.5,10,10);
          ellipse(myX+37.5,myY+12.5,10,10);
          ellipse(myX+12.5, myY+12.5,10,10);
          ellipse(myX+37.5,myY+37.5,10,10);

          }
          else
          {
          fill(0);  
          ellipse(myX+12.5, myY+37.5,10,10);
          ellipse(myX+37.5,myY+12.5,10,10);
          ellipse(myX+12.5, myY+12.5,10,10);
          ellipse(myX+37.5,myY+37.5,10,10);
          ellipse(myX+12.5, myY+25,10,10);
          ellipse(myX+37.5,myY+25,10,10);
          }
      }
  }

