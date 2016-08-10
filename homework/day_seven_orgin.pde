void setup(){
  size(500,500);
  background(255);
}

void draw(){
  for(int i=0; i < 10; i++){
    tree(i*100+10, 100);
    //tree(width/2, height/2);
   //tree(200,300);//=i= i+1
  //tree(300,400);
}
}
void tree(float x, float y){
  noStroke();
  fill(136,69,19);
  rect(x,y,20,100);
  fill(173,255,47);
  ellipse(x+10,y,100,100);
  
}