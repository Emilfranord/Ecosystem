class Carcass implements Organism {

  PVector position;
  color hideColor;
  int size;
  int energy;
  float speed;

  Carcass() {
  }

  Carcass(Organism o) {
    if (o instanceof Animal) {
      Animal A = (Animal) o;
      this.hideColor = color(#82160e);
      this.size = A.size;
      this.position = A.position;
      speed = 0;
    }
  }

  void render() {
    fill(hideColor);
    circle(getPosition().x, getPosition().y, size);
    fill(0);
  }

  PVector getPosition() {
    return this.position;
  }

  int getSize() {
    return this.size;
  }

  int getEnergy() {
    return this.energy;
  }

  void update() {
  }

  void interaction(Organism o){
    //TODO: implement this.
  
  }

  Diet getDiet() {
    return new Sunlight();
  }
}
