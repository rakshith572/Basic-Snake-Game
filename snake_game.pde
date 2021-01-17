// raksith 

// creating snake
snake s;
// width of snake
int w=20;


int rows;
int columns;

// position of food that snske eat
int foodX;
int foodY;



void setup() {
  // creatign a canvas of size (600,600)
  size(600, 600);
// no of rows  
  rows=height/w;
// no of columnd  
  columns=width/w;
  
  s=new snake();
  frameRate(10);

//x position of food  
  foodX=floor(random(columns));
// y position of food  
  foodY=floor(random(rows));
}

void draw() {
// background of black  
  background(0);  
  
// if snake eats a food we nees to pick new food location  
  if (s.eat(foodX*w,foodY*w)) {
    PickLocation();
  }
  
//  callinf function that check a snake is in contact with itself means death
  s.death();
// updating snake position  
  s.update();
// displaying snake  
  s.show();
  
// food of snake is in res 
  fill(255,0,100);
  
  rect(foodX*w,foodY*w,w,w);
}

void PickLocation() {
  foodX=floor(random(columns));
  foodY=floor(random(rows));
}

// move either uo down , left ,right by pressing up arrow, down arrow ,left arrow , right arrow respectively
void keyPressed() {
  if (keyCode==UP) {
    s.xspeed=0;
    s.yspeed=-1;
  }
  if (keyCode==DOWN) {
    s.xspeed=0;
    s.yspeed=1;
  }
  if (keyCode==RIGHT) {
    s.xspeed=1;
    s.yspeed=0;
  }
  if (keyCode==LEFT) {
    s.xspeed=-1;
    s.yspeed=0;
  }
}
