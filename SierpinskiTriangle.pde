public void setup(){
  size(400,400);
  background(0,0,0);
  noStroke();
  fill(255,255,255);
}
public void draw(){
  sierpinski(50,350,300);
}
public void sierpinski(int x, int y, int len){
  if(len <= 20){
    triangle(x,y, x + len/2 , y - len, x + len, y); 
  } else {
    sierpinski(x,y,len/2);
    sierpinski(x + len/2,y, len/2);
    sierpinski(x + len/4,y - len/2,len/2);
  }
}
