interface Diet {
  boolean canEat(Organism o);
}

class Herbivore implements Diet {
  boolean canEat(Organism o) {
    return o instanceof Plant;
  }
}

class Carnivore implements Diet {
  boolean canEat(Organism o) {
    return o instanceof Animal;
  }
}
