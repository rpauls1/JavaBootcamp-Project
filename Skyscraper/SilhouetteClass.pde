class Silhouette { //<>//
  int ssX, ssY;
  int ssWidth, ssHeight;
  int noCol, noRow;
  int wdwSpace;
  color lightHue;

  Silhouette() {
    ssX=0;
    ssY=20;
    
    ssWidth=200;
    ssHeight=600;
    
    wdwSpace=80;
    
    noCol=ssWidth/wdwSpace; //no. of columns calculated by dividing skyscraper width  by window space
    noRow=ssHeight/wdwSpace; //no. of columns calculated by dividing skyscraper height by window space
    
    lightHue=128;
  }

  void draw() {
    fill(#000000);
    stroke(#ffffff);
    lightHue = constrain(lightHue,0,255);
    rect(ssX, ssY, ssWidth, ssHeight);
    for (int i=0; i<noCol; i++) {
      for (int j=0; j<noRow; j++) {
        fill(234,214,26,lightHue);
        rect(ssX+40+i*wdwSpace, ssY+40+j*wdwSpace, wdwSpace/2, wdwSpace/2);
      }
    }
  }
}
