Ball[] ball = new Ball[10];

void setup()
{
  background(255);
  size(600, 600);
  ellipseMode(CENTER);

  for (int i = 0; i < ball.length; i++)
  {
    ball[i] = new Ball(random(10, 580), random(10, 580), 50);
  }
}

void draw() {
  background(255);

  for (int i = 0; i < ball.length; i++)
  {
    ball[i].display();
    ball[i].move();
    ball[i].mouseCollision();
  }
}
