ArrayList <Render> rendered = new ArrayList<Render>();

void setup() {
  size(500, 500);

  rendered.add(new Plant(10, new PVector(100, 70)));
  rendered.add(new Animal(color(#ffa500), 10, new PVector(100, 100)));
  rendered.add(new Plant(10, new PVector(100, 40)));
  rendered.add(new Wolf(7, new PVector(120, 40) ));
  rendered.add(new Wolf(7, new PVector(130, 40) ));
  rendered.add(new Wolf(7, new PVector(140, 40) ));
  rendered.add(new Wolf(7, new PVector(150, 40) ));
  rendered.add(new Horse(20, new PVector(160, 55)));
  rendered.add(new Horse(20, new PVector(170, 55)));
  rendered.add(new Horse(20, new PVector(160, 65)));
  rendered.add(new Horse(20, new PVector(160, 75)));
  rendered.add(new RedCabbage(new PVector(250,90)));
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
  
  rendered = removeDead(rendered);
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

boolean collision(Organism alpha, Organism beta) {
  return PVector.dist(alpha.getPosition(), beta.getPosition()) <= (alpha.getSize() / 2) + (beta.getSize()/ 2);
}


// Adam thinks this is bad code
ArrayList <Render> removeDead(ArrayList <Render> input) {
  ArrayList <Render> temp = new ArrayList<Render>(input.size());

  for (Render q : input) {
    if (q.getSize() > 0) {
      temp.add(q);
    }
  }
  return temp;
}
