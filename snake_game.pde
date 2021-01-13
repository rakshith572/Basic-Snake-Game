snake s;
int w=20;
int rows;
int foodX;
int foodY;
int columns;

void setup() {
  size(600, 600);
  rows=height/w;
  columns=width/w;
  s=new snake();
  frameRate(10);
  foodX=floor(random(columns));
  foodY=floor(random(rows));
}

void draw() {
  background(0);  
  if (s.eat(foodX*w,foodY*w)) {
    PickLocation();
  }
  s.death();
  s.update();
  s.show();
  fill(255,0,100);
  rect(foodX*w,foodY*w,w,w);
}

void PickLocation() {
  foodX=floor(random(columns));
  foodY=floor(random(rows));
}

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
