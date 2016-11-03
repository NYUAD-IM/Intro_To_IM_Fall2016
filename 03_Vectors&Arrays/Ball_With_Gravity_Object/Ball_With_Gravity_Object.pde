Ball ball;

void setup(){
  size(600,600);
  ball = new Ball(50,50,0,0);
  background(0);
}

void draw(){
  background(0);

  ball.gravity();
  ball.friction();
  
  ball.movement();
  ball.checkBoundaries();
  ball.display();
  
}