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
