//Toggle LED based on string sent from Processing

String message;
bool isOn = false;

void setup() {
  Serial.begin(9600);
  pinMode(13,OUTPUT);
}

void loop() {

  while(Serial.available()){
    message = Serial.readString();
    message.trim(); //Super Important! Chop off any trailing spaces.
    
    if(message == "on"){
      
      //Simple logic to toggle LED on/off
      if(isOn){
        digitalWrite(13,LOW);
        isOn = false;
      }else{
        digitalWrite(13,HIGH);
        isOn = true;
      }
      
    }
  }
}

