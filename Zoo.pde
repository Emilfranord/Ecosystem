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

class Cabbage extends Plant {
  Cabbage(color _leaf, int _size, PVector _position) {
    super( _leaf, _size, _position);
  }

  Cabbage(int _size, PVector _position) {
    this(color(#418F2D), _size, _position );
  }

  Cabbage( PVector _position) {
    this(color(#418F2D), 4, _position );
  }
}

class RedCabbage extends Cabbage {
  RedCabbage(PVector _position) {
    super(color(#814256), 4, _position);
  }
}
