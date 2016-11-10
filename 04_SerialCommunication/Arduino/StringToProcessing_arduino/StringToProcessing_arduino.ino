//Send analog potentiometer data to processing

float resistanceVal = 0;

void setup() {
  Serial.begin(9600);
}

void loop() {

  //Read the resistance of the Potemtiometer
  float currentResVal = analogRead(A0);
  
  //Check if the resistance value has changed:
  if(currentResVal != resistanceVal){
    
    resistanceVal = currentResVal;
    
    //Send to Processing!
    Serial.println(resistanceVal);
    
  }
}
