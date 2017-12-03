class Ball{
  PVector location, velocity;
  float myr;
  float mya;
  //float alphavel, rnoise, rseed;
  //PVector[][] dots = new PVector[_dotsnum][3];
  Ball(float x, float y, float z, float r){
    myr = r;
    mya = _balla;
    location = new PVector(x, y, z);
  }
  void updateMe(PVector unitl){
    location.x = unitl.x;
    location.y = unitl.y;
    location.z = unitl.z;
  }
  void drawMe(){
    noStroke();
    fill(_cs1.red, _cs1.green, _cs1.blue, mya);
    pushMatrix();
    translate(location.x, location.y, location.z);
    sphere(myr * _ballratio);
    popMatrix();
  }
}