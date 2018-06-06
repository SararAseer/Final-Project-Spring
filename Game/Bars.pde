class Bars{
  int health,mana;
  public Bars(){
    health=500;
    mana=500;
  }
  
  void Display(){
    fill(250,0,0);
    rect(totx*2-250,toty*2-150,health,25);
    fill(0,0,150);
    rect(totx*2-250,toty*2-100,mana,25);
    if(health<=0){
      ship.sd(true);
    }
    
  }
  
  
}
