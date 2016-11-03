class Circle{
  
  PVector loc;
  
  Circle(float x, float y){
    loc = new PVector(x,y);
  }
  
  void display(){
    noStroke();
    fill(255,0,0);
    ellipse(loc.x, loc.y, 10,10);
  }
  
}