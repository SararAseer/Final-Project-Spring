class Bars{
  float b;
  float health,mana;
  public Bars(){
    health=0;
    mana=0;
  }
  void NoahsArc(){
    pushMatrix();
    noFill();
    strokeWeight(10);
    stroke(255,0,0,100);
    translate(totx*2,toty*2);
    rotate(b);
    arc(0,25,120,120,0,3.14-(health*.314));
    stroke(0,0,255,100);
    arc(0,25,100,100,0,3.14-(mana*.314));
    popMatrix();
  }
  
  void Display(){
    b+=.02;
    NoahsArc();
    if(health>=10){
      ship.sd(true);
    }
    /*/
    fill(250,0,0);
    rect(totx*2-250,toty*2-150,health,25);
    fill(0,0,150);
    rect(totx*2-250,toty*2-100,mana,25);
    if(health<=0){
      ship.sd(true);
    }
    /*/
  }
  
  
}
