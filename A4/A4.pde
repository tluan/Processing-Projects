//Assignment 04
//Name: Tu Luan
//E-mail: tluan@brynmawr.edu
//Course: Cs110, Jia Tao's section
//Submitted: 03/25/2015
//This graph show "Corn: Harvested acreage and farm price from 1866-2015",which is good for analysis both data at the same time.
//(!!!!!!!!!please move your mouse to the right up corner to view the interactive effects.!!!!!!!)




// I set up arries and variables in this part.
float[] harvested_Acres;
String[] years;
float[] price;
float min_Acres, max_Acres, max_price;
float x1, x2, y1, y2;
boolean inside;


//I write the set up in this part.
void setup() {

  size(700, 700);
  smooth();
  background(255);

  fill(0);
  String[] lines = loadStrings("Datalatest.csv");
  years= new String[lines.length];
  harvested_Acres= new float[lines.length];
  price=new float[lines.length];
  int j = 0;
  for (int i=0; i<lines.length; i++) {
    String[] pieces = split(lines[i], ",");
    harvested_Acres[i] = float(pieces[1]);
    price[i]=float(pieces[3]);
    years[i] =pieces[0];
    println(harvested_Acres[i]);
  }
  min_Acres = min(harvested_Acres);
  max_Acres = max(harvested_Acres);
  max_price=max(price);
  println(min_Acres);
  println(max_Acres);

  x1 = 0.1*width;
  x2 = width-x1;
  y1 = 0.1*height;
  y2 = height - y1;
}

//draw the whole graph
void draw() {
  background(#B2BBC2);
  noStroke();
  fill(#ECE0D8);
  rect(x1, y1, 0.8*width, 0.8*height);
  stroke(0);
  fill(200);
  textSize(18);
  textAlign(LEFT);
  fill(255);
  text("Corn: Harvested acreage and farm price from 1866-2015", x1+20, 
  y1 - 20);
  textSize(10);
  textAlign(RIGHT, BOTTOM);
  text("data.gov", width - 20, height - 20);
  text("Tu Luan", width - 20, height - 10);

  drawRect(harvested_Acres);

  if (mouseX>0.85*width&&mouseX<0.85*width+100&&mouseY>0.05*height&&mouseY<0.05*height+30==true) {


    drawprice(price);
    drawPriceLabels();
    labels(years);
    text("Weighted-average farm price (dollars per bushel)", 0.5*width, 0.95*height);
  } else {
    labels(years);
    drawYLabels();
    textSize(10);
    text("Harvested for grain (Million acres)", 0.6*width, 0.95*height);
  }
  botton();
}

//draw the price change curve.
void drawprice(float[] data) {
  fill(#F2DBA1);
  beginShape();
  stroke(#FCB603);
  for (int i = 0; i < data.length; i++) {
    float x = map(i, 0, data.length-1, x1, x2);
    float y = map(data[i], 0, max_price, y2, y1);
    vertex(x, y);
  }
  vertex(x2, y2);
  vertex(x1, y2);
  endShape(CLOSE);
} // drawGraph


//draw rectangles to present data.
void drawRect(float[] data) {
  float ax=0.1*width;
  float totalwidth=0.8*width;
  float rect_width=(totalwidth/(data.length));
  float mx=0.1*width;

  if (mouseX>0.85*width&&mouseX<0.85*width+100&&mouseY>0.05*height&&mouseY<0.05*height+30) {
    stroke(#678895, 30);
  } else {
    stroke(#678895);
  }
  for (int i=0; i<data.length; i=i+1) {
    float my=map(harvested_Acres[i], 0, max_Acres, y2, y1);
    fill(168, 207, 219);
    rect(mx, my, rect_width, 0.9*height-my);
    mx=mx+rect_width;
  }
}
void labels(String[] data2) {
  fill(255);
  textSize(10);
  textAlign(CENTER);
  for (int i = 0; i < data2.length; i += 10) {
    float x = map(i, 0, data2.length, x1, x2);
    text(1866+i, x, y2 + 10);
    stroke(0);
    line(x, y1, x, y2);
  }
  text("2015", x2, y2+10);
} // drawXLabels
void drawYLabels() {
  fill(255);
  textSize(10);
  textAlign(RIGHT);

  for (float i=0; i <=max_Acres; i +=10) {
    float y = map(i, 0, max_Acres, y2, y1);
    text(i, x1-5, y);
    line(x1, y, x2, y);
  }

  text("Million acres", x1, y1-10);
  text("Year", x2+30, y2);
}


//draw botton
//let you know if you trigger the interactive feature
//the botton will change color when you mover your mouse into it.
void botton() {
  noStroke();
  fill(255);
  rect(0.85*width, 0.05*height, 100, 30);
  if (mouseX>0.85*width&&mouseX<0.85*width+100&&mouseY>0.05*height&&mouseY<0.05*height+30) {
    fill(#62757B);
  } else {
    fill(#DE7273);
  }
  textSize(10);
  text("Move mouse here to", 0.85*width+95, 0.05*height+10);
  text("Show price change", 0.85*width+95, 0.05*height+20);
}


//draw price y-lebel
//The following set up y-labels for the price graph
//Since the price and the amount of arceage have different y-labels
//I use different labels to make the data less confusing.
void drawPriceLabels() {
  fill(255);
  textSize(10);
  textAlign(RIGHT);

  for (float i=0; i <max_price; i +=0.5) {
    float y = map(i, 0, max_price, y2, y1);
    text(i, x1, y);
    line(x1, y, x2, y);
  }

  text("Dollars per bushel", x1+17, y1-10);
  text("Year", x2+30, y2);
}
void mouseClicked() {
  save("This_is_a_graph.tiff");
}

