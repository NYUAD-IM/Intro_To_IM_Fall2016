
int ballXPos;
int speed;


void setup(){
  size(600,400);
  ballXPos = 40;
  speed = 10;
}

void draw(){
  
  background(255);
  
  
  
  if( ballXPos > width){
    ballXPos = width;
    speed *= -1;
  }
  
  if( ballXPos < 0){
    ballXPos = 0;
    speed *= -1;
  }
  
  if(mousePressed){
    fill(0,0,255);
  }
  else{
    fill(255,0,0);
  }
  
  noStroke();
  ellipse(ballXPos, 200, 20,20);
  
  ballXPos = ballXPos + speed;
  
  
}