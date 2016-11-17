import processing.sound.*;

SinOsc wave;

float volume = 1;


void setup(){
  size(600,400);
  
  wave = new SinOsc(this);
  wave.play();
  wave.freq(500);
  wave.amp(volume);
   
}


void draw(){
  background(volume*255);
  if(volume > 0){
    volume *= 0.98;
  }
  
  wave.amp(volume);
}

void mouseClicked(){
  wave.freq(random(150,1000));
  volume = 1;
}