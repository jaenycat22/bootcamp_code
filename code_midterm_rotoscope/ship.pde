
class Ship{

  //attributes
  color col;
  int x;
  int y;
  int speed;
  
  //construction
  
  Ship(){
    
    col = color(random(256),random(256),random(256));
    speed = int(random(1,100));
    
    x = int(random(width));
    y = int(random(height));
    
    
  }
  
  
  //methods or function
  
  void drawShip(){
  
    noStroke();
    fill(col);
    
    ellipse(x,y,100,40);
    ellipse(x, y-10, 40, 40);
    
  }
  
  void moveShip(){
  
  y += speed;
    
    if(y>height && speed>0){
      y = -20;
      y+= speed;
    }
    
    
  }
  
  
}