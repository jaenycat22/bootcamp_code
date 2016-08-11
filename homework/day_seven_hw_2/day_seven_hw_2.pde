float r = 100;
float theta = 0;
PVector position;


void setup(){
  
  size(500,500);
  background(0);
  smooth();
  position = new PVector(0,0); 
  
  
}

void draw(){
  fill (0,10);
  rect(0,0, width,height);
  
  //orbit
  float x = r*cos(theta);
  float y = r*sin(theta);
  
  position.x = r*cos(frameCount);
  position.y = -r * sin(frameCount);

   //circle

   fill(0,255,255);
   noStroke();
   ellipse(position.x+width/2, position.y+ height/2, 20,20);
   theta = theta + 0.1;
}