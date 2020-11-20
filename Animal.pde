class Animal implements Organism {
  PVector position;
  color hideColor;
  int size;
  int energy;
  Diet food;
  float speed;

  Animal(color _hide, int _size, PVector _position) {
    this.hideColor = _hide;
    this.size = _size;
    this.position = _position;
    speed = 2;
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

  int getSize() {
    return size;
  }

  float getSpeed() {
    return speed;
  }

  void setSpeed(float _sp) {
    this.speed = _sp;
  }


  void update() {
    move();
  }

  private void move() {
    // refractor this into a interface with classes  
    //position.add(PVector.random2D());
    position.add(PVector.random2D().mult(this.getSpeed()));
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
    if (_o instanceof Animal) {
      Animal A = (Animal) _o;
      
      
    }
  }
}
