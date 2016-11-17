  
import processing.net.*;

Server myServer;
int val = 0;

void setup() {
  size(600, 400);
  // Starts a myServer on port 5204
  myServer = new Server(this, 5204); 
}

void draw() {
  
  background(0);
  
  String mLoc = str(mouseX) + "," + str(mouseY) + "\n";
  
  myServer.write(mLoc);
}