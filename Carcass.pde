class Carcass implements Organism {

  Carcass(){}
  
  Carcass(Organism o){
    
  }
  
  void render();
  PVector getPosition();
  int getSize();

  int getEnergy();
  void update();

  void interaction(Organism o);
  Diet getDiet();
}
