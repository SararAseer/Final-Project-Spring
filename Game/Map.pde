
class Map{
boolean [][] map;
PImage  piece;
    public Map(){
       

    }
     public Map(String s){
        
        piece= loadImage(s);
        map=new boolean [(width+500)/piece.width][(height+500)/piece.height];
    }
    
   
     void Display(){
        
       
      for( int i=25; i <725; i+=25){
           String s="block1.png";
          
           piece= loadImage(s);
           image(piece,i,0,25,25); 
           image(piece,i,725,25,25); 

      }
       for( int i=25; i <725; i+=25){
           String s="block2.png";
          
           piece= loadImage(s);
           image(piece,0,i,25,25); 
           image(piece,725,i,25,25); 

      }
      }
      
}
