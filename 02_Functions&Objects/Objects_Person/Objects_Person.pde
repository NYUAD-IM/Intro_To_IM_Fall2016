//Declare that we will be using a Person (of Person class) called james:
Person james;
Person felix;
Person craig;

void setup(){
  size(500,500);
  //Assign james specific details:
  james = new Person(100, 50);
  felix = new Person(200, 75);
  craig = new Person (300, 100);
}

void draw(){
  background(0);
  
  //Call james's functions
  james.update();
  felix.update();
  craig.update();
    
  james.render();
  felix.render();
  craig.render();
}