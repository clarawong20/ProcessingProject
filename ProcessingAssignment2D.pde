/* 
 Description: Processing Assignment 2, Pattern D
 Author: Clara Wong
 Date of last edit: December 8, 2018
 http://www.chuckmcquilkin.com/patterns-with-processing/#
 */

//colours
int background;
int colour;
int colour2;
int colour3;
int colour4;

//dark blue quad
int a;
int a2;
int b;
int b2;
int c;
int c2;
int d;
int d2; 

//light blue quad
int x;
int y;
int x2;
int y2;
int x3;
int y3;
int x4;
int y4;

//circles
float s;
float h;
float h2;

//Lines of second pattern
float xPos;
float xAxis;

//rectangle background
int cx;
int cy;
int cx2;
int cy2;

//circles in white background
float diameter;

//diamonds in navy blue background
int q;
int q2;
int w;
int w2;
int r;
int r2;
int t;
int t2;

//circles in grey backgroud
float h3;
float h4;
float h5;
float h6;
float h7;
float h8;
float h9;
float h10;
float h11;
float h12;
float h13;
float h14;

void settings() {
  size(800, 400);
}

void setup() {
  colour = #14236C; //dark blue
  colour2 = #14236C; 
  colour3 = #7EADAF; 
  colour4 = #7EADAF;
  background = #D8D2A4;
  h = 0;
  h2 = height;
  s = 50;
  xPos = width/2;
  xAxis = width/2;
  diameter = 10;
  h3 = 0;
  h4 = 0;
  h5 = 0;
  h6 = height;
  h7 = 0;
  h8 = 0;
  h9 = width;
  h10 = height;
  h11 = 0;
  h12 = height;
  h13 = width;
  h14 = height;
  smooth();
}

