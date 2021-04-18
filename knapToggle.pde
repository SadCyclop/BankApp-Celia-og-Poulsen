//Celia
class knapToggle extends knap{
 
  knapToggle(float x,float y, float w, float h, String tekst, PApplet p){
    super(x,y,w,h,tekst, p);
  }
  
  void display(){
  super.display();  
  }
  
//Poulsen
  void registrerKlik(float inX, float inY){
     if(inY > y && inX > x && inY < y + h && inX < x + w && mousePressed){
     trykket = !trykket;
     }
     
  }
  
  void registrerRelease(){
  }
  
  void trykket(){

  }
}
