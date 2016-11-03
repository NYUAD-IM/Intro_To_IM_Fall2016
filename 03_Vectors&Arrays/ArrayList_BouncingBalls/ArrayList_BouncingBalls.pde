/*//////////////
James Hosken
November 2016

Create many bouncing balls with different starting positions
//////////////*/

//Declare that an ArrayList of type <Ball> exists:
ArrayList<Ball> ballArray;

void setup(){
  size(1200,600);
  
  //Initialise the ArrayList as an empty arraylist of type <Ball>
  ballArray = new ArrayList<Ball>();
   
   //Create 50 new Balls and add each to the arraylist:
   for(int i = 0; i < 50; i++){
     
     //Create a new ball with random starting parameters (x, y, vx, vy):
     Ball b = new Ball(random(0,200), random(0, height), 4, 0);
     
     //Add the new ball to the arraylist:
     ballArray.add(b);
   }
  
}

void draw(){
  background(0);
  
  //Loop through each object in the arraylist, ad perform the physics functions of that object.
  for(int i = 0; i < ballArray.size(); i++){
    
    //Create a reference to the current object:
    Ball b = ballArray.get(i);
    
    //perform the physics functions of the current object
    b.gravity();
    b.wind();
    b.friction();
    
    //perform the movement and display functions of the current object
    b.checkBoundaries();
    b.move(); 
    b.display();
  }
  
}