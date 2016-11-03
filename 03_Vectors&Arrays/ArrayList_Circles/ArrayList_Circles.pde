//Circle c;

ArrayList<Circle> circlesArray;

void setup(){
  size(400,400);
  //c = new Circle(100,100);
  
  circlesArray = new ArrayList<Circle>();
  
  for(int i = 0; i < 100; i++){
    Circle c = new Circle(i*10, i*10);
    circlesArray.add(c);
  }
}

void draw(){
  background(0);
  //c.display();
  for(int i = 0; i < circlesArray.size(); i++){
    Circle c = circlesArray.get(i);    //Unnecessary but helpful
    c.display();
  }
  
}