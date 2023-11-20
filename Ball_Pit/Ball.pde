public class Ball
{
  float circleX;
  float circleY;
  float circleSize;
  color ballColor = color(random(255), random(255), random(255));

  float xSpeed;
  float ySpeed;

  public Ball(float circleX, float circleY, float circleSize)
  {
    this.circleX = circleX;
    this.circleY = circleY;
    this.circleSize = circleSize;
    xSpeed = random(-0.8, 0.8);
    ySpeed = random(-0.8, 0.8);
  }

  void display()
  {
    fill(ballColor);
    circle(circleX, circleY, circleSize);
  }

  void move() {
    circleX = circleX + xSpeed;
    circleY = circleY + ySpeed;

    if (circleX > width - circleSize / 2 || circleX < circleSize / 2) {
      xSpeed = xSpeed * -1;
    } else if
      (circleY > height - circleSize / 2 || circleY < circleSize / 2) {
      ySpeed = ySpeed * -1;
    }
  }
  
  void mouseCollision() {
    float distance = dist(mouseX, mouseY, circleX, circleY);


    if (distance < circleSize / 2) {
      xSpeed = random(-8, 8);
      ySpeed = random(-8, 8);
    }
  }
}
