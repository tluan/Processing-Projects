
//Assignment 06
//Name: Tu Luan
//E-mail: tluan@brynmawr.edu
//Course: Cs110, Jia Tao's section
//Submitted: 03/30/2015
//This is my mother’s day’s card. 


int k=0;
int c = 255;
ArrayList drawHearts;
stringsformother Stringsformother=new stringsformother() ;
void setup() {
  size(900, 900);
  smooth();

  drawHearts=new ArrayList();
  for (int i=0; i<400; i=i+1) {
    drawHearts.add(new hearts());
  }
}

void draw() {
  PImage img;
  img = loadImage("123.jpg");
  image(img, 0, 0);
  if (k<drawHearts.size()) {
    hearts part = (hearts)drawHearts.get(k);
    part.display();
    part.display1();
    part.update();
    k=k+1;
    fill(#D31E3F, 80);
    textSize(30);
    text("I Love you Mum!", mouseX, mouseY);
  }
  println(drawHearts.size());
  Stringsformother.printtext();
  Stringsformother.updatem1();
  if (frameCount % 20 == 0) {
    c = 255 - c; // 255 0 255 0 255 0 ..
  }
  saveFrame("frames/####.png");
  if (frameCount > 120) { 
    // 60 seconds * 2 fps = 120
    noLoop();
  }
}



//this class shows the hearts and starts shown randomly around the screen.
class hearts {
  color a;
  color b;
  float x;
  float y;
  float w;
  float h;
  PVector v1, v2;
  float vx, vy;
  float ax, ay;
  hearts() {


    x=random(0, 500);
    y=random(0, 500);
    w=random(10, 20);
    h=random(10, 20);
    v1=new PVector (x, y);
  }
  //the hearts
  void display() {
    fill(#5E4F89, 80);
    stroke(#F50CCF, 80);
    strokeWeight(5);
    beginShape();
    curveVertex(0+v1.x, h+v1.y);
    curveVertex(0+v1.x, h+v1.y);
    curveVertex(0.5*w+v1.x, 0.5*h+v1.y);
    curveVertex(w+v1.x, h+v1.y);
    curveVertex(1.4*w+v1.x, 0.5*h+v1.y);
    curveVertex(2*w+v1.x, h+v1.y);
    curveVertex(1.8*w+v1.x, 2*h+v1.y);
    curveVertex(w+v1.x, 3*h+v1.y);
    curveVertex(0.2*w+v1.x, 2*h+v1.y);
    curveVertex(0+v1.x, h+v1.y);
    curveVertex(0+v1.x, h+v1.y);
    endShape();
  }
  //the strats
  void display1() {
    line(5*w+v1.x, 5*w+v1.y, 5*w+v1.x+3*w, 5*w+v1.y+h);
    line(5*w+v1.x+3*w, 5*w+v1.y+h, 5*w+v1.x+w, 5*w+v1.y+3*h);
    line(5*w+v1.x+w, 5*w+v1.y+3*h, 5*w+v1.x+1.5*w, 5*w+v1.y-h);
    line(5*w+v1.x+1.5*w, 5*w+v1.y-h, 5*w+v1.x+2*w, 5*w+v1.y+3*h);
    line(5*w+v1.x+2*w, 5*w+v1.y+3*h, 5*w+v1.x, 5*w+v1.y);
  }

  void update() {
    x=random(0, 900);
    y=random(0, 900);
    w=random(10, 20);
    h=random(10, 20);
  }
}

//this class shows the strings
class stringsformother {
  PVector m1;

  stringsformother() {
    m1=new PVector (width/2, height);
  }
  void printtext() {
    text("Today,is mother's day!", m1.x, m1.y);
    text("Happy mother's day!", m1.x, m1.y+40);
    text("I want to tell you, mum, how much I love you", m1.x, m1.y+80);
    text("You gave me my life and took care of it well", m1.x, m1.y+120);
    text("Thank you so much for all these years", m1.x, m1.y+160);
  }
  void updatem1() {
    m1.x=m1.x;
    m1.y=m1.y+5;
  }
}

