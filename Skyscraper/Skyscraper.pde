Silhouette[] skyscrapers; //declaring array to generate skyscrapers
import processing.video.*;
Movie rain; //initating rain using Movie module

void setup() {
  size(650, 700);
  rain=new Movie(this, "rain.mp4");
  rain.loop();
  skyscrapers=new Silhouette[3];
  for (int s=0; s<skyscrapers.length; s++) {
    skyscrapers[s]=new Silhouette();
  }

  //x,y,w,h
}
//
void movieEvent(Movie rain){
  rain.read();
}

void draw() {
  background(#000000);
  image(rain,0,0);

  noStroke();
  fill(#000000);
  rect(0, 629, 999, 70); //class 

  noStroke();
  fill(#868585);
  rect(0, 630, 1000, 20);

  noStroke();
  fill(#868585);
  rect(0, 680, 1000, 20);



  //generating skyscrapers in array
  for (int s=0; s<skyscrapers.length; s++) {
    skyscrapers[s].ssX=220*s;
    skyscrapers[s].draw();
  }
}
//using keyPressed method to alter hue based on key input
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
