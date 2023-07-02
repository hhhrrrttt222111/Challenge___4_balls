class Ball {
  float x;     
  float y;     
  float speed; 
  
  Ball(float xPos, float yPos, float ballSpeed) {
    x = xPos;
    y = yPos;
    speed = ballSpeed;
  }
  
  void move() {
    x += speed;
    if (x > width) {
      x = 0;
    }
  }
  
  void display() {
    ellipse(x, y, 30, 30);
  }
}

ArrayList<Ball> balls;  

void setup() {
  size(800, 400);
  balls = new ArrayList<Ball>();
  
  balls.add(new Ball(0, height / 5.0, 1));
  balls.add(new Ball(0, 2 * height / 5.0, 2));
  balls.add(new Ball(0, 3 * height / 5.0, 3));
  balls.add(new Ball(0, 4 * height / 5.0, 4));
}

void draw() {
  background(255);
  
  for (Ball ball : balls) {
    ball.move();
    ball.display();
  }
}
