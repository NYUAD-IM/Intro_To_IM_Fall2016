import processing.sound.*;

SinOsc wave1;
SinOsc wave2;

float volume = 0.1;

void setup(){
  size(600,400);
  
  //Wave 1:
  wave1 = new SinOsc(this);
  wave1.play();
  wave1.amp(volume);
  
  //Wave 2:
  
  wave2 = new SinOsc(this);
  wave2.play();
  wave2.amp(volume);
}


void draw(){
  
  float frequency1 = map(mouseY, 0, height, 150, 1150);
  float frequency2 = map(mouseX, 0, width, 150, 1150);
  
  wave1.freq(frequency1);
  wave2.freq(frequency2);
}