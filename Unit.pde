class Unit{
  PVector location, velocity;
  ArrayList<Ball> _ball = new ArrayList<Ball>();
  ArrayList<Block> _block = new ArrayList<Block>();
  ArrayList<Stick> _stick = new ArrayList<Stick>();
  int axis;
  float myr, myw;
  Unit(float x, float y, float z, float r, float w, int ax){
    location = new PVector(x, y, z);
    float xv = random(5);
    float yv = random(5);
    float zv = random(5);
    velocity = new PVector(xv, yv, zv);
    axis = ax;//0←true、1↑false、2→true、3↓false
    myr = r;
    myw = w;
    _ball.add(new Ball(location.x, location.y, location.z, myr));
    //Block(float x, float y, float z, float w, float h, float d)
    _block.add(new Block(location, axis, myr, myw));
    _stick.add(new Stick(location, axis, myr, myw));
  }
  void updateMe(){
    location.add(velocity);
    if((location.x < 0) || (location.x > _dimensionsize)){
      velocity.x *= -1;
    }
    if((location.y < 0) || (location.y > (_dimensionsize - myr - myr))){
      velocity.y *= -1;
    }
    if((location.z < 0) || (location.z > _dimensionsize)){
      velocity.z *= -1;
    }
    for(Ball bl: _ball){
      bl.updateMe(location);
    }
    for(Stick st: _stick){
      st.updateMe(location);
    }
    for(Block bk: _block){
      bk.updateMe(location);
    }
  }
  void drawMe(){
    for(Ball bl: _ball){
      bl.drawMe();
    }
    for(Block bk: _block){
      bk.drawMe();
    }
    for(Stick st: _stick){
      st.drawMe();
    }
  }
}