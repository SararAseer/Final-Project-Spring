Map map;
float x,y,totx,toty;



void mousePressed(){
  x=mouseX;
  y=mouseY;
  System.out.println(x+","+y);
}


void setup(){
  frameRate(300);

  totx=toty=250;
   x=y=250;
  size(750,750);
 
  fighters = new ArrayList<Enemies>();  
    counter=0;
    space=true;
    ship= new Ship();
    ship.sd(false);
    bullets = new ArrayList<Weapon>();
    ebullets = new ArrayList<Weapon>();
}

void draw(){
  background(0);
  int a=0;
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
    space=true;
  }
    background(0);
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
    else if(!ship.dead && keyPressed && key==' '&& space && bullets.size()<10 ){
      final float xz=totx*2;
      final float yz=toty*2;
      final float hz=ship.heading;
      space=false;
      bullets.add(new Weapon(new Vector(xz,yz),hz));
      
    }
    else if(keyPressed ){ship.move(key); 
    
   }
   
   ship.update();
   ship.vel=new Vector(0,0);
   for(int i=0; i < bullets.size(); i++){
     bullets.get(i).Display();
     bullets.get(i).update();
     for(int q=0; q < fighters.size(); q++){
       
     if(bullets.size()!=i&& fighters.size()!=q&&abs(fighters.get(q).totx1-(bullets.get(i).totx3+(bullets.get(i).totx2/2)))<=12.5 && abs(fighters.get(q).toty1-(bullets.get(i).toty3+(bullets.get(i).toty2/2)))<=12.5){
       fighters.get(q).sd(true);
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
       ship.sd(true);
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
  
}

  


void keyPressed(){
  if(key=='w' ){
    toty++;
    
   
  }
   else if(key=='a'){
       totx++;
       
     
    
  }
   else if(key=='s'){
     toty--;
    
  }
   else if(key=='d'){
     totx--;
     
  }
  
}

// A pixel width an alpha level below this value is
// considered transparent.
