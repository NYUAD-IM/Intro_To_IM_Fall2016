
PVector location;
PVector velocity;
PVector acceleration;

boolean isGoingDOWN;
boolean isGoingUP;
boolean isGoingLEFT;
boolean isGoingRIGHT;

void setup(){
  size(600,600);
  location = new PVector(width/2,height/2);
  velocity = new PVector(0,0);
  acceleration = new PVector(0,0);
  
  isGoingDOWN  = false;
  isGoingUP    = false;
  isGoingLEFT  = false;
  isGoingRIGHT = false;
}


void draw(){
  background(0);
  
  stateMachine();
  updateMovement();
  
  fill(255,0,0);
  ellipse(location.x, location.y, 5,5);
  
}

void updateMovement(){
  
  //#friction
  velocity.mult(0.97);
  
  velocity.add(acceleration);
  location.add(velocity);
  
  acceleration.mult(0);
  
}

void stateMachine(){
  
  if(isGoingRIGHT){
    acceleration.x = 0.1;
  }
  if(isGoingLEFT){
    acceleration.x = -0.1;
  }
  if(isGoingUP){
    acceleration.y = -0.1;
  }
  if(isGoingDOWN){
    acceleration.y = 0.1;
  }
}