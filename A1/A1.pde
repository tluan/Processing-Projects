  //Assignment 01 
  //Name: Tu Luan
  //E-mail: tluan@brynmawr.edu
  //Course: Cs110, Jia Tao's section
  //Submitted: 02/01/2015
  //My inspiration is the photo of Japanese famous meme dog “Doge”. Its cute and interesting face deeply impressed me when I first saw it, so I decide to make a cartoon drawing version of Doge in my first Processing assignment. 
  
  
  //set up the background size
  size(700, 700);
  
  //this is a text part
  textSize(52);
  text("WOW", 130, 130);//text
 
  
  // "ears part" for Doge
  fill(227,193,80);
  strokeWeight(7);
  stroke(211,179,82);
  triangle(357,222,466,119,492,263);
  triangle(220,290,250,140,300,214);
  fill(203,163,101);
  triangle(366,266,464,119,492,263);
  triangle(240,290,250,140,300,214);
 
  //face for the doge
  noStroke();
  fill(227,193,80);
  ellipse(350,350,350,350);
  ellipse(310,369,300,300);
  
  //eyes for doge
  fill(255);
  ellipse(387,313,65,50);
  ellipse(250,313,55,50);
  fill(0);
  ellipse(252,313,45,45);//eyes for the doge
  ellipse(390,313,50,50);//eyes for the doge
  fill(255);
  ellipse(240,304,12,12);//light spots on doge's eyes
  ellipse(378,304,15,15);//light spots on doge's eyes
  
  //nose for doge
  fill(85);
  triangle(246,364,310,363,267,402);//nose for doge
  fill(0);
  triangle(251,373,300,372,267,402);//nose for doge
  
  
  //the eyeline for doge
  noFill();
  stroke(0);
  strokeWeight(4);
  beginShape();
  curveVertex(350,329); 
  curveVertex(350,329); 
  curveVertex(363,299);
  curveVertex(386,286);
  curveVertex(416,297);
  curveVertex(420,315); 
  curveVertex(420,315); 
  endShape();
  noFill();
  beginShape();
  curveVertex(419,315); 
  curveVertex(419,315); 
  curveVertex(415,323);
  curveVertex(390,338);
  curveVertex(370,335);
  curveVertex(350,329); 
  curveVertex(350,329); 
  endShape();
  beginShape();
  curveVertex(273,329); 
  curveVertex(273,329); 
  curveVertex(272,306);
  curveVertex(252,290);
  curveVertex(225,299);
  curveVertex(220,315); 
  curveVertex(220,315);
  endShape();
  beginShape();
  curveVertex(273,329); 
  curveVertex(273,329); 
  curveVertex(257,335);
  curveVertex(248,335);
  curveVertex(229,327);
  curveVertex(220,315); 
  curveVertex(220,315); 
  endShape();
  
  //nose curves for doge
  beginShape();
  strokeWeight(7);
  stroke(211,179,82);
  curveVertex(282,316); 
  curveVertex(282,316); 
  curveVertex(273,332);
  curveVertex(267,340);
  curveVertex(251,357);
  curveVertex(250,364);
  curveVertex(250,364);
  endShape();
  
  
  //mounth curves for doge
  beginShape();
  strokeWeight(4);
  stroke(0);
  curveVertex(267,402); 
  curveVertex(267,402);
  curveVertex(265,408);
  curveVertex(266,410);
  curveVertex(268,416);
  curveVertex(270,420); 
  curveVertex(270,420); 
  endShape();
  
  beginShape();
  strokeWeight(4);
  stroke(0);
  curveVertex(390,412);
  curveVertex(390,412); 
  curveVertex(378,420);
  curveVertex(359,428);
  curveVertex(291,426);
  curveVertex(270,420); 
  curveVertex(270,420);
  endShape();
  
  beginShape();
  strokeWeight(4);
  stroke(0);
  curveVertex(235,415); 
  curveVertex(235,415); 
  curveVertex(248,423);
  curveVertex(256,427);
  curveVertex(262,425);
  curveVertex(270,420); 
  curveVertex(270,420); 
  endShape();
  
  //mounth shade for doge
  noStroke();
  fill(100,100,100,60);
  ellipse(300,420,100,45);
  
  //red face circles for doge
  smooth();
  fill(219,77,106,70);
  noStroke();
  ellipse(440,389,90,60);
  ellipse(203,389,50,40);
  
  //to ensure I use enough kinds of shapes to satisfy the requirement, I use other shapes below
  fill(255,80);
  rect(200,600,300,50);
  arc(225,625,50,50,0,PI);
  arc(275,625,50,50,0,PI);
  arc(325,625,50,50,0,PI);
  arc(375,625,50,50,0,PI);
  arc(425,625,50,50,0,PI);
  arc(475,625,50,50,0,PI);
  
  
  //signature
  fill(75,162,156,80);
  textSize(20);
  text("By: Erica Tu Luan",260,630);
