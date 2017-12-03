class Stick{
  PVector location;
  int axis;
  float mya;
  float myr;
  float myw;
  int stickln, stickw;
  Stick(PVector unitloc, int ax, float r, float w){
    location = new PVector(unitloc.x, unitloc.y, unitloc.z);
    axis = ax;
    mya = _sticka;
    myr = r;
    myw = w;
    stickln = _sticklen;
    stickw = _stickwei;
  }
  void updateMe(PVector newloc){
    location.x = newloc.x;
    location.y = newloc.y;
    location.z = newloc.z;
  }
  void drawMe(){
    strokeWeight(stickw);
    stroke(_cs3.red, _cs3.green, _cs3.blue, mya);
    if(axis == 0){//←
      line(location.x - stickln, location.y, location.z, location.x + myw + stickln + _blockandball, location.y, location.z);
    }else if(axis == 1){//↑
      line(location.x, location.y, location.z - stickln, location.x, location.y, location.z + myw + stickln + _blockandball);
    }else if(axis == 2){//→
      line(location.x + stickln, location.y, location.z, location.x - myw - stickln - _blockandball, location.y, location.z);
    }else if(axis == 3){//↓
      line(location.x, location.y, location.z + stickln, location.x, location.y, location.z - myw - stickln - _blockandball);
    }else{
      println("error");
    }
    
  }
}

//beginShape(QUADS);//上面
      //vertex(location.x + myr - 2.5, location.y + myr - 2.5, location.z - 100);
      //vertex(location.x + myr + 2.5, location.y + myr - 2.5, location.z - 100);
      //vertex(location.x + myr + 2.5, location.y + myr - 2.5, location.z + myw + 100);
      //vertex(location.x + myr - 2.5, location.y + myr - 2.5, location.z + myw + 100);
      //endShape();
      
      //beginShape(QUADS);//下面
      //vertex(location.x + myr - 2.5, location.y + myr + 2.5, location.z - 100);
      //vertex(location.x + myr + 2.5, location.y + myr + 2.5, location.z - 100);
      //vertex(location.x + myr + 2.5, location.y + myr + 2.5, location.z + myw + 100);
      //vertex(location.x + myr - 2.5, location.y + myr + 2.5, location.z + myw + 100);
      //endShape();
      
      //beginShape(QUADS);//向こう面
      //vertex(location.x + myr - 2.5, location.y + myr - 2.5, location.z - 100);
      //vertex(location.x + myr + 2.5, location.y + myr + 2.5, location.z - 100);
      //vertex(location.x + myr + 2.5, location.y + myr + 2.5, location.z - 100);
      //vertex(location.x + myr - 2.5, location.y + myr - 2.5, location.z - 100);
      //endShape();
      
      //beginShape(QUADS);//手前面
      //vertex(location.x + myr - 2.5, location.y + myr - 2.5, location.z + myw + 100);
      //vertex(location.x + myr + 2.5, location.y + myr - 2.5, location.z + myw + 100);
      //vertex(location.x + myr + 2.5, location.y + myr + 2.5, location.z + myw + 100);
      //vertex(location.x + myr - 2.5, location.y + myr + 2.5, location.z + myw + 100);
      //endShape();
      
      //beginShape(QUADS);//左面
      //vertex(location.x + myr - 2.5, location.y + myr - 2.5, location.z - 100);
      //vertex(location.x + myr - 2.5, location.y + myr - 2.5, location.z + myw + 100);
      //vertex(location.x + myr - 2.5, location.y + myr + 2.5, location.z + myw + 100);
      //vertex(location.x + myr - 2.5, location.y + myr + 2.5, location.z - 100);
      //endShape();
      
      //beginShape(QUADS);//右面
      //vertex(location.x + myr + 2.5, location.y + myr - 2.5, location.z - 100);
      //vertex(location.x + myr + 2.5, location.y + myr + 2.5, location.z + myw + 100);
      //vertex(location.x + myr + 2.5, location.y + myr + 2.5, location.z + myw + 100);
      //vertex(location.x + myr + 2.5, location.y + myr - 2.5, location.z - 100);
      //endShape();