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

class Sunlight implements Diet {
  boolean canEat(Organism o) {
    return false;
  }
}

class Scavenger implements Diet {
  boolean canEat(Organism o) {
    return o instanceof Carcass;// && o.dead
  }
}

class Omnivore implements Diet {
  boolean canEat(Organism o) {
    return o instanceof Animal || o instanceof Plant;
  }
}
