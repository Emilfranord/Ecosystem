class Animal implements Organism {
  PVector position;
  color hideColor;
  int size;
  int energy;
  Diet food;
  Movement movement; 

  Animal(color _hide, int _size, PVector _position) {
    this.hideColor = _hide;
    this.size = _size;
    this.position = _position;
  }

  void render() {
    fill(hideColor);
    circle(getPosition().x, getPosition().y, size);
    fill(0);
  }

  PVector getPosition() {
    return position;
  }

  int getEnergy() {
    return energy;
  }

  Diet getDiet() {
    return food;
  }

  void setDiet(Diet d) {
    food = d;
  }

  Movement getMovement() {
    return this.movement;
  }

  int getSize() {
    return size;
  }


  void update() {
    move();
  }

  private void move() {
    PVector temp = PVector.random2D();

    if (this.getMovement().canMoveTo(temp)) {
      position.add(temp);
    }
  }


  void interaction(Organism o) {
    if (collision(this, o)) {
      if (o.getDiet() instanceof Carnivore && this.getDiet() instanceof Carnivore) {
        this.attack(o);
      } else if (this.getDiet().canEat(o)) {
        size+= 0.1;
      } else if (o.getDiet() instanceof Carnivore) {
        size--;
      }
    }
  }

  void attack(Organism _o) {
    Animal o = (Animal) _o;
  }
}
