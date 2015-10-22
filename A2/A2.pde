  //Assignment 02 
  //Name: Tu Luan
  //E-mail: tluan@brynmawr.edu
  //Course: Cs110, Jia Tao's section
  //Submitted: 02/11/2015
  //Description: The project depicts the Japanese spring flowers. When the spring is coming, the flower grows and bees come and some of the petals fall down on the wind.
  
//set up the background
void setup() { 
   frameRate(15);
   size(500, 500);
   smooth();
   background(255, 242, 149);
   noStroke();
   fill(255,149,162);
   rect(250,250,250,500);
   fill(149,162,255);
   rect(0,0,250,250);
   fill(162,255,149);
   rect(240,240,20,260);
   textSize(20);
   text("Tu Luan",400,400);
   
} 


//call all the fuctions
//fuction drawMyObject2 will run to draw a bee when you double click the mouse.
void draw() {  
    if (mousePressed) {
     drawMyObject2(mouseX,mouseY);
    } 
    drawMyObject1(80,80,random(80,90));
    drawMyObject(random(0, 500),random(0, 500),random(10,20), random(10,20));  
    
}




  // the function draws the bee. When you have your mouse in different area, the bees will change the colors.
  void drawMyObject2(float x, float y) {
  line(x,y-30,x+15,y-70);  
  line(x,y-30,x-15,y-70);
   if ((mouseX<=250)&&(mouseY<=250)){
   fill(#CEC2AF);
   }
   else{
      fill(#F2C5A5);
   }
  stroke(#FDD257);  
  ellipse(x+15,y-70,10,10);
  ellipse(x-15,y-70,10,10);
  ellipse(x-25,y+5,40,20);
  ellipse(x-25,y-15,40,20);
  ellipse(x+25,y+5,40,20);
  ellipse(x+25,y-15,40,20);
  ellipse(x,y,30,40);
  ellipse(x,y-30,40,40);
  ellipse(x-8,y-35,5,15);
  ellipse(x+8,y-35,5,15);
  }
  
  
  
  //the fuction draws the flower in the middle. Each petal of it appears in different colors, positions, and sizes.
   void drawMyObject1(float x, float y, float w) {
   fill(253+random(30),198+random(20),218+random(30));
   stroke(207+random(30),180+random(20),222+random(30));
   strokeWeight(5);
   translate(250, 250);
   rotate(radians(random(0,360))); 
   beginShape();
   curveVertex(0,0);
   curveVertex(0,0);
   curveVertex(w,0.5*y);
   curveVertex(0.5*x,y);
   curveVertex(random(1.1,1.5)*x,random(1.1,1.5)*y);
   curveVertex(x,0.5*y);
   curveVertex(0.5*x,w);
   curveVertex(0,0);
   curveVertex(0,0);
   endShape();
}





   //the fuction darws the heart-shape petals. Each petal of it appears in different colors, positions, and sizes.
   void drawMyObject(float x, float y, float w, float h) {
   frameRate(random(2,5));
   fill(253+random(-30,-10),198+random(10,20),218+random(10,30));
   stroke(207+random(10,30),180+random(10,20),222+random(20,30));
   strokeWeight(5);
   translate(-250, -250);
   beginShape();
   curveVertex(0+x,h+y);
   curveVertex(0+x,h+y);
   curveVertex(0.5*w+x,0.5*h+y);
   curveVertex(w+x,h+y);
   curveVertex(1.4*w+x,0.5*h+y);
   curveVertex(2*w+x,h+y);
   curveVertex(1.8*w+x,2*h+y);
   curveVertex(w+x,3*h+y);
   curveVertex(0.2*w+x,2*h+y);
   curveVertex(0+x,h+y);
   curveVertex(0+x,h+y);
   endShape();
}
 
