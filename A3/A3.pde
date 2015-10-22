  //Assignment 03
  //Name: Tu Luan
  //E-mail: tluan@brynmawr.edu
  //Course: Cs110, Jia Tao's section
  //Submitted: 02/25/2015
  //This abstract printing is made of polygons to depict a pink lovely flower in the spring.
  


// set up background
void setup(){
  size(displayWidth,displayHeight);
  noSmooth();
  background(0);
  frameRate(50);
  
}

// call all the fuctions and print out my name.
void draw(){
rects(width/2,height/2,random(10,20));
outer_draw(width/2.0, height/2.0, 7);
textSize(40);
text("Tu Luan", 0.88*width,0.9*height);
}

//set up some globel variables
float fDegree=0;
float outerRadius=20;
float numberSide2=10;

// this fuction draws the moving rectangles in the middle of the flower.
void rects(float mx,float my,float innerRadius){
  float x3,y3;
  float cDegree=360.0/numberSide2;
  for (int i=0; i<2;i++){
  fDegree=fDegree+cDegree;
  outerRadius=outerRadius+1;
  x3=mx+outerRadius*cos(radians(fDegree));
  y3=my+outerRadius*sin(radians(fDegree));
  fill(random(80,200),random(80,200),random(80,200),80);
  noStroke();
  rect(x3,y3,innerRadius,innerRadius);
 }
 numberSide2=numberSide2+1;
}


// this fuction gives the latter fuction" inner_draw" inputs to make it abstract.
// as the radius go smaller and finally get to negtive values, the polygons will be drawed in a different direction which will make the final flower.
 
void outer_draw(float orX, float orY,int numberSide1){
  float angle=5;
  float radius=width/2;
  for (int i=0; i<100;i++){
  radius =radius-10;
  angle=angle+2;
  inner_draw(orX,orY,radius,angle,numberSide1);
  }
}
  
  
float q=0;


// this fuction draws a single polygon.
void inner_draw(float ox, float oy, float radius,float aDegree, int numberSide){

  float x2,y2;
  
  float bDegree=360.0/numberSide;
  stroke(101+random(20),129+random(20),168+random(20),1);
  fill(224+random(50),149+random(30),153+random(30),2);
  strokeWeight(1);
  beginShape();
  for (int i=0;i<numberSide;i=i+1){
  x2=ox+radius*cos(radians(aDegree));
  y2=oy+radius*sin(radians(aDegree));
  vertex(x2,y2);
  aDegree=aDegree+bDegree;
  }
  endShape(CLOSE);
}

