Ship ship;
Enemies coo;
ArrayList<Enemies> fighters;
ArrayList<Weapon> bullets;
ArrayList<Weapon> ebullets;
ArrayList<Package> packages;
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
     heading=atan2(mouseX-totx*2-12.5,mouseY-toty*2-12.5)*-1+radians(90);
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
         heading=atan2(mouseX-totx*2,mouseY-toty*2)*-1+45;
      }
      else if(x=='c'){
         heading=atan2(mouseX-totx*2,mouseY-toty*2)*-1+45;
      }
      else if(x=='w'){
        boolean c=true;
        for(int i=(int)totx*2-25;i<(int)totx*2+25;i++){
          color a=get(i,(int)(toty-1)*2-40);
          if(a!=color(0)){
            c=false;
          }
          
        }
        if(c){
          toty--;
        }
      }
      else if(x=='s'){
        boolean c=true;
        for(int i=(int)totx*2-25;i<(int)totx*2+25;i++){
          color a=get(i,(int)(toty+1)*2+40);
          if(a!=color(0)){
            c=false;
          }
         
        }
        if(c){
          toty++;
        }
      }
      else if(x=='a'){
        boolean c=true;
        for(int i=(int)toty*2-25;i<(int)toty*2+25;i++){
          color a=get((int)(totx+1)*2+40,i);
          if(a!=color(0)){
            c=false;
          }
         
        }
        if(c){
          totx--;
        } 
      }
      else if(x=='d'){
        boolean c=true;
        for(int i=(int)toty*2-25;i<(int)toty*2+25;i++){
          color a=get((int)(totx-1)*2-40,i);
          if(a!=color(0)){
            c=false;
          }
           
        }
        if(c){
          totx++;
        } 
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
