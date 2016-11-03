void keyPressed(){
  if(keyCode == LEFT){
    ball.applyForce(new PVector(-5,0));
  }
  if(keyCode == RIGHT){
    ball.applyForce(new PVector(5,0));
  }
  if(keyCode == UP){
    ball.applyForce(new PVector(0,-5));
  }
  if(keyCode == DOWN){
    ball.applyForce(new PVector(0,5));
  }
}