  
import processing.video.*;

color chromeKey = color(0,0,0);
float threshold = 20;
PImage space;
Capture cam;

void setup() {
  size(1280, 720,P3D);
  
  space = loadImage("space.jpg");
  
  cam = new Capture(this, width, height, 30);
  cam.start();
  
  textSize(20);
  noStroke();
}

void draw() {
  
  if (cam.available() == true) {
    cam.read();
  }
  //image(cam, 0, 0);
  
  cam.loadPixels();
  
  //Background goes here!
  image(space, 0, 0, width, height);
  //cam.filter(BLUR, 2);
 
  for(int x = 0; x < width; x++){
    for(int y = 0; y < height; y++){
      color fgColor = cam.get(x,y);
      float r1 = red(fgColor);
      float g1 = green(fgColor);
      float b1 = blue(fgColor);
      float r2 = red(chromeKey);
      float g2 = green(chromeKey);
      float b2 = blue(chromeKey);
      float diff = dist(r1,g1,b1,r2,g2,b2);
      if(diff > threshold){
        set(x,y, fgColor);
      }
      else{
        //Do Nothing
        //set(x,y, color(255,0,0));
      }
      
    }
  }
  thresholdSetter();
}

void thresholdSetter(){
  fill(100);
  rect(0,0,20,height);
  if(mouseX < 20){
    threshold = map(mouseY, 0, height, 0, 100);
  }
  float barY =  map(threshold, 0, 100, 0, height);
  fill(255);
  rect(0, barY-2, 25, 4);
  
  text("Click to select a colour. Move the bar to change the detection threshold", 25, height-20); 

}

void mouseClicked(){
  //Sample the clicked colour
  cam.loadPixels();
  chromeKey = cam.get(mouseX, mouseY);
  
}