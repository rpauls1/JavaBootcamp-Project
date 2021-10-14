Silhouette[] skyscrapers;

void setup() {
  size(650, 700);
  skyscrapers=new Silhouette[3];
  for (int s=0; s<skyscrapers.length; s++) {
    skyscrapers[s]=new Silhouette();
  }

  //x,y,w,h
}

void draw() {
  background(#000000);

  noStroke();
  fill(#000000);
  rect(0, 629, 999, 70); //class 

  noStroke();
  fill(#868585);
  rect(0, 630, 1000, 20);

  noStroke();
  fill(#868585);
  rect(0, 680, 1000, 20);



  //creating skyscrapers
  for (int s=0; s<skyscrapers.length; s++) {
    skyscrapers[s].ssX=220*s;
    skyscrapers[s].draw();
  }
}

void keyPressed() {
  if (key=='L') {
    for (int s=0; s<skyscrapers.length; s++) {
      skyscrapers[s].lightHue=skyscrapers[s].lightHue+10;
    }
  } else if (key=='l') {
    for (int s=0; s<skyscrapers.length; s++) {
      skyscrapers[s].lightHue=skyscrapers[s].lightHue-10;
    }
  }
}
