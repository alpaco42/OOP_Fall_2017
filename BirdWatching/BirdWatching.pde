SoaringBird[] soaringBirds;
FlittingBird[] flittingBirds;
FallingFeather[] feathers;
void setup() {
  noStroke();
  size(600, 400);
  soaringBirds = new SoaringBird[5];
  for (int i = 0; i < soaringBirds.length; i++) {
    soaringBirds[i] = new SoaringBird();
  }
  flittingBirds = new FlittingBird[5];
  for (int i = 0; i < flittingBirds.length; i++) {
    flittingBirds[i] = new FlittingBird();
  }
  feathers = new FallingFeather[10];
  for (int i = 0; i < feathers.length; i++) {
    feathers[i] = new FallingFeather();
  }
}
void draw() {
  background(173,216,230); 
  for (SoaringBird element: soaringBirds) {
    element.move();
    element.display();
  }
  for (FlittingBird element: flittingBirds) {
    element.move();
    element.display();
  }
  for (FallingFeather element: feathers) {
    element.move();
    element.display();
  }
}