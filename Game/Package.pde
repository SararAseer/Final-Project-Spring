class Package{
  int c;
  int r,g,b=1;
  boolean yes;
  float x1,x2,y1,y2;
  final float x3,y3;
  
  public Package(float x, float y){       
       x2=x;
       x3=totx;
       y3=toty;
       y2=y;
       c=19;
       Random a= new Random();
       r= a.nextInt(250);
       g= a.nextInt(250);
       b= a.nextInt(250);
   }
    
   void Display(){
       x1=x2-(totx-x3);
       y1=y2-(toty-y3);
       Random a= new Random();
       boolean t=a.nextBoolean();
       strokeWeight(10);
       r+=a.nextInt(15)*(t==true? 1:-1) ;
       t=a.nextBoolean();
       g+=a.nextInt(15)*(t==true? 1:-1);
       t=a.nextBoolean();
       b+=a.nextInt(15)*(t==true? 1:-1);
       pushMatrix();
       translate(x1*2,y1*2);
       fill(r,g,b,100);
       ellipse(0,0,25,25);
       fill(250);
       textSize(12);
       popMatrix();
   }
   
  
  
}
