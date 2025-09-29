Die die1;
int total = 0;
void setup(){
  background(200,255,200);
  size(1000,1000);
  noLoop();
  die1 = new Die(100,100);
  text("Total: " + total, 470, 20);
}

void draw() {
  for(int i = 0; i<20; i++){
    for(int j = 15; j>0; j-= 1) {
      if(die1 != null) {
        die1.show(i*50 + 3, j*50 - 10);
        die1.roll();
      }
    }  
  }
  noStroke();
  fill(200,255,200);
  rect(365, 0, 230, 40);
  textSize(20);
  fill(0);
  text("Total: " + total, 460, 25);
  stroke(2);
  fill(255);
  
}
void mousePressed() {
  total = 0;
  die1 = new Die(100,100);
  redraw();
}


//number definitions
void drawOne(int x, int y) {
fill(255,0,0);
rect(x,y,40,40);
fill(0);
ellipse(x + 20,y + 20,8,8);
total += 1;
}

void drawTwo(int x, int y) {
fill(0,255,255);
rect(x,y,40,40);
fill(0);
ellipse(x+10,y+30,8,8);
ellipse(x+30,y+10,8,8);
total += 2;
}

void drawThree(int x, int y) {
fill(0,0,255);
rect(x,y,40,40);
fill(0);
ellipse(x+10,y+30,8,8);
ellipse(x+30,y+10,8,8);
ellipse(x+20,y+20,8,8);
total += 3;
}

void drawFour(int x, int y) {
fill(0,255,0);
rect(x,y,40,40);
fill(0);
ellipse(x+10,y+30,8,8);
ellipse(x+30,y+10,8,8);
ellipse(x+10,y+10,8,8);
ellipse(x+30,y+30,8,8);
total += 4;
}

void drawFive(int x, int y) {
fill(255,255,0);
rect(x,y,40,40);
fill(0);
ellipse(x+10,y+30,8,8);
ellipse(x+30,y+10,8,8);
ellipse(x+10,y+10,8,8);
ellipse(x+30,y+30,8,8);
ellipse(x+20,y+20,8,8);
total += 5;
}

void drawSix(int x, int y) {
fill(255,0,255);
rect(x,y,40,40);
fill(0);
ellipse(x+10,y+30,8,8);
ellipse(x+30,y+10,8,8);
ellipse(x+10,y+10,8,8);
ellipse(x+30,y+30,8,8);
ellipse(x+20,y+10,8,8);
ellipse(x+20,y+30,8,8);
total += 6;
}

//class definition
class Die {
  int size, myX, myY, myNum;
  void roll() {
  myNum = (int)(Math.random()*6)+1;
}
  void show(int x, int y) {
  myX = x;
  myY = y;
  if (myNum == 1)
    drawOne(myX, myY);
  else if (myNum == 2)
    drawTwo(myX, myY);
  else if (myNum == 3)
    drawThree(myX, myY);
  else if (myNum == 4)
    drawFour(myX, myY);
  else if (myNum == 5)
    drawFive(myX, myY);
  else
    drawSix(myX, myY);
  }
  Die(int x, int y) {
    this.myX = x;
    this.myY = y;
    this.myNum = 0;
  }
}
