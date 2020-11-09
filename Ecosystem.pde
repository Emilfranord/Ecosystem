void setup() {
}

void draw() {
}

interface Render {
  void render();
  PVector getPosition();
}

interface Organism extends Render {
  int getEnergy();
  void update();

  void interaction(Organism o);
}


class Horse extends Animal {
}
