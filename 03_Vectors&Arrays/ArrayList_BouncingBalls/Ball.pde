class Ball{
  
  PVector location;
  PVector velocity;
  PVector acceleration;
  
  Ball(float x, float y, float vx, float vy){
    
    location = new PVector(x, y);
    velocity = new PVector(vx,vy);
    acceleration = new PVector(0,0);
    
  }
  
  void gravity(){
    applyForce(new PVector(0,0.2));
  }
  
  void display(){
    fill(255,0,0);
    ellipse(location.x, location.y, 10,10);
  }
  
  void applyForce(PVector force){
    //Applying a constant force, like gravity, simply involves adding it to acceleration.
    //We can make this a function for clarity's sake.
    acceleration.add(force);
  }
  
  void wind(){
    //Whenever wind happens, apply a small force to the ball sideways
    applyForce(new PVector(0.02,0));
  }
  
  void friction(){
    //friction reduces the ball's speed a small amount
    velocity.mult(0.997);
    
  }
  
  void move(){
    //Velocity increases/decreases based on acceleration: 
    velocity.add(acceleration);
    
    //Location changes based on velocity:
    location.add(velocity);
    
    //Reset acceleration (in this system it is not cumulative):
    acceleration.mult(0);
  } 
  
  void checkBoundaries(){
    if(location.x < 0){
      //velocity.x *= -1;
      location.x = width;
    }
    if(location.x > width){
      //velocity.x *= -1;
      location.x = 0;
    }
    if(location.y < 0){
      velocity.y *= -1;
      location.y = 0;
    }
    if(location.y > height){
      velocity.y *= -1;
      location.y = height;
    }
  }
  
}