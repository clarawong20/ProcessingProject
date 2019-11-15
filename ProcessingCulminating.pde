/* Description: Programming Culminating
 Author: Clara Wong
 Last Date of Edit: January 21, 2019 */

float x;
float y;
float c;
float xAxis;
color colour;
color colour2;
float w;
float t;
float l;
float l2;
float r;
float[] X = new float[100];
float[] Y = new float[100];
float[] yMovement = new float[100];
color c1;
color c2;
color c3;
float time;
float time2;
int A;
color c4;
float line;
float H;

void settings() {
  size(1000, 500);
}

void setup() {
  x = 230;
  xAxis = 250;
  c = 50;
  colour = #0000FF;
  colour2 = #CB151B;
  c1 = #9A0FF2;
  c2 = #0F77F2;
  w = 50;
  l = 180;
  l2 = 400;
  r = 180;
  A = 50;
  c3 = #FF0000;
  time = 1;
  time2 = 1;
  c4 = #5B32E3;
  line = 0;
  H = 400;
  for (int loop = 0; loop < 50; loop++) {
    X[loop] = random(435, 525);
    Y[loop] = random(205, 340);
    yMovement[loop] = random(0.5, 1.5);
  }
}

void draw() {
  background(0);
  setGradient(525, 180, w, 180, c1, c2);
  if (mouseX > width/2) {
    time += 1;
    for(int A = 20; A < width; A += 50) {
        noStroke();
        fill(c4);
        ellipse(A, 10, 20, 20);
        ellipse(A, 490, 20, 20);
      }
      if(time < 200) {
        c4 = #5B32E3;
      }
      if(time > 200) {
        c4 = #1FC13E;
      }
      if(time > 400) {
        c4 = #5B32E3;
        time = 0;
      }
      stroke(255);
      strokeWeight(2);
      line(0, H, line, H);
      triangle(line, H, line-25, H-15, line-25, H +15);
      line += 5;
      if(line > width) {
        line(0, H, line, H);
        H += 10;
        line = 0;
      }
      if(H > height) {
        H = 400;
      }
  }

  //C
  stroke(150, random(255), 150);
  strokeWeight(20);
  noFill();
  arc(130, 200, 200, 300, radians(40), radians(315));
  fill(150, random(255), 150);
  triangle(191, 100, 206, 90, 193, 87);

  //lines around C
  strokeWeight(5);
  noFill();
  stroke(random(255), 150, 150);
  line(182, 128, 231, 97);
  arc(138, 290, 180, 160, radians(20), radians(130));
  arc(130, 200, 140, 250, radians(95), radians(300));

  //L
  for (int c = 50; c < 340; c += 20) { 
    strokeWeight(0);
    stroke(0);
    ellipse(250, c, 20, 20);
    if (x > 350) {
      x = 250;
      x += 20;
      fill(colour);
      ellipse(250, c, 20, 20);
    }
  }

  while (x < 360) {
    x += 20;
    fill(colour);
    ellipse(x, 350, 20, 20);
    ellipse(250, 350, 20, 20);
    ellipse(270, 350, 20, 20);
  }
  //moving circle
  fill(colour2);
  ellipse(xAxis, c, 20, 20);
  c += 3;
  if (c > 350) {
    c = 350;
    xAxis += 2;
    if (xAxis > 370) {
      xAxis = 250;
      c = 50;
    }
  }
  if (xAxis == 370 && colour == #0000FF) {
    colour = #CB151B;
    colour2 = #0000FF;
  } else if (xAxis == 370 && colour == #CB151B) {
    colour = #0000FF;
    colour2 = #CB151B;
  }

  //A
  strokeWeight(1);
  stroke(255);
  fill(50, 164, 183);
  ellipse(width/2-20, height/2+20, 130, 170);
  fill(255);
  arc(width/2-20, height/2+60, 115, 95, radians(0), radians(180));
  
  //Snowman :) I <3 winter
  ellipse(width/2-20, height/2+55, 40, 40);
  ellipse(width/2-20, height/2+30, 30, 30);
  ellipse(width/2-20, height/2+10, 20, 20);
  stroke(0);
  strokeWeight(3);
  point(width/2-15, height/2+8);
  point(width/2-23, height/2+8);
  point(width/2-19, height/2+25);
  point(width/2-19, height/2+33);
  point(width/2-19, height/2+41);
  strokeWeight(0);
  fill(237, 125, 5);
  triangle(width/2-12, height/2+8, width/2-12, height/2+14, width/2, height/2+11);

  //Snow
  for (int loop = 0; loop < 50; loop++) {
    fill(255);
    noStroke();
    ellipse(X[loop], Y[loop], 5, 5);
    Y[loop] += yMovement[loop];

    if (Y[loop] > 340) {
      Y[loop] = 205;
    }
    if (X[loop] > 525) {
      X[loop] = 435;
    }
  }

  //R
  if (time2<300) {
    time2 += 1;
    strokeWeight(20);
    stroke(c3);
    line(640, 180, 640, l);
    l += 2;
    if (l > 360) {
      noFill();
      l = 360;
      arc(690, 240, 100, 90, radians(180), radians(r));
      r += 2;
      if (r > 340) {
        r = 340;
      }
      if (r == 340) {
        stroke(0);
        strokeWeight(25);
        line(640, l, 640, l2);
        l2 -= 2;
        fill(0);
        ellipse(640, 360, 20, 20);
        noFill();
        arc(690, 240, 100, 90, radians(180), radians(r));
        r += 0.2;
      }
      if (l2 < 180) {
        l2 = 180;
      }
    }
  }
   if (time2 >= 300) {
          time2 = 0;
          l = 180;
          r = 180;
        }

  //A
  noFill();
  strokeWeight(2);
  stroke(255);
  ellipse(840, mouseY, 120, 120);
  line(900, mouseY+60, 900, mouseY-90);
  arc(840, mouseY-90, 120, 120, radians(180), radians(360));
  fill(255);
}

void mousePressed() {
  if (mouseButton == LEFT && c3 == #FF0000) {
    c3 = #149019;
  } else if (mouseButton == LEFT && c3 == #149019) {
    c3 = #FF0000;
  }
  if (mouseButton == RIGHT && c3 == #FF0000) {
    c3 = #EFF030;
  } else if (mouseButton == RIGHT && c3 == #EFF030) {
    c3 = #FF0000;
  }
}

void setGradient(int x, int y, float w, float h, color c1, color c2) {
  for (int i = y; i <= y+h; i++) { //keeps looping until i equals y+h; will run if i equals to or less than y
    float inter = map(i, y, y+h, 0, 1); //y and y+h are start and stop points; map matches y and y+h to 0 and 1
    color c = lerpColor(c1, c2, inter); //lerpcolor gradually changes from c1 to c2
    stroke(c); //colour of the line
    line(x, i, x+w, i); //x and w don't change; w is line width
  }
}
