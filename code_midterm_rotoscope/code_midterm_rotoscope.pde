// CODE MIDTERM
// Rotoscoping
//
// This sketch loads the assigned frames and plays them back
// Add your own draw code
// Then it saves out the rendered frames
//
// DON'T FORGET TO CHANGE THE VALUE OF THE STUDENTNAME VARIABLE TO YOUR NAME!!

import java.io.File;

File[] tempfiles;
ArrayList<File> files;
PImage image;
String currentFilename;
float ANGLE_STEP = PI / 1;
float angle = 0.0;
//float ANGLEE_STEP = PI / 10;
//float anglee = 34.0;
float ANGLEEE_STEP = PI / 6;
float angleee = 34.0;
Ship[] ships; //array of ships
int num = 5; // number of ships

float currentColorR;
float currentColorG;
float currentColorB;


// EDIT THIS LINE WITH YOUR NAME!
String studentName = "JAEKY CHEONG";

void setup() {
  files = new ArrayList<File>();
  currentColorR = int(random(256));
  currentColorG = int(random(256));
  currentColorB = int(random(256));
  
  ships = new Ship[num];
  
  for(int i=0; i<num; i++){
  ships[i] = new Ship();
  
  }

  // get list of files from directory
  File dir = new File(sketchPath() + "/rawFrames");
  tempfiles = dir.listFiles();

  // filter out files that don't end in .png
  for (int i = 0; i < tempfiles.length; i++) {
    String path = tempfiles[i].getAbsolutePath();
    if (path.toLowerCase().endsWith(".png")) {
      files.add(tempfiles[i]);
    }
  }

  // Resize the canvas to full-HD 1080p glory
  size(960, 540);
  pixelDensity(2);
  
  // if that doesn't work, comment it out and uncomment this instead:
  //size(1920, 1080);
  //pixelDensity(1);
}

void draw() {
  // DO NOT ALTER THE LINE BELOW
  prepare();

  // BEGIN ADDING YOUR CODE HERE -----
for(int i=0; i < 10; i++){
    tree(i*120+10, 450);}
    
  fill(currentColorR, currentColorG, currentColorB,100);
  stroke(0);
  arc(450, 540, 500, 500, angle, angle + ANGLE_STEP);
  //arc(450, 540, 550, 550, anglee, anglee + ANGLEE_STEP);
  arc(450, 540, 600, 600, angleee, angleee + ANGLEEE_STEP);
  angle += ANGLE_STEP;
  //anglee += ANGLEE_STEP;
  angleee += ANGLEEE_STEP;
  
  for(int i =0; i<num; i++){
  ships[i].drawShip();
  ships[i].moveShip();

  // STOP ADDING YOUR CODE HERE -----

  // DO NOT ALTER THE LINES BELOW
  if (frameCount < files.size()) { 
    export();
  } else {
    exit();
  }
}
}




void tree(float x, float y){
  noStroke();
  fill(136,69,19,200);
  rect(x,y,20,100);
  fill(173,255,47,200);
  ellipse(x+10,y,100,100);
  
}
// DO NOT ALTER THIS FUNCTION!!
void prepare() {
  String path = files.get(frameCount-1).getAbsolutePath();
  currentFilename = files.get(frameCount-1).getName();

  // Load current file into our PImage variable
  tint(255, 255);
  image = loadImage(path);
  image(image, 0, 0, width, height);
}

// DO NOT ALTER THIS FUNCTION!!
void export() {
  // saves frame without watermark
  saveFrame(sketchPath() + "/outFrames/edited_" + currentFilename);

  int sidePadding = 125;
  int bottomPadding = 50;
  
  textAlign(LEFT);
  textSize(32);
  fill(255);
  text(studentName, sidePadding + 1, height - bottomPadding + 1);
  fill(0);
  text(studentName, sidePadding, height - bottomPadding);

  // saves frame with watermark
  saveFrame(sketchPath() + "/outFrames/watermarked_" + currentFilename);
}