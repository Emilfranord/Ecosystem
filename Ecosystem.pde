ArrayList <Render> rendered = new ArrayList<Render>();

void setup() {
  size(500, 500);

  rendered.add(new Plant(10, new PVector(100, 70)));
  rendered.add(new Animal(color(#ffa500), 10, new PVector(100, 100) ));
}

void draw() {
  background(#8b4513);
  for (Render q : rendered) { // render everything that can be rendered, then handle living things like that.
    q.render();
    if (q instanceof Organism) {
      Organism p = (Organism) q;
      p.update();
    }
  }
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


//class Horse extends Animal {
//}
