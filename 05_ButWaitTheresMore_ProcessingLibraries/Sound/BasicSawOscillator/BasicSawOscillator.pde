import processing.sound.*;

SawOsc myWave;

void setup(){
  size(600,400);
  float volume = 0.5;
  myWave = new SawOsc(this);
  myWave.play();
  myWave.amp(volume);
}


void draw(){
  
  float frequency = map(mouseY, 0, height, 150, 1150);
  
  float volume = map(mouseX, 0, width, 0, 1);
  myWave.freq(frequency);
  myWave.amp(volume);
}