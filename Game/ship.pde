Ship sship;
Ship shsip;

int tot,totxy;


void d(){
  background(0);
  ship.Display();

  if(keyPressed){
  if(key=='z'){
         ship.heading-=.05; 
      }
      else if(key=='c'){
         ship.heading+=.05 ;
      }
      else if(key=='w'){
        boolean c=true;
        for(int i=tot*2-25;i<tot*2+25;i++){
          color a=get(i,(tot-1)*2-25);
          if(a!=color(0)){
            c=false;
          }
        }
        if(c){
          toty--;
        }
      }
      else if(key=='s'){
         toty++;
      }
      else if(key=='a'){
          totx--;
      }
      else if(key=='d'){
          totx++; 
      }
  }
}


class s{
  
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
     }
    }
    
     void Display(int x){
     if(!dead){
     pushMatrix();
      ship=loadImage("ship.png");
      translate(100,100);
      rotate(heading);
      image(ship,-25,-25,50,50); 
      popMatrix();
     }
    }
    
    void update(){
        pushMatrix();
        
        popMatrix();
    }
    
    void keyPressed(){
      if(key=='z'){
         heading-=.05; 
      }
      else if(key=='c'){
         heading+=.05 ;
      }
      else if(key=='w'){
          toty--;
      }
      else if(key=='s'){
         toty++;
      }
      else if(key=='a'){
          totx++;
      }
      else if(key=='d'){
          totx--; 
      }
            System.out.println(totx+"'"+toty);

      
    }
  
  
}

class a{
    float x,y;
    float q,w;
    
    public a(float a, float b){
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
