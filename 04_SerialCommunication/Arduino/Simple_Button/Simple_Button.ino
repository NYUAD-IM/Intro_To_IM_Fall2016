//A counting button that prints 
//to the serial monitor when pressed

boolean isDown = false;
int counter = 0;

void setup() {
  pinMode(2, INPUT_PULLUP);
  Serial.begin(9600);
}

void loop() {
  if(digitalRead(2) == LOW){
    if(!isDown){
      Serial.println(counter);
      isDown = true;
      counter++;
    }
  }else{
    isDown = false;
  }
  delay(10);          //This delay stops the button registering 2 presses at once
}
