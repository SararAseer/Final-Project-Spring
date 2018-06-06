Map map;
float x,y,totx,toty;
PImage  m;
int currWeapon;
Bars bars;

void mousePressed(){
  x=mouseX;
  y=mouseY;
  
  System.out.println(mouseX+","+mouseY);

}


void setup(){
    frameRate(240);
    totx=toty=125;
    x=y=250;
    size(700,700);
    map= new Map();
    fighters = new ArrayList<Enemies>();  
    packages=new ArrayList<Package>();
    counter=0;
    space=true;
    ship= new Ship();
    ship.sd(false);
    bullets = new ArrayList<Weapon>();
    ebullets = new ArrayList<Weapon>();
    currWeapon=2;
    bars= new Bars();
}

void draw(){
    int a=0;
    background(0);
    bars.Display();
    pushMatrix();
    translate(-totx,-toty);
    map.Display();
     popMatrix();
    for(int i=0; i< packages.size(); i++){
      Package q=packages.get(i);
      q.Display();
      if(abs(totx-q.x1)<25 && abs(toty-q.y1)<30){
        Random rands = new Random();
        currWeapon=rands.nextInt(3);
        packages.remove(i);
    }
    }

    Random rand = new Random();
    if(fighters.size()>0){
      a=rand.nextInt(fighters.size())+1;
    }
    if(fighters.size()==0){
      fighters.add(new Enemies(0));
      fighters.add(new Enemies(1));
      fighters.add(new Enemies(2));
      fighters.add(new Enemies(3));

  }/*
      final float az=coo.pos.x;
      final float bz=coo.pos.y;
      final float cz=coo.heading;
      space=false;
      ebullets.add(new Weapon(new Vector(az,bz),cz,0));
  */
  for(int i=0; i <fighters.size();i++){
      int c=rand.nextInt(100);
      int g=rand.nextInt(100);
      if(c>95 && g>95){
      final float az=fighters.get(i).totx1;
      final float bz=fighters.get(i).toty1;
      final float cz= fighters.get(i).heading;
    ebullets.add(new Weapon(new Vector(az,bz),cz,0));
      }
  }
  counter++;
  if(counter>=20){
    counter=0;
    bars.mana+=10;
    space=true;
  }

   ship.Display();
    if(keyPressed && keyCode==UP){
      ship.move('w'); 
    }
    else if(keyPressed &&keyCode==DOWN){
      ship.move('s');
    }
    else if(keyPressed &&keyCode==RIGHT){
      ship.move('a');
    }
    else if(keyPressed &&keyCode==LEFT){
      ship.move('d');
    }
    else if(!ship.dead && keyPressed && key==' '&& space && bars.mana>25 ){
      final float xz=totx;
      final float yz=toty;
      final float hz=ship.heading;
      space=false;
      bars.mana-=25;
      bullets.add(new Weapon(new Vector(xz,yz),hz));
     
      
    }
    else if(keyPressed ){
      
      ship.move(key); 
    
   }
   pushMatrix();
   ship.update();
   ship.vel=new Vector(0,0);
   
   for(int i=0; i < bullets.size(); i++){
     bullets.get(i).Display();
     bullets.get(i).update();
     for(int q=0; q < fighters.size(); q++){    
      if(bullets.size()!=i&& fighters.size()!=q&&abs(fighters.get(q).totx1*2-bullets.get(i).x())<=13 && abs(fighters.get(q).toty1*2-bullets.get(i).y())<=13){
       fighters.get(q).sd(true);
       final float x12=fighters.get(q).totx1;
       final float y12=fighters.get(q).toty1;
       
       packages.add(new Package(x12,y12));
       fighters.remove(q);
       bullets.remove(i);
     }
     else if(bullets.size()!=i && bullets.get(i).bounds==false){
       bullets.remove(i);
     }
     
     }
   }
   for(int i=0; i < ebullets.size(); i++){
     ebullets.get(i).Display();
     ebullets.get(i).update();
     
     if(i<ebullets.size()&&ship.dead!=true&&abs(totx-(ebullets.get(i).totx3+(ebullets.get(i).totx2/2)))<=12.5 && abs(toty-(ebullets.get(i).toty3+(ebullets.get(i).toty2/2)))<=12.5){
       bars.health-=25;
       ebullets.remove(i);
     }
     else if(ebullets.get(i).bounds==false){
       ebullets.remove(i);
     }
   }
   for(int i=0; i < fighters.size(); i++){
     fighters.get(i).move();
     fighters.get(i).Display();
   }
  popMatrix();
}

  


  
