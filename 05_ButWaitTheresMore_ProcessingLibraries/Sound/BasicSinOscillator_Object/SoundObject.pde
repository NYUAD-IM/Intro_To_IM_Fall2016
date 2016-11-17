/* SinOsc needs a reference 
to the main sketch: 
the "PApplet app" variable let's 
SoundObject class access it*/

class SoundObject{ 
  
  SinOsc wave;
  float volume;
  float frequency;
  float fadeSpeed;
  PVector location;
  
  PApplet app;
  
  //First param is "PApplet", which is a reference to the sketch
  SoundObject(PApplet _app, float _f, float _v, PVector _loc){
    
    app = _app;
    frequency = _f;
    volume = _v;
    location = _loc;
    
    fadeSpeed = random(0.01, 0.001);
    
    wave = new SinOsc(app);
    wave.play();
    wave.freq(frequency);
    wave.amp(volume);
  }
  
  void updateSound(){
    volume -= fadeSpeed;
    wave.amp(volume);
    
  }
  

  
  boolean isDead(){
    if(volume > 0){
      return false;
    }
    else{
      wave.stop();
      return true;
    }
  }
  
  void display(){
    app.fill(255,0,0);
    float rad = volume*50;
    app.ellipse(location.x, location.y, rad, rad);
  }
}