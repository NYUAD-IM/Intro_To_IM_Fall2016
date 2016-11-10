int myResistance;

void setup() {
  
  pinMode(A0, INPUT);
  
  Serial.begin(9600);   //Start serial port

  myResistance = 0;
}

void loop() {
  
  int currentRes = analogRead(A0);  //Must be int (and < 255): Serial.write cannot send floats.
  if(currentRes != myResistance){
    //Change!
    myResistance = currentRes;
    
    Serial.write(myResistance/4);  //Serial.write sends as a byte, not a string. 
  }
  delay(10);  //Short delay to not overload Serial communication
}
