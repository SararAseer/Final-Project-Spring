
class Map{
String [][] map;
PImage  piece;
    public Map(){
       

    }
     public Map(String z){        
        map= new String[800][900];
        for(int i=0; i < map.length;i++){
          for(int x=0; x < map[i].length;x++){
          map[i][x]="";
              }
          
       }
        for(int i=0; i < map.length;i++){
           Random r= new Random();
           int ax=r.nextInt(800);
           int by=r.nextInt(900);
           String s;
           if(r.nextBoolean()){
             s="block2.png"; 
           }
           else{
              s="block1.png"; 
           }
        //   map[ax][by]=s;
        }
    }
    
   
     void Display(){
     for(int i=0; i < map.length;i++){
          for(int x=0; x < map[i].length;x++){
              if(i<=800 && x<=900 && map[i][x]!=null&& (map[i][x].equals("block1.png")||map[i][x].equals("block2.png"))){             
                 piece= loadImage(map[i][x]);
                 image(piece,i+200-totx*2,x+100-toty*2,25,25); 

              }
          
       }
          
     }
       
      for( int i=200; i <1000; i+=25){
           String s="block1.png";
           piece= loadImage(s);
           image(piece,i-totx*2,100-toty*2,25,25); 
           image(piece,i-totx*2,1000-toty*2,25,25); 

      }
       for( int i=100; i <1000; i+=25){
           String s="block2.png";
          
           piece= loadImage(s);
           image(piece,200-totx*2,i-toty*2,25,25); 
           image(piece,1000-totx*2,i-toty*2,25,25); 

      }
     }
      
}
