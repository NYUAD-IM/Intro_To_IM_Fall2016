class Ball{
  
  PVector location;
  PVector velocity;
  PVector acceleration;  
  
  Ball(float _x, float _y, float _vx, float _vy){
    location = new PVector(_x, _y);
    velocity = new PVector(_vx,_vy);
    acceleration = new PVector(0,0);
  }
  
  void movement(){
    location.add(velocity);
    velocity.add(acceleration);
    acceleration.mult(0); 
  }

  void applyForce(PVector force){
    acceleration.add(force);
  }
  
  void friction(){
    velocity.mult(0.98);
  }
  
  void gravity(){
    applyForce(new PVector (0, 0.1));
  }  
  
  void display(){
    fill(255,0,0);
    noStroke();
    ellipse(location.x, location.y, 10,10);
  }
  
  void checkBoundaries(){
    //Changed from previous example to reset pos on edge collision
    if(location.x < 0){
      location.x = 0;
      velocity.x *= -1;
    }
    else if(location.x > width){
      location.x = width;
      velocity.x *= -1;
    }
    if(location.y < 0){
      location.y = 0;
      velocity.y *= -1;
    }
    else if(location.y > height){
      location.y = height;
      velocity.y *= -1;
    }
  }
  
}