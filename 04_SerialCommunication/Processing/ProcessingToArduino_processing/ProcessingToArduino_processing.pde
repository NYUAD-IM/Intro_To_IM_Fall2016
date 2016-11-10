import processing.serial.*;
Serial myPort;

String m = "Click the mouse to send data to Arduino";

void setup() {
  size(800, 600);

  String portName = "/dev/tty.usbserial-DN01EZEP";

  myPort = new Serial(this, portName, 9600);
  myPort.bufferUntil('\n');
}


void draw(){
  background(0);
  textAlign(CENTER);
  fill(255);
  text(m, width/2, height/2);
}

void mousePressed(){
  myPort.write("on");
}