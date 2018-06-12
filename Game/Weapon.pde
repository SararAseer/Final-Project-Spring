class Weapon{
  Vector pos;
  Vector vel;
  int count;
  float heading;
  PImage shot;
  boolean bounds;
  float totx2,totx1,toty1;
  float toty2;
  final float totx3,toty3,totx4,toty4;
  String weap;
  
  float x(){
       return 2*totx3+totx2; 
    }
    
  public Weapon(){
    final float xz=totx;
    final float yz=toty;
    final float hz=ship.heading;
    totx4=toty4=0;
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
    weap="e";
      totx3=x.x;
      toty3=x.y;
      totx2=x.q;
      toty2=x.w;
      bounds=true;
      pos= x;
      heading =y;
      vel=new Vector(-cos(heading),-sin(heading));
      totx4=totx;
      toty4=toty;
  }
  
  public  Weapon(Vector x, float y){
    totx4=toty4=0;
    totx3=totx;
    toty3=toty;
    totx2=x.q;
    toty2=x.w;
    if(currWeapon==0){
      weap="shot.png";
    }
    else if(currWeapon==1){
      weap="BLUE.png";
    }
    else if(currWeapon==2){
      weap="Halo.png";
    }
    shot=loadImage(weap);
    bounds=true;
    pos= x;
    heading =y;
    vel=new Vector(cos(heading),sin(heading));
  }
  
  void update(){
   
    if(pos.x>500 || pos.y >500|| pos.x<0 || pos.y<0){
      bounds=false;
    }
    if(bounds && weap!=null && weap.equals("e")){
    pos.add(vel);
    count++;
    
    }
    else{
      totx2+=vel.x;
    toty2+=vel.y;
    
      
    }
    
  }
  
  void Display(){
    if(weap!= null && weap.equals("e")){
      totx1=totx3-(totx-totx4)+(vel.x*count);
      toty1=toty3-(toty-toty4)+(vel.y*count);
      if(bounds){
      pushMatrix();
      translate(totx1*2,toty1*2);
      rotate(heading);
      if(weap=="BLUE.png"){
        image(shot,12.5,-12.5,50,25); 
        image(shot,12.5,-25,50,25);
       }
      else{
        image(shot,12.5,-12.5,25,25); 
      }
      popMatrix();
      }
    }
    else{
    if(bounds){
      
    pushMatrix();
    translate(2*totx3+totx2,2*toty3+toty2);
    rotate(heading);
    if(weap=="BLUE.png"){
    image(shot,12.5,-12.5,50,25); 
    image(shot,12.5,-25,50,25);
    }
    else{
    image(shot,12.5,-12.5,25,25); 
    }
    popMatrix();
    }
  }
  }
  float y(){
       return 2*toty3+toty2; 
    }
    
    
  
  

}
