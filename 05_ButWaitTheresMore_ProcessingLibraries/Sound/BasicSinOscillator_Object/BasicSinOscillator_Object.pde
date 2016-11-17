import processing.sound.*;

ArrayList<SoundObject> sounds;

void setup(){
  size(600,400);
  
  sounds = new ArrayList<SoundObject>();
 
}


void draw(){
  background(0);
  
  /*This is a reverse for loop. 
  Done this way because we are deleting objects,
  and that messes with the ArrayList length.
  */
  for(int i = sounds.size()-1; i >= 0; i--){
    SoundObject s = sounds.get(i); 
    if(s.isDead()){
      println("Removing");
      sounds.remove(i);
    }
    else{
      s.updateSound();
      s.display();
    }
  }
}

void mouseClicked(){
  PVector mouseLoc = new PVector(mouseX, mouseY);
  
  //Freq is a random range weighted by mouseX:
  float freq = random(mouseX,mouseX+200);
  float vol = random(0.5, 1);
  
  
  SoundObject s = new SoundObject(this, freq, vol, mouseLoc);
  sounds.add(s);
}