PImage bg;
PImage bird;
PImage bird2;
void setup(){
  
  size(500,750);
  
  bg = loadImage("flappyBackground.jpg");
bird = loadImage("bird.png");
bird2= loadImage("bird2.png");
bird.resize(70,70); 
bird2.resize(70,70); 
image(bird2,birdX,birdY);
}
int birdY = 250;
int birdX = 40;
int birdYVelocity = 0;
void draw(){
  
  if (birdY >567){

image(bird2,birdX,birdY+9);

 
    stop(); 
  }
  background(bg);

birdY += 10;

birdY = birdY - birdYVelocity;
birdYVelocity = birdYVelocity -1;
if (birdYVelocity <=0){
  birdYVelocity =0;
}
if (birdYVelocity >= 6){

image(bird2,birdX,birdY);
}
else{
  image(bird,birdX,birdY);
  
}

}
int width = 70;
int height = 70;
void mousePressed(){
  
  birdYVelocity=+25;
  
}
   