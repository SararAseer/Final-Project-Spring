
class Map{
boolean [][] map;
PImage  piece;
    public Map(){
        piece= loadImage("map.jpeg");
        map=new boolean [(width+500)/piece.width][(height+500)/piece.height];
    }


     void Display(){
      for( int i=0; i <width; i+=25){
           image(piece,i,0,25,25); 
           image(piece,i,725,25,25); 

      }
       for( int i=0; i <height; i+=25){
           image(piece,0,i,25,25); 
           image(piece,725,i,25,25); 

      }
      }
      
    }
