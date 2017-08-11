color miColor = #FF05A2;
  color otroColor = color(129, 0);
  color colorRgb = color(62,03, 201);
  color colorRgba = color(38,91,34,29);
void setup(){
  size(500,500);
}
void draw(){
  background(255);
  fill(miColor);
  rect(100,100,100,100);
  fill(otroColor);
  rect(150,150,100,100);
  fill(colorRgb);
  rect(200,200,100,100);
  fill(colorRgba);
  rect(240,240,100,100);
}