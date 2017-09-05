// my native language is python, so forgive my absolutely terribly formatted code
float xball = 75;
float yball = 350;
float xnet = 100;
float speed = 5;
float netspeed = speed * 1.5;
int x = 0;
boolean projectile = false;
boolean rebound = false;
void setup() { 
  size (600, 500);
}
void draw() {
  background(0);
  fill(0, 0, 255);
  ellipse(xnet, 100, 50, 50);
  if (xnet >= 500) {
    rebound = true;
  }
  else if (xnet <= 100) {
    rebound = false;
  }
  if (rebound) {
    xnet = xnet - netspeed;
  }
  else {
    xnet = xnet + netspeed;
  }
  fill(255, 0, 0);
  ellipse(xball, yball, 40, 40);
  if (projectile) {
      float xcoproj = xball;
      float ycoproj = yball;
      fill(0, 255, 0);
      ellipse(xcoproj, ycoproj - x, 10, 10);
      x = x + 8;
      if ((xcoproj > xnet - 30 && xcoproj < xnet + 30)
      && (ycoproj - x > 70 && ycoproj - x < 130)) {
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
    if (xball < 0) {
      xball = xball + 50;
    }
    else if (xball > 600) {
      xball = xball - 50;
    }
    else {
      if (key == 'd') {
        xball = xball + speed;
      }
      if (key == 'a') {
        xball = xball - speed;
      }
    }
   }
}
