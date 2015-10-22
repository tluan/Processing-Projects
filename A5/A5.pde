//Assignment 05 partB
//Name: Tu Luan
//E-mail: tluan@brynmawr.edu
//Course: Cs110, Jia Tao's section
//Submitted: 03/30/2015
//This printing shows a little pink crab in the water.
//since it is not the final version, I have not adjusted the initial position of the crab. In stead I assigned it to be random.



TLuanThingy TLFish;    // An instance of JTaoThingy will be called JTFish
float SIZE;      // The SIZE of the instance that will be created


void setup() {
  background(#1987BC);
  size(800, 600);
  smooth();
  SIZE = 220;
  TLFish = new TLuanThingy(SIZE); 

  // Create an instance with size, SIZE
} // end of setup


void draw() {
  background(#1987BC);
  TLFish.move();
  TLFish.display();
} // end of draw

class TLuanThingy {  
  float sx, sy;
  float vx, vy;
  float ax, ay;
  float fish_height;
  float fish_width;
  float size;
  float d;
  float w, h;
  float mx, my;
  float i;
  TLuanThingy(float _size) {
    sx = random(0.0, width/10);
    sy = random(height*0.35, height*0.65);
    vx = 1;
    vy = 1;
    ax=0;
    ay=0;
    d=20;
    size=_size;
    w=size/20;
    i=1;
    h=size/30;
  }
  void display() {
    stroke(#8B2626);
    line(sx+size/4, sy, sx+size/4+0.05*size, sy-0.05*size);
    line(sx+size/4+0.05*size, sy-0.05*size, sx+size/4+0.1*size, sy);
    line(sx-0.05*size+size/4, sy-0.05*size, sx+size/4+0.05*size, sy-0.1*size);
    line(sx+size/4+0.05*size, sy-0.1*size, sx+size/4+0.1*size, sy-0.05*size);
    line(sx+0.1*size-size/4, sy+0.05*size, sx-size/4-0.05*size, sy);
    line(sx-size/4-0.05*size, sy, sx-size/4-0.1*size, sy+0.05*size);
    //legsright
    line(sx-size/4, sy, sx-size/4-0.05*size, sy-0.05*size);
    line(sx-size/4-0.05*size, sy-0.05*size, sx-size/4-0.1*size, sy);
    line(sx+0.05*size-size/4, sy-0.05*size, sx-size/4-0.05*size, sy-0.1*size);
    line(sx-size/4-0.05*size, sy-0.1*size, sx-size/4-0.1*size, sy-0.05*size);
    line(sx-0.1*size+size/4, sy+0.05*size, sx+size/4+0.05*size, sy);
    line(sx+size/4+0.05*size, sy, sx+size/4+0.1*size, sy+0.05*size);
    //hands holder
    line(sx-0.125*size, sy, sx-0.25*size, sy-0.20*size);
    line(sx+0.125*size, sy, sx+0.25*size, sy-0.20*size);
    //eyes holders
    line(sx-0.125*size, sy, sx-0.125*size, sy-0.15*size);
    line(sx+0.125*size, sy, sx+0.125*size, sy-0.15*size);
   
    fill(255);
    ellipse(sx-0.125*size, sy-0.15*size, size/20, size/20);
    ellipse(sx+0.125*size, sy-0.15*size, size/20, size/20);


    stroke(#A48B86);
    if ((sx<=size/4+0.2*size )||(sx >= (width-size/4-0.1*size))) { 
    fill(29);
    ellipse(sx-0.125*size-size/80, sy-0.15*size, size/30, size/30);
    ellipse(sx+0.125*size-size/80, sy-0.15*size, size/30, size/30);
    } else if ((sy<= (0.20*size)+0.4*size)||(sy >= (height-size/80+0.1*size))){
      fill(31);
      ellipse(sx-0.125*size+size/80, sy-0.15*size, size/30, size/30);
      ellipse(sx+0.125*size+size/80, sy-0.15*size, size/30, size/30);
    } else {
      fill(0);
      ellipse(sx-0.125*size, sy-0.15*size, size/30, size/30);
      ellipse(sx+0.125*size, sy-0.15*size, size/30, size/30);
    }

    //hands
    fill(#F49F85);
    arc(sx-0.25*size, sy-0.20*size, size/2/5, size/2/5, -PI/4, 5*PI/4, PIE);
    arc(sx+0.25*size, sy-0.20*size, size/2/5, size/2/5, -PI/4, 5*PI/4, PIE);
  } 
  void move() {
    sx = sx + vx;
    sy += vy;
    vx += ax;
    vy += ay;
    if ((sx<=size/4+0.1*size && vx <0)||(sx >= (width-size/4-0.1*size) && vx>0)) { 
      vx = -vx;
    } else if ((sy<= (0.20*size)&& vy <0)||(sy >= (height-size/8)&& vy>0)) {
      vy = -vy;
    } else {
      fill(0);
      ellipse(sx-0.125*size, sy-0.15*size, size/30, size/30);
      ellipse(sx+0.125*size, sy-0.15*size, size/30, size/30);
    }
    if (sx>=0&&sx<=0.3*width) {
      fill(255, 50);
      ellipse(sx+0.5*0.5*0.5*size, sy-0.5*0.5*0.5*size, size/20, size/20);
    }
    if (sx>=4/width&&sx<=0.3*width) {
      fill(255, 50);
      ellipse(sx+0.5*0.5*0.5*size, sy-0.5*0.5*0.5*size, size/20, size/20);
      ellipse(sx+0.5*0.5*size, sy-0.5*0.5*size, size/20, size/20);
    }
    if (sx>=0.3*width&&sx<=0.55*width) {
      fill(255, 50);
      ellipse(sx+0.5*0.5*0.5*size, sy-0.5*0.5*0.5*size, size/20, size/20);
      ellipse(sx+0.5*0.5*size, sy-0.5*0.5*size, size/20, size/20);
      ellipse(sx+0.5*0.75*size, sy-0.5*0.75*size, size/15, size/15);
    }
    if (sx>=0.55*width&&sx<=0.9*width) {
      fill(255, 50);
      ellipse(sx+0.5*0.5*0.5*size, sy-0.5*0.5*0.5*size, size/20, size/20);
      ellipse(sx+0.5*0.5*size, sy-0.5*0.5*size, size/20, size/20);
      ellipse(sx+0.5*0.75*size, sy-0.5*0.75*size, size/15, size/15);
      ellipse(sx+0.5*size, sy-0.5*size, size/10, size/10);
    }

    if (i%35==0) {
      fill(#8B2626);
      ellipse(sx, sy, size/2, size/4);
      fill(#FF6F82);
      ellipse(sx, sy, size/16, size/16);
    } else {
      fill(#8B2626);
      ellipse(sx, sy, size/2, size/4);
      fill(#FF6F82);
      ellipse(sx, sy, size/8, size/8);
      
    }
    i=i+1;
  }
}

