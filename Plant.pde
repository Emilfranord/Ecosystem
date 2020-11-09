class Plant implements Organism {
  int size;
  color leafColor;
  PVector position;
  int energy;
  
  void render(){
    fill(leafColor);
    circle(getPosition().x, getPosition().y, size);
    fill(0);
  }
  
  PVector getPosition(){
    return position;
  }

  int getEnergy(){
    return energy;
  }
  void update(){}

  void interaction(Organism o){}
}
