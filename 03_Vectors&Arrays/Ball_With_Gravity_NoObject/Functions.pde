void friction(){
  velocity.mult(0.98);
}

void gravity(){
  applyForce(new PVector (0, 0.1));
}

void applyForce(PVector force){
  acceleration.add(force);
}

void ballMovement(){
  velocity.add(acceleration);
  location.add(velocity);
  acceleration.mult(0);
}


void ballDisplay(){
  fill(255);
  ellipse(location.x, location.y, 10,10);
}

void checkBoundaries(){
  if(location.x < 0 || location.x > width){
    velocity.x *= -1;
  }
  if(location.y < 0 || location.y > height){
    velocity.y *= -1;
  }
}