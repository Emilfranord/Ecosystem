class Plant implements Organism {
  int size;
  color leafColor;
  PVector position;

  Plant(color _leaf, int _size, PVector _position) {
    this.leafColor = _leaf;
    this.size = _size;
    this.position = _position;
  
  

  Plant(int _size, PVector _position) {
    this(color(#00ff00), _size, _position );
  }

  void render() {
    fill(leafColor);
    circle(getPosition().x, getPosition().y, size);
    fill(0);
  }

  PVector getPosition() {
    return position;
  }

  int getEnergy() {
    return size;
  }
  
  void update() {
    // plant grows over time
    if(frameCount % 500 ==0){
      size++;
    } 
  }

  void interaction(Organism o) {
    if(o.food instanceof Herbivore){
      size--;
    }
    
  }
}
