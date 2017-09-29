class Ball {
  float x_v;
  float y_v;
  float x_p;
  float y_p;

  Ball(float x_vel, float y_vel, float x_pos, float y_pos) {
    x_v = x_vel;
    y_v = y_vel;
    x_p = x_pos;
    y_p = y_pos;
  }

  void update(){
    this.x_p += x_v;
    this.y_p += y_v;
  }

  void x_bounce(){
    this.x_v *= -1;
  }

  void y_bounce(){
    this.y_v *= -1;
  }

  void circle_bounce(){

  }

}

Ball b;
int time = 0;

void setup() {
  frameRate(400);
  size(400, 400);
  mousePressed();
  stroke(255);
  b = new Ball(0.2,0.7,200,0);
  }


void draw() {
  ellipse(b.x_p, b.y_p, 5, 5);
  b.update();
  if (hit_circle(b.x_p, b.y_p)) {
    b.circle_bounce();
  }
  else{
    if (b.x_p <= 0 || b.x_p >= width){
      b.x_bounce();
    }
    if (b.y_p <= 0 || b.y_p >= height){
      b.y_bounce();
    }
  }
  //println(b.x_p, b.y_p);
  //println(millis() - time);
  time = millis();
}


boolean hit_circle(float x,float y){
  if (pow(pow(x-200,2) + pow(y-200,2),0.5) < 40) {
    return true;
  }
  return false;
}
void mousePressed() {
  background(0, 0, 255);
  fill(255,255,0);
  ellipse(width/2,height/2, 40, 40);
}
