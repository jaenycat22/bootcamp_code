
PVector position;

PVector velocity;

float r, g, b;
int radius;

void setup(){
  size(600,600);
  background(255);
  
  position = new PVector(width/2, height/2);
  
  velocity = new PVector(5, 6);
  
  radius = 100;
}

void draw(){

    
 position = position.add(velocity);
  
  if( position.x >= (width - radius/2) || position.x <= radius/2){
    //xspeed = xspeed * -1;
    
    velocity.x = velocity.x * -1;
    
  }
  
  if( position.y >= (height - radius/2) || position.y <= radius/2){
    //yspeed = yspeed * -1;
    
    velocity.y = velocity.y * -1;
  }
  
  if( position.x == (width-radius/2) || position.x == radius/2 || position.y == (height - radius/2) || position.y == radius/2){
      r = random(0, 255);
      g = random(0, 255);
      b = random(0, 255);
  
  }
  noStroke();
  fill(136,69,19);
  rect(position.x,position.y,20,100);
  fill(r,g,b);
  ellipse(position.x+10,position.y,radius,radius);
  
}