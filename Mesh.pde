class Mesh{
  PVector location;
  PVector velocity;
  float mya;
  float alphavel;
  boolean alphaup = false;
  boolean floating;
  float yval;
  Mesh(float x, float y, float z){
    location = new PVector(x, y, z);
    yval = random(1) * -1 + 2;
    velocity = new PVector(0, yval, 0);
    mya = _mesha;
    alphavel = random(1) + 1;
    floating = false;
  }
  void updateMe(){

  }
  void drawMe(){
    stroke(_cs4.red, _cs4.green, _cs4.blue, mya);
    strokeWeight(1);
    fill(_cs4.red, _cs4.green, _cs4.blue, mya);
    pushMatrix();
    translate(location.x + (_meshsize/2), location.y + (_meshsize/2), location.z + (_meshsize/2));
    box(_meshsize);
    popMatrix();
  }
}