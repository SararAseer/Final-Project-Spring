class Package{
  int c;
  int r,g,b=1;
  boolean yes;
  float x1,y1,heading;
   public Package(float x, float y){
       x1=x;
       y1=y;
       c=19;
       Random a= new Random();
       r= a.nextInt(250);
       g= a.nextInt(250);
       b= a.nextInt(250);
   }
    
   void Display(){
       Random a= new Random();
       boolean t=a.nextBoolean();
       r+=a.nextInt(15)*(t==true? 1:-1) ;
       t=a.nextBoolean();
       g+=a.nextInt(15)*(t==true? 1:-1);
       t=a.nextBoolean();
       b+=a.nextInt(15)*(t==true? 1:-1);
       pushMatrix();
       translate(x1*2,y1*2);
       fill(r,g,b);
       ellipse(0,0,25,25);
       fill(250);
       textSize(12);
       popMatrix();
   }
   
  
  
}
