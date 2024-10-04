Die dice;

void setup()
{
    size(470,570);
    noLoop();
}
void draw()
{
  background(192);
  int sum = 0;
  for(int y = 5; y < 470; y += 155) {
    for(int x = 5; x < 470; x += 155) {
      dice = new Die(x,y);
      dice.show();
      sum += dice.diceRoll;
    }
  }
  text("sum: " + sum, 100, 530);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY, diceRoll;
  
  
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    roll();
  }
  void roll()
  {
    diceRoll = (int)(Math.random()*6)+1;
  }
  void show()
  {
    fill(255,255,255);
    rect(myX, myY, 150, 150);
    fill(0,0,0);
    textSize(50);
    
    if (diceRoll == 1) {
      ellipse(myX+75, myY+75, 25, 25);
    } else if(diceRoll == 2) {
      ellipse(myX+50, myY+50, 25, 25);
      ellipse(myX+100, myY+100, 25, 25);
    } else if(diceRoll == 3) {
      ellipse(myX+40, myY+40, 25, 25);
      ellipse(myX+75, myY+75, 25, 25);
      ellipse(myX+110, myY+110, 25, 25);
    } else if(diceRoll == 4) {
      ellipse(myX+50, myY+50, 25, 25);
      ellipse(myX+50, myY+100, 25, 25);
      ellipse(myX+100, myY+50, 25, 25);
      ellipse(myX+100, myY+100, 25, 25);
    } else if(diceRoll == 5) {
      ellipse(myX+40, myY+40, 25, 25);
      ellipse(myX+40, myY+110, 25, 25);
      ellipse(myX+110, myY+40, 25, 25);
      ellipse(myX+110, myY+110, 25, 25);
      ellipse(myX+75, myY+75, 25, 25);      
    } else {
      ellipse(myX+40, myY+40, 25, 25);
      ellipse(myX+40, myY+75, 25, 25);
      ellipse(myX+40, myY+110, 25, 25);
      ellipse(myX+110, myY+40, 25, 25);
      ellipse(myX+110, myY+75, 25, 25);
      ellipse(myX+110, myY+110, 25, 25);
    }
    
  }
}
