/*///////////////
James Hosken
November 2016

Click to make background green,
Press R or B for Red and Blue respectively
/////////////*/

void setup(){
  size(600,400);
}

void draw(){

  background(0);
  
  if(mousePressed){
    background(0,255,0);
  }
  
  if(keyPressed){
    if(key == 'r'){
      background(255,0,0);
    }
    if(key == 'b'){
      background(0,0,255);
    }
  }
}