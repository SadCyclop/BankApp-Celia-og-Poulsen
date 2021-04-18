//Celia
class knap extends Komponent{
 boolean trykket = false;
 String text;
 

  knap(float x,float y, float w, float h, String tekst, PApplet p){
    super(x,y,w,h, tekst, p);
  }
  
//Poulsen  
  void display(){
    if(trykket)fill(255,0,0);else fill(255,255,255);
    super.display();
  }
  
   void registrerKlik(float inX, float inY){    
     if(inY > y && inX > x && inY < y + h && inX < x + w){
     trykket = true;
     }
    }
  
  void registrerRelease(){
    trykket = false;
  }
  
  boolean isPressed(){
  return trykket;
  }
}
