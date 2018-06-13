Ship ship;
Enemies coo;
ArrayList<Enemies> fighters;
ArrayList<Weapon> bullets;
ArrayList<Weapon> ebullets;
ArrayList<Package> packages;
ArrayList<LaserGrid> Lasers;
int counter;
boolean space;


class Ship{
  Vector vel= new Vector(0,0);
  float heading=0;
  PImage ship;
  boolean dead;
  boolean []moves= new boolean [5];

  
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
     if(dead){
       end=true;
       
     }
    }
    
    void update(){
        pushMatrix();
        
        popMatrix();
    }
    
    void move(){
       heading=atan2(mouseX-totx*2,mouseY-toty*2)*-1+45;
     
      if(moves[0]==true){
        boolean c=true;
        for(int i=(int)totx*2-25;i<(int)totx*2+25;i++){
          color a=get(i,(int)(toty-1)*2-40);
          float v=hue(a);
          int h=(int)(toty-1)*2-40;
          System.out.println(i+","+h);
          if(a!=color(0)&&v!=0){
           c=false;
          }
          
        }
        if(c){
          toty--;
        }
      }
      if(moves[1]==true){
        boolean c=true;
        
        for(int i=(int)totx*2-25;i<(int)totx*2+25;i++){
          color a=get(i,(int)(toty+1)*2+40);
          float v=hue(a);
          int h=(int)(toty-1)*2-40;
          
          System.out.println(i+","+h);
          if(a!=color(0)&&v!=0){
            c=false;
          }
         
        }
        if(c){
          toty++;
        }
      }
     if(moves[2]==true){
        boolean c=true;
        for(int i=(int)toty*2-25;i<(int)toty*2+25;i++){
          color a=get((int)(totx+1)*2-40,i);
          float v=hue(a);
          if(a!=color(0)&& v!=0){
            c=false;
          }
         
        }
        if(c){
          totx--;
        } 
      }
      if(moves[3]==true){
        boolean c=true;
        for(int i=(int)toty*2-25;i<(int)toty*2+25;i++){
          color a=get((int)(totx-1)*2+40,i);
          float v=hue(a);
          if(a!=color(0)&&v!=0){
            c=false;
          }
           
        }
        if(c){
          totx++;
        } 
      }
      if(moves[4]){
        final float xz=totx;
        final float yz=toty;
        final float hz=heading;
        space=false;
        bars.mana+=1;
        bullets.add(new Weapon(new Vector(xz,yz),hz));
     
        
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
