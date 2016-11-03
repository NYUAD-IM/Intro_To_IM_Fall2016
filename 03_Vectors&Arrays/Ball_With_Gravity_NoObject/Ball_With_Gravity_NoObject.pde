PVector location;
PVector velocity;
PVector acceleration;

void setup(){
  size(600,600);
  location = new PVector(50, 50);
  velocity = new PVector(0,0);
  acceleration = new PVector(0,0);
}

void draw(){
  background(0);
  gravity();
  friction();
  
  ballMovement();
  checkBoundaries();
  ballDisplay();
}