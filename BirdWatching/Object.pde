abstract class Object {
  float x;
  float y;
  float xSpeed;
  float ySpeed; //soaring bird doesn't have this
  float size;
  color fillColor;
  Object () {
    this.fillColor = color(random(0,255), random(0,255), random(0,255));
    this.x = random(0, width);
    this.y = random(0, height); //needs to be overridden for feathers
    
  }
  void display() {
    fill(this.fillColor);
    ellipse(this.x, this.y, this.size*2, this.size);
  }
  abstract void move();
}