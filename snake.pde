class snake{
  
// x position of snake  
  int x=0;
// y position of snake  
  int y=0;
//  variables to decide wheather to go up or down  
  int xspeed=0;
  int yspeed;
// total no of tail  
  int total=0;
 
 // arrayList that store tail 
  ArrayList<PVector>tail=new ArrayList<PVector>();
  snake(){
    //this.x=x;
    //this.y=y;
  }

// check wheather snake is in contact with foos  
  boolean eat(int xx,int yy){
    float dist=dist(x,y,xx,yy);
    if(dist<1){
      total++;
      return true;
    }else{
      return false;
    }
  }
// chech wheather snake is in contact with itself  
  void death() {
    for (int i = 0; i < tail.size(); i++) {
      PVector pos = tail.get(i);
      float d = dist(x, y, pos.x, pos.y);
      if (d < 1) {
        println("starting over");
        total = 0;
        tail.clear();
      }
    }
  }
  
// updating x anf y direction of snake  
  void update(){
    if(total>0){
      if (total == tail.size() && !tail.isEmpty()) {
        tail.remove(0);
      }
      tail.add(new PVector(x,y));
    }
    x+=xspeed*w;
    y+=yspeed*w;
    x = constrain(x, 0, width-w);
    y = constrain(y, 0, height-w);
  }
// display the snke  
  void show(){
    fill(255);
    for(PVector pv:tail){
      fill(255);
      rect(pv.x,pv.y,w,w);
    }
    rect(x,y,w,w);
  }
    
}
