import processing.net.*;

Client myClient;
String dataIn;

float x;
float y;

void setup(){
  size(600,400);
  x = 0;
  y = 0;
 
  String ip = "SERVER IP";
  int port = 5204;
  myClient = new Client(this, ip, port);
  
}

void draw(){
  background(0);
  if(myClient.available() > 0){
    dataIn = myClient.readStringUntil('\n');
    dataIn.trim();
    println(dataIn);
    String[] splitData = dataIn.split(",");
    x = float(splitData[0]);
    y = float(splitData[1]);
    println(x + ", " + y);
  }
  fill(255,0,0);
  ellipse(x,y,10,10);
}