
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
           image(piece,i-totx,100-toty,25,25); 
           image(piece,i-totx,1000-toty,25,25); 

      }
       for( int i=100; i <1000; i+=25){
           String s="block2.png";
          
           piece= loadImage(s);
           image(piece,200-totx,i-toty,25,25); 
           image(piece,1000-totx,i-toty,25,25); 

      }
      }
      
}
