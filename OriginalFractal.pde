float rotation = 0;

public void myFractal(int x, int y, int size){
  rectMode(CENTER);
  if(size < 400){
    myFractal(x, y, size*2);
  }
  fill(#FFFFFF);
  rect(x,y, size, size);
}

void setup(){
  size(1000,1000);
}

void draw(){
  background(#214469);
  translate(width/2, height/2);
  rotate(radians(rotation));
  myFractal(0,0,1);
  rotation+=1;
}
