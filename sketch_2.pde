int a = 1;

void setup () {
  size (700, 500, P3D);
  background (#E0EDFF);
  strokeWeight(2);
}


void draw() {
  float randomvar = random(width);
  float randR = random(255);
  float randG = random(255);
  float randB = random(255);


  if (a == 1) {
    for (int i=50; i<=250; i+=50) {
      for (int j=50; j<=250; j+=50) {
        fill(255);
        stroke(0);
        ellipse(200+i, 100+j, 30, 30);
      }
    }
  }


  if (a == 2) {
    for (int b=0; b<=width; b+=10) {
      ellipse(width/2 + b, height/2, 30, 30);
      ellipse(width/2, height/2 + b, 30, 30);
      ellipse(width/2, height/2 - b, 30, 30);
      ellipse(width/2 - b, height/2, 30, 30);
      ellipse(width/2 + b, height/2 + b, 30, 30);
      ellipse(width/2 - b, height/2 - b, 30, 30);
      ellipse(width/2 + b, height/2 - b, 30, 30);
      ellipse(width/2 - b, height/2 + b, 30, 30);
    }
  }

  if (a == 3) {
    for (int c=0; c<=1; c+=0.1) {
        translate(350, 250);
        fill(randR, randB, randG);
        stroke(0);
        rotateX(0.5);
        rotateY(0.5);
        rotateZ(0.5);
        box(200+c, 100, 30);
      }
  }

    if (a == 5) {
      translate(350, 250);
      fill(randR, randG, randB);
      rotateX(0.5);
      rotateY(0.5);
      rotateZ(0.5);
      box(randomvar);
    }
  }


void mousePressed() {
    background (#E0EDFF);
    a++;
    if (a > 5) {
      a = 1;
    }
}
