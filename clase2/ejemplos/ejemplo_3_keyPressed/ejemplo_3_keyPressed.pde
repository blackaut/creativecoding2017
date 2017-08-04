void draw() {
  if (keyPressed) {
    if (key == ' ') {
      fill(0);
    }
  } else {
    fill(255);
  }
  rect(25, 25, 50, 50);
}