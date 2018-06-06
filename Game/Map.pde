
class Map{
boolean [][] map;
PImage  piece;
    public Map(){
       

    }
     public Map(String s){
        
        piece= loadImage(s);
    }
    
   
     void Display(){
        
       
      for( int i=200; i <1000; i+=25){
           String s="block1.png";
          
           piece= loadImage(s);
           image(piece,i,100,25,25); 
           image(piece,i,1000,25,25); 

      }
       for( int i=100; i <1000; i+=25){
           String s="block2.png";
          
           piece= loadImage(s);
           image(piece,200,i,25,25); 
           image(piece,1000,i,25,25); 

      }
      }
      
}
