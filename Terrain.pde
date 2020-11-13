interface Terrain extends Render {
  PVector[] getPolygon();
}


class Land implements Terrain {
  PVector[] polygon;
  
  PVector[] getPolygon(){
    return polygon;
  }
  
  void render(){}
  
  PVector getPosition(){
    return null;
  }
  
}

class Water implements Terrain {
}

class Air implements Terrain {
  
  
}

interface Movement {
  boolean canMoveTo(PVector futurePosition);
}


class Walker implements Movement {
}

class Swimmer implements Movement {
}

class Flyer implements Movement {}



boolean inPolygon(PVector point, PVector[] polygon){
  // https://stackoverflow.com/questions/8721406/how-to-determine-if-a-point-is-inside-a-2d-convex-polygon
  return false;
}
