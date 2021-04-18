//da vi ikke kunne få github til at fungere, har vi skrevet vores navne over de dele som vi har skrevet

//Poulsen
kontoFelt kontoFelt = new kontoFelt(50,350,100,50,"0kr", this);

knapToggle knap10kr = new knapToggle(50,50,50,50, "10kr", this);
knapToggle knap100kr = new knapToggle(150,50,50,50, "100kr", this);
knapToggle knap1000kr = new knapToggle(250,50,50,50, "1000kr", this);

knap knapAddMoney = new knap(50,200,50,50, "overfør", this);


//Celia
void setup(){
 size (500, 500); 
}

void draw(){
knap10kr.display();
knap100kr.display();
knap1000kr.display();
kontoFelt.display();
knapAddMoney.display();
}

//Poulsen
void mousePressed(){
knap10kr.registrerKlik(mouseX, mouseY);
knap100kr.registrerKlik(mouseX, mouseY);
knap1000kr.registrerKlik(mouseX, mouseY);
knapAddMoney.registrerKlik(mouseX, mouseY);

if(knapAddMoney.trykket){
  if(knap10kr.trykket){
   kontoFelt.add(10); 
  }
  if(knap100kr.trykket){
   kontoFelt.add(100); 
  }
  if(knap1000kr.trykket){
   kontoFelt.add(1000); 
  }
}
}

void mouseReleased() {
  knapAddMoney.registrerRelease();
}
