void keyPressed(){
  
  /*
  Pressing the keys merely changes the bool
  for that direction to 'true'. This means no
  matter how the operating system handles
  "keypress", we'll get a predictable movement.
  
  The only way to stop the bool from being true
  is to release the key (below)
  */
  
  
  //ARROW KEYS
  if(keyCode==RIGHT){
    isGoingRIGHT = true;
  }
  if(keyCode==LEFT){
    isGoingLEFT = true;
  }
  if(keyCode==UP){
    isGoingUP = true;
  }
  if(keyCode==DOWN){
    isGoingDOWN = true;
  }
  //WASD
  if(key=='d'){
    isGoingRIGHT = true;
  }
  if(key=='a'){
    isGoingLEFT = true;
  }
  if(key=='w'){
    isGoingUP = true;
  }
  if(key=='s'){
    isGoingDOWN = true;
  }
  
}


void keyReleased(){
  
  //ARROW KEYS
  if(keyCode==RIGHT){
    isGoingRIGHT = false;
  }
  if(keyCode==LEFT){
    isGoingLEFT = false;
  }
  if(keyCode==UP){
    isGoingUP = false;
  }
  if(keyCode==DOWN){
    isGoingDOWN = false;
  }
  //WASD
  if(key=='d'){
    isGoingRIGHT = false;
  }
  if(key=='a'){
    isGoingLEFT = false;
  }
  if(key=='w'){
    isGoingUP = false;
  }
  if(key=='s'){
    isGoingDOWN = false;
  }
}