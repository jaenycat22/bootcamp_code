int state =0;
PImage bear;
PImage angry;
PImage happy;
PImage like;
PImage hate;

void setup(){
  size (300,300);
  background (0);
  bear=loadImage("bear_1.png");
  angry=loadImage("bear_3.png");
  happy=loadImage("bear_2.png");
  like=loadImage("bear_4.png");
  hate=loadImage("bear_5.png");
  image(bear,0,0,300,300);
  println("One sunny day, a bear escape from the zoo");
  println("the bear was found in the mountain cave which was 10km away from the zoo");
  println("you can attract the bear with 3 choices of the food so that the bear can return to the zoo ");
  println("If the food is not good enough, the bear will eat you.");
  println("Good luck! Press 's' to Start Game");
}

void draw(){

}

void keyPressed(){
  if (key == 's' && state == 0){
    image(bear,0,0,300,300);
    clear();
    println(" ");
    println("Let's start our journey!");
    println(" ");
    println("choose the food");
    println("a. apple");
    println("b. blueberry");
    image(bear,0,0,300,300);
    state = 1;
  }else if (key == 'a' && state ==1){
    clear();
    println("");
    println("the bear moved 3km");
    println("7km left to the zoo");
    println("");
    println("choose the second food");
    println("a.honey");
    println("b.candy");
    image(like,0,0,300,300);
    state = 2;
  }else if (key == 'b' && state ==1){
    println("");
    println("the bear moved 2km");
    println("8km left to the zoo");
    println("");
    println("choose the second food");
    println("a.salmon");
    println("b.rabbit");
    image(hate,0,0,300,300);
    state = 3;
  }else if (key == 'a' && state ==2){
    println("");
    println("the bear moved 4km");
    println("3km left to the zoo");
    println("");
    println("choose the last food");
    println("a.pizza");
    println("b.cookie");
    image(like,0,0,300,300);
    state =4;
  }else if (key == 'b' && state ==2){
    println("");
    println("the bear moved 1km");
    println("6km left to the zoo");
    println("");
    println("choose the last food");
    println("a.popcorn");
    println("b.potatochip");
    image(hate,0,0,300,300);
    state = 5;
   }else if (key == 'a' && state ==3){
    clear();
    println("");
    println("the bear moved 5km");
    println("3km left to the zoo");
    println("");
    println("choose the last food");
    println("a.dougnut");
    println("b.icecream");
    image(like,0,0,300,300);
    state = 6;
    }else if (key == 'b' && state ==3){
     clear();
    println("");
    println("the bear moved 3km");
    println("5km left to the zoo");
    println("");
    println("choose the last food");
    println("a.orange juice");
    println("b.pepsi");
    image(hate,0,0,300,300);
    state = 7;
    }else if (key =='a' && state ==4){
    clear();
    println("");
    println("the bear moved 3km");
    println("0km left to the zoo");
    println("");
    println("Great job!!");
    println("you bring the bear back to the zoo!");
    println("if you want to restart the game press's'");
    image(happy,0,0,300,300);
    state = 0;
   }else if (key =='b' && state ==4){
    clear();
    println("");
    println("the bear moved 2km");
    println("1km left to the zoo");
    println("");
    println("oops!!");
    println("food was not good enough!");
    println("The Bear is eating you.");
    println("Now you are dead.");
    println("if you want to restart the game press's'");
    image(angry,0,0,300,300);
    state = 0;
   }else if (key =='a' && state ==5){
    clear();
    println("");
    println("the bear moved 3km");
    println("1km left to the zoo");
    println("");
    println("oops!!");
    println("food was not good enough!");
    println("The Bear is eating you.");
    println("Now you are dead.");
    println("if you want to restart the game press's'");
    image(angry,0,0,300,300);
    state = 0;
   }else if (key =='b' && state ==5){
    clear();
    println("");
    println("the bear moved 4km");
    println("0km left to the zoo");
    println("");
    println("Great job!!");
    println("you bring the bear back to the zoo!");
    println("if you want to restart the game press's'");
    image(happy,0,0,300,300);
    state = 0;
   }else if (key =='a' && state ==6){
    clear();
    println("");
    println("the bear moved 2km");
    println("1km left to the zoo");
    println("");
    println("oops!!");
    println("food was not good enough!");
    println("The Bear is eating you.");
    println("Now you are dead.");
    println("if you want to restart the game press's'");
    image(angry,0,0,300,300);
    state = 0;
   }else if (key =='b' && state ==6){
    clear();
    println("");
    println("the bear moved 3km");
    println("0km left to the zoo");
    println("");
    println("Great job!!");
    println("you bring the bear back to the zoo!");
    println("if you want to restart the game press's'");
    image(happy,0,0,300,300);
    state = 0;
   }else if (key =='a' && state ==7){
    clear();
    println("");
    println("the bear moved 2km");
    println("3km left to the zoo");
    println("");
    println("oops!!");
    println("food was not good enough!");
    println("The Bear is eating you.");
    println("Now you are dead.");
    println("if you want to restart the game press's'");
    image(angry,0,0,300,300);
    state = 0;
   }else if (key =='b' && state ==7){
    clear();
    println("");
    println("the bear moved 5km");
    println("0km left to the zoo");
    println("");
    println("Great job!!");
    println("you bring the bear back to the zoo!");
    println("if you want to restart the game press's'");
    image(happy,0,0,300,300);
    state = 0;
   }
  
}