void draw() {
  background(background);
  /*for (int a = 0; a < width; a += 40) {
   for (int a2 = 10; a2 < height; a2 += 80) {
   for (int b = 0; b < width; b += 40) {
   for (int b2 = 30; b2 < height; b2 += 80) {
   for (int c = 20; c < width; c += 40) {
   for (int c2 = 40; c2 < height; c2 += 80) {
   for (int d = 20; c < width; c += 40) {
   for (int d2 = 20; c2 < height; c2 += 80) {
   fill(20, 35, 108);
   quad(a, a2, b, b2, b, c2, d, d2);
   }
   } */

  //dark blue quad 1
  noStroke();
  a2 = -40; 
  b2 = -20;
  c2 = -10;
  d2 = -30;
  while (c2 < height) {
    a2 += 60;
    b2 += 60;
    c2 += 60;
    d2 += 60;
    while (b < width) {
      a+=40;
      b+=40;
      c+=40;
      d+=40; 
      fill(colour);
      quad(a, a2, b, b2, c, c2, d, d2);
    }
    a = -40;
    b = -40;
    c = -20;
    d = -20;
  } 
  //dark blue quad 2
  a2 = -60;
  b2 = -40;
  c2 = -50;
  d2 = -70;
  while (c2 < height) {
    a2 += 60;
    b2 += 60;
    c2 += 60;
    d2 += 60; 
    while (b < width) {
      a+=40;
      b+=40;
      c+=40;
      d+=40;
      fill(colour2);
      quad(a, a2, b, b2, c, c2, d, d2);
    }
    a = -40;
    b = -40;
    c = -20;
    d = -20;
  } 

  //light blue quad 1
  y = -70; 
  y2 = -50;
  y3 = -40;
  y4 = -60;
  while (y2 < height) {
    y += 60;
    y2 += 60;
    y3 += 60;
    y4 += 60;
    while (x < width) {
      x+=40;
      x2+=40;
      x3+=40;
      x4+=40; 
      fill(colour3);
      quad(x, y, x2, y2, x3, y3, x4, y4);
    }
    x = -20;
    x2 = -20;
    x3 = 0;
    x4 = 0;
  } 
  //light blue quad 2
  y = -90; 
  y2 = -70;
  y3 = -80;
  y4 = -100;
  while (y2 < height) {
    y += 60;
    y2 += 60;
    y3 += 60;
    y4 += 60;
    while (x < width) {
      x+=40;
      x2+=40;
      x3+=40;
      x4+=40; 
      fill(colour4);
      quad(x, y, x2, y2, x3, y3, x4, y4);
    }
    x = -20;
    x2 = -20;
    x3 = 0;
    x4 = 0;
  }
  //second pattern after moving mouseY down
  if (mouseY > height/2) {
    rectMode(CORNERS);
    fill(0);
    rect(0, 0, width, height);
    //black background
    if (mousePressed == true) {
      while (cx2 <= width) {
        cx -= 20;
        cy -= 9;
        cx2 += 20;
        cy2 += 9;
        stroke(255);
        noFill();
        rect(cx, cy, cx2, cy2);
      }
      cx = width/2 - 20;
      cy = height/2 - 5; 
      cx2 = width/2 + 20;
      cy2 = height/2 + 5; 

      //vertical circles
      for (int y = 50; y < height; y += 100) {
        fill(random(255));
        ellipse(xPos, y, s, s);
        xPos -= 0.8;
        if (xPos < 0) {
          xPos = width/2;
        }
        ellipse(xAxis, y, s, s);
        xAxis += 0.8;
        if (xAxis > width) {
          xAxis = width/2;
        }
        strokeWeight(5);
        stroke(random(255), random(255), random(255));
        line(xPos - 25, y, 0, height/2);
        line(xAxis + 25, y, width, height/2);
        strokeWeight(1);
      }
      //Horizontal Circles 
      for (int x = 50; x < width; x += 100) {
        fill(random(20, 255));
        noStroke();
        ellipse(x, h, s, s);
        h += 0.2;
        ellipse(x, h2, s, s);
        h2 -= 0.2;
        if (h > height/2) {
          h = 0;
        }
        if (h2 < height/2) {
          h2 = height;
        }
        strokeWeight(5);
        stroke(random(255), random(255), random(255));
        line(x, h+25, x, h2-25);
        strokeWeight(1);
      }
    } //grey background pattern
    else if (keyPressed == true) {
      background(101, 102, 103);
      fill(255);
      q2 = -60; 
      w2 = -30;
      r2 = 0;
      t2 = -30;
      while (r2 < height) {
        q2 += 120;
        w2 += 120;
        r2 += 120;
        t2 += 120;
        while (w < width) {
          q+=120;
          w+=120;
          r+=120;
          t+=120; 
          quad(q, q2, w, w2, r, r2, t, t2);
        }
        q = -75;
        w = -105;
        r = -75;
        t = -45;
      }  
      for (int x = 45; x < width; x += 120) {
        stroke(255);
        line(x, 0, x, height); 
        for (int y = 90; y < height; y += 120) {
          line(0, y, width, y);

          ellipse(h4, h3, 20, 20);
          h3 += 0.1;
          h4 += 0.2;
          if (h3 > height && h4 > width) {
            h3 = 0;
            h4 = 0;
          }
          ellipse(h5, h6, 20, 20);
          h5 -= 0.2;
          h6 += 0.1;
          if (h5 < 0 && h6 > height) {
            h5 = width;
            h6 = 0;
          }
          ellipse(h7, height/2, 20, 20);
          h7 += 0.2;
          if (h7 > width) {
            h7 = 0;
          }
          ellipse(h9, height/2, 20, 20);
          h9 -= 0.2;
          if (h9 < 0) {
            h9 = width;
          }
          ellipse(width/2, h8, 20, 20);
          h8 += 0.1;
          if (h8 > height) {
            h8 = 0;
          }
          ellipse(width/2, h10, 20, 20);
          h10 -= 0.1;
          if (h10 < 0) {
            h10 = height;
          }
          ellipse(h11, h12, 20, 20);
          h11 += 0.2;
          h12 -= 0.1;
          if (h11 > width && h12 < 0) {
            h11 = 0;
            h12 = height;
          }
          ellipse(h13, h14, 20, 20);
          h13 -= 0.2;
          h14 -= 0.1;
          if (h13 < 0 && h14 < 0) {
            h13 = width;
            h14 = height;
          } 
        }
      }
    }

    //white background pattern
    else {
      background(255);
      while (cx2 <= width) {
        cx -= 20;
        cy -= 9;
        cx2 += 20;
        cy2 += 9;
        stroke(0, 100);
        noFill();
        rect(cx, cy, cx2, cy2);
      }
      cx = width/2 - 20;
      cy = height/2 - 5; 
      cx2 = width/2 + 20;
      cy2 = height/2 + 5; 

      for (int x = 50; x < width; x += 100) {
        for (int y = 30; y < height; y += 100) {
          noFill();
          stroke(14, 232, 175);
          strokeWeight(10);
          ellipse(x, y, diameter, diameter);
          diameter += 0.1;
          if (diameter > 150) { 
            diameter = 10;
          }
        }
      }
      strokeWeight(1);
    }
  }
}
//timer to switch colours
void mouseClicked() {

  //colour set 1
  if (mouseButton == LEFT && colour == #14236C) {
    colour = #AA1A15; //red
  } else if (mouseButton == LEFT && colour == #AA1A15) {
    colour = #14236C;
  }
  if (mouseButton == LEFT && colour2 == #14236C) {
    colour2 = #0FA01E; //green
  } else if (mouseButton == LEFT && colour2 == #0FA01E) {
    colour2 = #14236C;
  }

  if (mouseButton == LEFT && colour3 == #7EADAF) {
    colour3 = #AA1A15;
  } else if (mouseButton == LEFT && colour3 == #AA1A15) {
    colour3 = #7EADAF;
  }

  if (mouseButton == LEFT && colour4 == #7EADAF) {
    colour4 = #0FA01E;
  } else if (mouseButton == LEFT && colour4 == #0FA01E) {
    colour4 = #7EADAF;
  }

  if (mouseButton == LEFT && background == #D8D2A4) {
    background = 255;
  } else if (mouseButton == LEFT && background == 255) {
    background = #D8D2A4;
  }
  if (mouseButton == RIGHT && background == #D8D2A4) {
    background = 0;
  } else if (mouseButton == RIGHT && background == 0) {
    background = #D8D2A4;
  }
  //colour set 2
  if (mouseButton == RIGHT && colour == #14236C) {
    colour = #FFC121; //yellow
  } else if (mouseButton == RIGHT && colour == #FFC121) {
    colour = #14236C;
  } 
  if (mouseButton == RIGHT && colour2 == #14236C) {
    colour2 = #CB8500; //dark yellow
  } else if (mouseButton == RIGHT && colour2 == #CB8500) {
    colour2 = #14236C;
  }

  if (mouseButton == RIGHT && colour3 == #7EADAF) {
    colour3 = #FFC121;
  } else if (mouseButton == RIGHT && colour3 == #FFC121) {
    colour3 = #7EADAF;
  }

  if (mouseButton == RIGHT && colour4 == #7EADAF) {
    colour4 = #CB8500;
  } else if (mouseButton == RIGHT && colour4 == #CB8500) {
    colour4 = #7EADAF;
  }

  /* #14236C = dark blue
   #AA1A15 = red
   #0FA01E = green
   #7EADAF = light blue
   #27A5B2 = turquoise
   #FFC121 = yellow
   #CB8500 = orange */
}
