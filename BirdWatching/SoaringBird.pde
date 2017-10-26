class SoaringBird extends Object {
  float minXSpeed = 1.0;
  float maxXSpeed = 3.0;

  SoaringBird() {
    super();
    this.xSpeed = random(this.minXSpeed,this.maxXSpeed);
    this.size = 30;
  }
  
  void move() {
    this.x += this.xSpeed;
    // if off the right side of the screen,
    // move to just off the left side of the screen
    if (this.x > width) {
      this.x = -this.size;
    }
  }
}