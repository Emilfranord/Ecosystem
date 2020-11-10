ArrayList <Render> rendered = new ArrayList<Render>();

void setup() {
  size(500, 500);

  rendered.add(new Plant(10, new PVector(100, 70)));
  rendered.add(new Animal(color(#ffa500), 10, new PVector(100, 100)));
  //rendered.add(new Plant(10, new PVector(100, 40)));
  rendered.add(new Wolf(7, new PVector(120, 40) ));
  rendered.add(new Horse(20, new PVector(100, 55)));
}

void draw() {
  background(#8b4513);
  for (Render q : rendered) { // render everything that can be rendered, then handle living things like that.
    q.render();
    if (q instanceof Organism) { // all organism are treated as sutch
      Organism p = (Organism) q;
      p.update();
      for (Render r : rendered) { // go thrue all elements in the array, and make them interact with oneanother. They do not interact with themselves.
        if (r instanceof Organism && q!=r) {
          Organism s = (Organism) r;
          p.interaction(s);
        }
      }
    }
  }
}

interface Render {
  void render();
  PVector getPosition();
  int getSize();
}

interface Organism extends Render {
  int getEnergy();
  void update();

  void interaction(Organism o);
  Diet getDiet();
}


class Horse extends Animal {
  Horse(int _size, PVector _position) {
    super(color(#8E7618), _size, _position);
    this.setDiet(new Herbivore());
  }
}

class Wolf extends Animal {
  Wolf(int _size, PVector _position) {
    super(color(#d3d3d3), _size, _position);
    this.setDiet(new Carnivore());
  }
}

boolean collision(Organism alpha, Organism beta) {
  return PVector.dist(alpha.getPosition(), beta.getPosition()) <= (alpha.getSize() / 2) + (beta.getSize()/ 2);
}




ArrayList <Render> removeDead(ArrayList <Render> input) {
  ArrayList <Render> temp = new ArrayList<Render>();

  for (Render q : input) {
    if (!dead) {
      temp.add(q);
    }
  }

  return temp;
}
