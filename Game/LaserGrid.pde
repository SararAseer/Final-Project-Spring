class LaserGrid{
  int x1,y1;
  int next;
  int Type;
  public LaserGrid(int z){
    x1=y1=0;
    Type=z;
  }

  void Display(){
   if(next<1000){     
     next++;
     pushMatrix();
     strokeWeight(2);
     stroke(255,0,0,100);
     if(Type==1){
       line(-100, next, 1000, next+40);
     }
     else{
       line(next, -100, next-40, 1000);       
     }
     popMatrix();
    }
  }

}
