PVector p1 = new PVector();
PVector p2;

void setup(){
  size(1000,600);
  p2  = new PVector();
  
  p1.x = random(0, width/2);
  p1.y = random(0, height/2);
  
  p2.x = random(0, width/2);
  p2.y = random(0, height/2);
  
}
void draw(){
  background(255);
  
  fill(255);
  ellipse(p1.x, p1.y, 10,10);
  ellipse(p2.x, p2.y, 10,10);

  PVector p3 = p1.copy();
  
  p3.add(p2);
  
  fill(255,0,0);
  ellipse(p3.x, p3.y, 10,10);
  
  
}