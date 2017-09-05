// my native language is python, so forgive my absolutely terribly formatted code
int xball = 75;
int yball = 350;
int xnet = 100;
int ynet = 100;
int speed = 5;
int x = 0;
boolean projectile = false;
boolean rebound = false;
void setup() { 
  size (600, 500);
}
void draw() {
  background(0);
  fill(0, 0, 255);
  ellipse(xnet, ynet, 50, 50);
  if (xnet >= 500) {
    rebound = true;
  }
  else if (xnet <= 100) {
    rebound = false;
  }
  if (rebound) {
    xnet = xnet - speed;
  }
  else {
    xnet = xnet + speed;
  }
  fill(255, 0, 0);
  ellipse(xball, yball, 40, 40);
  if (projectile) {
      int xcoproj = new Integer(xball);
      int ycoproj = new Integer(yball);
      fill(0, 255, 0);
      ellipse(xcoproj, ycoproj - x, 10, 10);
      x = x + 8;
      if ((xcoproj > xnet - 30 && xcoproj < xnet + 30) && (ycoproj - x > 70 && ycoproj - x < 130)) {
        fill(255, 0, 0);
        textSize(100);
        text("Hit!", 400, 400);
      }
      if (x > 300) {
        x = 0;
        projectile = false;
      }
  }
  if (keyPressed) {
    projectile = true;
    if (key == 'd') {
      xball = xball + speed;
    }
    if (key == 'a') {
      xball = xball - speed;
    }
  }
}
