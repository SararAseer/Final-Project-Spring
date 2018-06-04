
class Weapon{
  Vector pos;
  Vector vel;
  float heading;
  PImage shot;
  boolean bounds;
  float totx2;
  float toty2;
  final float totx3,toty3;
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
    if(pos.x>width || pos.y >height|| pos.x<0 || pos.y<0){
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
    System.out.println(vel.q);
    pushMatrix();
    translate(2*totx3+totx2,2*toty3+toty2);
    rotate(heading);
    image(shot,12.5,-12.5,25,25); 
    popMatrix();
    }
    
  }
  
  
}
