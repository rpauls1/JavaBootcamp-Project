class Silhouette { //<>//
  //initiating variables
  int ssX, ssY;
  int offsetX;
  int ssWidth, ssHeight;
  int noCol, noRow;
  int wdwSpace;
  color lightHue;

  Silhouette() {
    //declaring variables
    ssX=0; 
    ssY=20;
    
    ssWidth=200;
    ssHeight=600;
    
    wdwSpace=80;
    
    noCol=ssWidth/wdwSpace; //no. of columns calculated by dividing skyscraper width by window space
    noRow=ssHeight/wdwSpace; //no. of rows calculated by dividing skyscraper height by window space
    
    lightHue=128; //setting medium for lightHue for when adjusting the hue of window lights.
  }
  
  //creating draw method that will generate the skyscrapers
  void draw() {
    //creating skyscraper outline using variables declared in constructor method
    fill(#000000);
    stroke(#ffffff);
    lightHue = constrain(lightHue,0,255);//constrain() function helps to prevent the RGB value from exceeding max
    rect(ssX, ssY, ssWidth, ssHeight);
    //using 2D array to generate windows based on the amount of columns and rows calculated with formula in constructor
    for (int i=0; i<noCol; i++) {
      for (int j=0; j<noRow; j++) {
        //fill implemented using alpha parameter, taking lightHue to alter RGB value for hue
        fill(234,214,26,lightHue);
        //windows generated using formula below, taking variables declared in constructor and using i/j to point to next location
        rect(ssX+40+i*wdwSpace, ssY+40+j*wdwSpace, wdwSpace/2, wdwSpace/2); 
      }
    }
  }
}
