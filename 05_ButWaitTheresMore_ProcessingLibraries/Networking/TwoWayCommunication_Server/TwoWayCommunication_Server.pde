  
import processing.net.*;

Server myServer;

void setup() {
  size(600, 400);
  
  myServer = new Server(this, 5204); // Starts a Server on port 5204
}

void draw() {
  
  background(0);
  
  String mLoc = str(mouseX) + "," + str(mouseY) + "\n";   // Create string that looks like: "123,456\n"
  
  myServer.write(mLoc);  //Broadcasts to all clients
  
  readClients();
}

void readClients(){
  
  Client thisClient = myServer.available();   // Get the next available client
  
  if (thisClient !=null) {                    //i.e. if there's a client connected
    String inData = thisClient.readStringUntil('\n');  //Read incoming string, e.g. "123,456\n"
    if (inData != null) {                     //i.e. if there's a message with stuff in it
      
      //Parse Data:
      inData.trim();                          //Get rid of spaces, endlines, tabs, etc: "123,456"
      String[] splitData = inData.split(","); //Split string into: ["123","456"]
      float x = float(splitData[0]);          //123
      float y = float(splitData[1]);          //456
      fill(0,255,0);
      ellipse(x,y,10,10);
    } 
  } 
}