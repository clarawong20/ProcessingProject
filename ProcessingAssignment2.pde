/* Description: Processing Assignment 2, Pattern B
 Author: Clara Wong
 Date of last edit: November 27, 2018
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

void settings() {
  size(800, 400);
}

void setup() {
  colour = #14236C; //dark blue
  colour2 = #14236C; 
  colour3 = #7EADAF; 
  colour4 = #7EADAF;
  background = #D8D2A4;
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
}

//timer to switch colours
void mouseClicked() {

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
   #27A5B2 = turqoise */
}

//https://www.quora.com/What-three-colors-look-best-together
