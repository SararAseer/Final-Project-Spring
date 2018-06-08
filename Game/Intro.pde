class Intro{
  boolean starts;
  int e;
  float heading,count,a1,b1,a2,b2,a3,b3,a4,b4,z;
  PImage sship;

  
  public Intro(){
   count=0;
    heading=90;
   z=-48;
   a1=a2=150;
   a3=a4=600;
     b1=b2=150;
     b3=b4=600;
       sship=loadImage("ship.png");
  }

  void roll(){
    translate(e,0);
    if(e<-700){
      start=true;
    }
      
  if(starts && e>-1000){
    e--;
    
  }
 
  if(e>-800){
  if(count==0){
    b1++;   
    a2++;
    a3--;
    b4--;
  
   if(a2>=600){
      count++;
      heading-=90;
    }
  }
    if(count==1){
    a1++;   
    b2++;
    b3--;
    a4--;
    if(a1>=600){
      count++;
      heading-=90;
    }
  }
  if(count==2){
    b1--;   
    a2--;
    a3++;
    b4++;
    if(b1<=150){
      count++;
      heading-=90;
    }
  }
  if(count==3){
    a1--;   
    b2--;
    b3++;
    a4++;
    if(a1<=150){
      count=0;
      heading-=90;
    }
  }
  
 
  
  background(0);
  noFill();
  rect(150,150,450,450);
  pushMatrix();
  translate(a1,b1);
  rotate(radians(heading));
  image(sship,-25,-25,50,50);
  popMatrix();
  pushMatrix();
  translate(a2,b3);
  rotate(radians(heading+270));
  image(sship,-25,-25,50,50);
  popMatrix();
  pushMatrix();
  translate(a4,b4);
  rotate(radians(heading+180));
  image(sship,-25,-25,50,50);
  popMatrix();
  pushMatrix();
  translate(a3,b2);
  rotate(radians(heading+90));
  image(sship,-25,-25,50,50);
  popMatrix();
  pushMatrix();
  strokeWeight(1);
  fill(255);
  translate(250,300);
  textSize(30);
  text("VIREXIAN",z,0);

  translate(100,80);
  stroke(255);
  fill(0);
  rect(z+80,0,(z+80+220)/2,50/2);
  fill(255);
  textSize(26/2);
  text("Start Game",z+80+35,30/2);
  textSize(26);
  strokeWeight(5/2);
  line(z+80-100,-70,z+80-100,25);
  line(z+80-100,25,z+80-2,25);
  popMatrix();
  
  
  }
  
    
  }
}
