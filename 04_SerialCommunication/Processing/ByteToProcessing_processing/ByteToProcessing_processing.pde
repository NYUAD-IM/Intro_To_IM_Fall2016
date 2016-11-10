import processing.serial.*;
Serial myPort;

float bgCol;

void setup() {
  size(800, 600);
  String portName = "/dev/cu.usbserial-DA01LL2Z";

  myPort = new Serial(this, portName, 9600);
}


void draw() {
  background(bgCol);
   while (myPort.available() > 0) {
    int inByte = myPort.read();    //Read incoming byte as int from 0 to 255
    bgCol = inByte;
    println(inByte);
  }
}

void serialEvent(Serial  myPort) {
  
}