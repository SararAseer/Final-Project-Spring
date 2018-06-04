Ship ship;
Enemies coo;
ArrayList<Enemies> fighters;
ArrayList<Weapon> bullets;
ArrayList<Weapon> ebullets;
boolean space;
int counter;



class Ship{
  Vector pos= new Vector(width/2, height/2);
  Vector vel= new Vector(0,0);
  float heading=0;
  PImage ship;
  boolean dead;
  
  
  float h(){
    return heading;
  }
  void sd(boolean a){
     dead=a; 
  }
   void Display(){
     if(!dead){
     pushMatrix();
      ship=loadImage("ship.png");
      translate(totx*2,toty*2);
      rotate(heading);
      image(ship,-25,-25,50,50); 
      popMatrix();
    //  image(map,0,0,750,750); 
     }
    }
    
    void update(){
        pushMatrix();
        
        popMatrix();
    }
    
    void move(char x){
      if(x=='z'){
         heading-=.05; 
      }
      else if(x=='c'){
         heading+=.05 ;
      }
      else if(x=='w'){
          toty--;
      }
      else if(x=='s'){
         toty++;
      }
      else if(x=='a'){
          totx++;
      }
      else if(x=='d'){
          totx--; 
      }
      
      
    }
  
  
}

class Vector{
    float x,y;
    float q,w;
    
    public Vector(float a, float b){
       x=a;
       y=b;
    }
   
    
    void add(int a,int b){
      x+=a;
      y+=b;
    }
    
    void add(float a,float b){
      q+=a;
      w+=b;
    }
    
    void add(Vector a){
      x+=a.x();
      y+=a.y();
      q+=a.x();
      w+=a.y();
    }
    
   
   
    float x(){
       return x; 
    }
    
    float y(){
       return y; 
    }
  
}
