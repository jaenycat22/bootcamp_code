color value[] = {#088A29, #5FB404, #58FA58, #31B404, #DF7401, #F4FA58, #01DF74, #82FA58, #04B45F, #E3F6CE};


void setup(){
 size(500, 300);
 background(255);
 
}

void draw(){
  
  //draw the color array
  for (int i = 0; i < value.length; i++){

    fill(value[i]);
    ellipseMode(CENTER);
    rectMode(CENTER);
    noStroke();
    ellipse(25+(i*50), 75, 50, 50);
    rect(25 +(i*50), 25, 50, 50);
    ellipse(25+(i*50), 175, 50, 50);
    rect(25 +(i*50), 125, 50, 50);
    ellipse(25+(i*50), 275, 50, 50);
    rect(25 +(i*50), 225, 50, 50);
  
  }
  }
  

void mousePressed(){
  if(mousePressed){
   background(random(255)); 
  }
}