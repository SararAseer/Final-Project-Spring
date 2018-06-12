import java.util.Random;
class Enemies{
  float totx1,toty1;
  String s;
  Vector vel= new Vector(0,0);
  float heading=0;
  PImage hip;
  boolean dead;
  int b,c;
  void sd(boolean a){
     dead=a; 
  }
  
   void Display(){
     if(!dead){
       if(s==null){
         s="eship.png";
       }
      pushMatrix();    
      hip=loadImage(s);
      translate(totx1*2,toty1*2);
      rotate(heading);
      image(hip,25,-25,50,50); 
      popMatrix();
     }
    }
     public Enemies(int a){
       Random ran= new Random();
      if(ran.nextBoolean()){
        s="eship.png";
      }
      else{
        s="eship2.png";
      }
     if(a==0){
      totx1=110;
      toty1=100;
      
     }
     else if(a==1){
       
       totx1=50;
      toty1=100;
     }
     else if(a==2){
      
       totx1=50;
      toty1=50;
     }
     else if(a==3){
      
       totx1=200;
      toty1=200;
     }
     
     
    
    }
    
    void update(){
        pushMatrix();
        
        popMatrix();
    }
    
    void move(){
        Random rand = new Random();
        int a=rand.nextInt(100);
        boolean c=rand.nextBoolean();
       
        if(heading+.05<atan2((toty1-toty)*2,(totx1-totx)*2)){
        heading+=.05;
        }
        else{
        heading-=.05;
        }
         if(totx1<totx){
           totx1+=.25;
         }
         else{
           totx1-=.25;
         }
         if((toty1>toty)){
           toty1-=.25;
         }
         else{
           toty1+=.25;
         }
          
        
    }
  
  
}
