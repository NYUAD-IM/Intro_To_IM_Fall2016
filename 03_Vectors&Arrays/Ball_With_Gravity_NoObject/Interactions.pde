void keyPressed(){
  if(keyCode == LEFT){
    applyForce(new PVector(-5,0));
  }
  if(keyCode == RIGHT){
    applyForce(new PVector(5,0));
  }
  if(keyCode == UP){
    applyForce(new PVector(0,-5));
  }
  if(keyCode == DOWN){
    applyForce(new PVector(0,5));
  }
}