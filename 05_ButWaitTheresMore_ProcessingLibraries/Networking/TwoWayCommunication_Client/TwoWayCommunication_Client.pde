//James Hosken Nov 2016
//Receive and send to Server

import processing.net.*;

Client myClient;
float x;
float y;

void setup(){
  size(600,400);

  String ip = "SERVER IP";
  int port = 5204;
  myClient = new Client(this, ip, port);
  
}

void draw(){
  background(0);
  String mLoc = str(mouseX) + "," + str(mouseY) + '\n';
  myClient.write(mLoc);
  
  //Read anything incoming from Server:
  if(myClient.available() > 0){
    String dataIn = myClient.readStringUntil('\n');
    dataIn.trim();
    println(dataIn); //For debugging purposes
    String[] splitData = dataIn.split(",");
    x = float(splitData[0]);
    y = float(splitData[1]);
    println(x + ", " + y);
  }
  
  fill(255,0,0);
  ellipse(x,y,10,10);

}