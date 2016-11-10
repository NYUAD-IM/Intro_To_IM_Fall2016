//Receive serial data from Arduino

import processing.serial.*;
Serial myPort;

float receivedNumber = 0;

void setup() {
  size(800, 600);
  //Use 'println(Serial.list());' to get your port name:
  String portName = "/dev/tty.usbserial-DN01EZEP";

  myPort = new Serial(this, portName, 9600);
  myPort.bufferUntil('\n');  //Reads until endline character. This works well when we "Serial.println" from Arduino.
}

void draw() {
  //Change Colour:
  background(receivedNumber,0,0);
  
  fill(0,0,255);
  
  //Move object
  float xPos = map(receivedNumber, 0, 1024, 0, width);
  ellipse(xPos, height/2,10,10);
}

//Listen for received messages:
void serialEvent(Serial  myPort) {
  String message = myPort.readString();   //Reads serial data as string  
  message = message.trim();               //Trim whitespaces
  receivedNumber = float(message);        //Converts from string to float
}