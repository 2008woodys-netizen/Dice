/*
class Die {
  int size, myX, myY, myNum;
  int roll() {
    return((int)(Math.random()*6)+1)
  }
  void show() {
    fill(
};
*/
void setup(){
  size(200,200);
  noLoop();
}

void draw() {
drawOne();

}

void drawOne() {
rect(100,100,40,40);
ellipse(120,120,8,8);
}

void drawTwo() {
rect(100,100,40,40);
ellipse(110,130,8,8);
ellipse(130,110,8,8);
}

void drawThree() {
rect(100,100,40,40);
ellipse(110,130,8,8);
ellipse(130,110,8,8);
ellipse(120,120,8,8);
}

void drawFour() {
rect(100,100,40,40);
ellipse(110,130,8,8);
ellipse(130,110,8,8);
ellipse(110,110,8,8);
ellipse(130,130,8,8);
}

void drawFive() {
rect(100,100,40,40);
ellipse(110,130,8,8);
ellipse(130,110,8,8);
ellipse(110,110,8,8);
ellipse(130,130,8,8);
ellipse(120,120,8,8);
}

void drawSix() {
rect(100,100,40,40);
ellipse(110,130,8,8);
ellipse(130,110,8,8);
ellipse(110,110,8,8);
ellipse(130,130,8,8);
ellipse(120,110,8,8);
ellipse(120,130,8,8);
}
