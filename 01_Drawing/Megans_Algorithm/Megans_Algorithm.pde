float redVal =   random(0,255);
float greenVal = random(0,255);
float blueVal =  random(0,255);


void setup(){
  
  size(600,400);
  
}


void draw(){
  
  background(redVal, greenVal, blueVal);
  if(redVal > 255){
    redVal =   random(0,255);
  }else{
    redVal ++;
  }
  
  if(greenVal > 255){
    greenVal =   random(0,255);
  }else{
    greenVal ++;
  }
  
  
  if(greenVal > 255){
    greenVal =   random(0,255);
  }else{
    greenVal ++;
  }
  
}