/*//////////
James Hosken
November 2016

Recreate pattern of 
Felix's Broken Laptop 
using functions
///////////*/

void setup(){
  size(1280,720);
  background(0);
  
  //Randomly distribute lines with loop
  for(int i = 0; i < width; i++){
    if(random(0,1) < 0.1){
      vertLine(i);                
    }
  }
  
  horzLine(height/4, 2);          
  horzLine(height/3, 1);          
}

//Functions are below

void horzLine(int yPos, float thickness){
  /*
  This function allows you to quickly and reusably 
  draw a horizontal line at yPos, with a variable thickness
  */
  
  stroke(225);
  strokeWeight(thickness);
  line(0, yPos, width, yPos);
}

void vertLine(int xPos){
  //This function creates a vertical line at xPos, split into 3 sections:
  
  //Section 1
  stroke(225);
  strokeWeight(1);
  line(xPos, 0, xPos, height/4);
  
  //Section 2
  stroke(255);
  strokeWeight(2);
  line(xPos, height/4, xPos, height/3);
  
  //Section 3
  stroke(220);
  strokeWeight(1);
  line(xPos, height/4, xPos, height);  
}