import processing.video.*;

float rad = 20;

Capture cam;

void setup() {
  size(1280, 720,P3D);
  
  cam = new Capture(this, width, height, 30);
  cam.start();
  
  noStroke();
}

void draw() {
  
  if (cam.available() == true) {
    cam.read();
  }
  
  cam.loadPixels();
  for(int i = 0; i < 1000; i++){
    int x = int(random(width));
    int y = int(random(height));
    color pix = cam.get(x, y);
    fill(pix, 128);
    ellipse(x,y, rad,rad);
  }
  
  
  radiusSetter();
  
}

void radiusSetter(){
  fill(100);
  rect(0,0,20,height);
  if(mouseX < 20 && mouseX > 0){
    rad = map(mouseY, 0, height, 0, 25);
  }
  float barY =  map(rad, 0, 25, 0, height);
  fill(255);
  rect(0, barY-2, 25, 4);
  
  text("Move the bar to change the radius of the circles", 25, height-20); 
}

void mouseClicked(){
  //Sample the clicked colour
  rad = cam.get(mouseX, mouseY);
}