class Weapon{
  Vector pos;
  Vector vel;
  float heading;
  PImage shot;
  boolean bounds;
  float totx2;
  float toty2;
  final float totx3,toty3;
  
  float x(){
       return 2*totx3+totx2; 
    }
    
  public Weapon(){
    final float xz=totx;
    final float yz=toty;
    final float hz=ship.heading;
    totx3=totx;
    toty3=toty;
    totx2=xz;
    toty2=yz;
    shot=loadImage("shot.png");
    bounds=true;
    pos= new Vector(xz,yz);
    heading =hz;
    vel=new Vector(cos(heading),sin(heading));
  }
  
  Vector getv(){
     return pos; 
    
  }
  public  Weapon(Vector x, float y, int u){
    if(u>=0 || u<0){
        shot=loadImage("eshot.png");
    }
      totx3=x.x;
      toty3=x.y;
      totx2=x.q;
      toty2=x.w;
      bounds=true;
      pos= x;
      heading =y;
      vel=new Vector(-cos(heading),-sin(heading));
  }
  
  public  Weapon(Vector x, float y){
    totx3=totx;
    toty3=toty;
    totx2=x.q;
    toty2=x.w;
    shot=loadImage("shot.png");
    bounds=true;
    pos= x;
    heading =y;
    vel=new Vector(cos(heading),sin(heading));
  }
  
  void update(){
   
    if(pos.x>750 || pos.y >750|| pos.x<0 || pos.y<0){
      bounds=false;
    }
    if(bounds){
    pos.add(vel);
    totx2+=vel.x;
    toty2+=vel.y;
    
    }
    
  }
  
  void Display(){
    if(bounds){
    pushMatrix();
    translate(2*totx3+totx2,2*toty3+toty2);
    rotate(heading);
    image(shot,12.5,-12.5,25,25); 
    popMatrix();
    }
  }
  float y(){
       return 2*toty3+toty2; 
    }
    
    
  
  

}

class BlueLaser extends Weapon{
  Vector pos;
  Vector vel;
  float heading;
  PImage shot;
  boolean bounds;
  float totx2;
  float toty2;
  final float totx3,toty3;
  
  public BlueLaser(){
    totx3=toty3=totx2=toty2=0;
    
  }
  
  Vector getv(){
     return pos; 
    
  }
  public  BlueLaser(Vector x, float y, int u){
    if(u>=0 || u<0){
        shot=loadImage("eshot.png");
    }
      totx3=x.x;
      toty3=x.y;
      totx2=x.q;
      toty2=x.w;
      bounds=true;
      pos= x;
      heading =y;
      vel=new Vector(-cos(heading),-sin(heading));
  }
  
  float y(){
       return 2*toty3+toty2; 
    }
  
  public  BlueLaser(Vector x, float y){
    totx3=totx;
    toty3=toty; 
    totx2=x.q;
    toty2=x.w;
    shot=loadImage("BLUE.png");
    bounds=true;
    pos= x;
    heading =y;
    vel=new Vector(cos(heading),sin(heading));
  }
  
  void update(){
     float x=2*totx3+totx2;
     float y=2*toty3+toty2;
    if(x>750 || y >750|| x<0 || y<0){
      bounds=false;
    }
   
    if(bounds){
    pos.add(vel);
    totx2+=vel.x;
    toty2+=vel.y;
    }
    
  }
  float x(){
       return 2*totx3+totx2; 
    }
  void Display(){
    if(bounds){
    pushMatrix();
    translate(2*totx3+totx2,2*toty3+toty2);
    rotate(heading);
    image(shot,12.5,-12.5,50,25); 
    image(shot,12.5,-25,50,25); 
    popMatrix();
     
  }
  


}

}
