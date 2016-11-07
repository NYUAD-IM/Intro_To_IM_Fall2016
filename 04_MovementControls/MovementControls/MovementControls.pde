
PVector location;
PVector velocity;

//Set up bools for each direction
//You'll need 4 for EACH PLAYER! if you use this method.
boolean isGoingDOWN;
boolean isGoingUP;
boolean isGoingLEFT;
boolean isGoingRIGHT;

void setup(){
  size(600,600);
  location = new PVector(width/2,height/2);
  velocity = new PVector(0,0);
  
  //No direction in the beginning
  isGoingDOWN  = false;
  isGoingUP    = false;
  isGoingLEFT  = false;
  isGoingRIGHT = false;
}


void draw(){
  background(0);
  
  //Check if we're going in any direction:
  stateMachine();

  updateMovement();
  
  fill(255,0,0);
  ellipse(location.x, location.y, 5,5);
  
}


void stateMachine(){
  
  //IF no direction, velocity = 0:
  velocity.mult(0);
  
  if(isGoingRIGHT){
    velocity.x = 1;
  }
  if(isGoingLEFT){
    velocity.x = -1;
  }
  if(isGoingUP){
    velocity.y = -1;
  }
  if(isGoingDOWN){
    velocity.y = 1;
  }
}

void updateMovement(){
  location.add(velocity);
}

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