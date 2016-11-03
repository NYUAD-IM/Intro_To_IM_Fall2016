//Create the Person template:
class Person{
  
  //What data/information/attributes does each Person have?
  int personHeight;
  int personXPos;
  
  //The following is the 'setup' of the class. This will run when you call "new Person();"
  Person(int _x, int _h){
    personHeight = _h;
    personXPos = _x;
  }
  
  //Below the setup you put any functions that each Person can use:
  
  void update(){
    personXPos++;
 
    if(personXPos > width){
      personXPos = 0;
    }
  }
  
  void render(){
    fill(255);
    rect(personXPos, 0, 20, personHeight);
  }
}