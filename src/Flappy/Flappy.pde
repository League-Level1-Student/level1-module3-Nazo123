PImage bg;
PImage bird;
PImage birdFlap;
PImage bird2;
PImage pipe;
int score = 0;
PImage pipe2;

PImage ground;
PFont f;
float e = 20;
void setup() {

  size(500, 750);
  ground = loadImage("ground.png");
  bg = loadImage("flappyBackground.png");
  ground.resize(700, 125);
  bird = loadImage("bird.png");
  birdFlap = loadImage("gas.png");
  bird2= loadImage("bird2.png");
  pipe = loadImage("topPipe.png");
  pipe2= loadImage("bottomPipe.png");
  bird.resize(70, 70); 
  birdFlap.resize(70, 70);
  bird2.resize(70, 70); 
  pipe.resize(50, 900);
  image(bird2, birdX, birdY);
  f = createFont("Times New Roman",e,true);
}
int birdY = 250;
int birdX = 40;
int birdYVelocity = 0;
int counter = 0;
int groundmove = 0;
int pippos = 750;
int pippos2 = 1150;
int pipy = 430;
int pipy2 = 430;

  String v = score+"";
void draw() {
v = score+"";

textFont(f,100);
fill(255,255,255);


  // HERERERERERErsertesteryhthyjhtryjtrtyhjhtghjtghjhfyhfgt////////////////////////
  //work on hitboxes below
  if (pippos>=50 && pippos+4<=110) {
    if (birdY+70>=pipy+3) {

      stop();
    }
    if (birdY<=pipy-206) {

      stop(); 
    }
  }
  if (pippos2>=50 && pippos2+4<=110) {
    if (birdY+70>=pipy2+3) {

      stop();
    }
    if (birdY<=pipy2-206) {

      stop(); 
    }
  }


  counter++;
  if (birdY >567) {

    image(bird2, birdX, birdY+9);


    stop();
  }
  background(bg);
  image(pipe, pippos, pipy);
  int pipys =  pipy-1100;
  image(pipe, pippos, pipys);
  image(pipe, pippos2, pipy2);
  image(pipe, pippos2, pipy2-1100);


  image(ground, groundmove, 633);

  birdY += 8;

  birdY = birdY - birdYVelocity;
  birdYVelocity = birdYVelocity -1;
  if (birdYVelocity <=0) {
    birdYVelocity =0;
  }
  if (birdYVelocity >= 2) {

    image(bird2, birdX, birdY);
  } else {

    if (counter<5) {
      image(birdFlap, birdX, birdY);
    } else {

      image(bird, birdX, birdY);
    }
  }
  if (counter>10) {
    counter=0;
  }
  groundmove= groundmove-3;
  if (groundmove<=-60) {
    groundmove=0;
  }

  pippos = pippos- 3;
  pippos2 = pippos2- 3;

  if (pippos<=-51) {
    pippos=750;
    pipy= (int)random(270, 590);
  }
  if (pippos2<=-51) {
    pippos2=750;
    pipy2= (int)random(270, 590);
  }
  
  if(pippos+50==110 && pippos+50==110){
    score++;
  
  }
    if(pippos2+50>=110 && pippos2+50<=112
    
    
    
    
    
    ){
    score++;
  
  }
  text(v,250,100);
}


void mousePressed() {

  birdYVelocity=+22;
}
