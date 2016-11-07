
float rotation = 0;

void setup(){
  size(600,600);
  textSize(20);
}



void draw(){
  background(0);
  
  
  
  /*
  Push/popMatrix ensures that the 
  translate/rotate don't affect the rest
  of your code
  */
  
  //1!
  pushMatrix();
    //Change pivot point
    translate(width/4,height/2);
    rotate(rotation);
    textAlign(RIGHT);
    text("1: So trippy!", 0,0);
    rect(10,10, 10, 10);
    
    //Ellipse is pivot point!
    ellipse(0,0,5,5);
  popMatrix();
  
  //2!
  pushMatrix();
    //Change pivot point to mid screen
    translate(width/2,height/2);
    rotate(rotation);
    textAlign(CENTER);
    text("2: Really cool!", 0,0);
    
    //Ellipse is pivot point!
    ellipse(0,0,5,5);
  popMatrix();
  
  //3!
  pushMatrix();
    //Change pivot point
    translate(3*width/4,height/2);
    rotate(rotation);
    textAlign(LEFT);
    text("Rotation: " + rotation, 0,0);
    
    //Ellipse is pivot point!
    ellipse(0,0,5,5);
  popMatrix();
  
  //Increment rotation value
  rotation += 0.01;
}