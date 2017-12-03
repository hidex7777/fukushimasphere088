class Block{
  PVector location;
  float myw;
  float mya;
  float myr;
  int axis;
  float myrrate;
  FloatList frames;
  //8 corners box
  //1//x,y,z
  //2//x+w,y,z
  //3//x,y,z+d
  //4//x+w,y,z+d
  //5//x,y+h,z
  //6//x+w,y+h,z
  //7//x,y+h,z
  //8//x+w,y+h,z+d
  Block(PVector unitloc, int ax, float r, float w){
    location = new PVector(unitloc.x, unitloc.y, unitloc.z);
    myw = w;
    myr = r;
    mya = _blocka;
    axis = ax;
    frames = new FloatList();
    //float rnoise;
    for(int i = 0; i < myw; i += _blockstep){
      //rnoise = random(myr);
      frames.append(myr + (cos(i * 5) * 15));
    }
  }
  void updateMe(PVector unitloc){
    location.x = unitloc.x;
    location.y = unitloc.y;
    location.z = unitloc.z;
    for(int i = 0; i < frames.size(); i++){
      float noiseseed = random(myr);
      float rnoise = noise(noiseseed) * 20;
      frames.set(i, myr + (cos((frameCount * 0.1) + (i * 0.25))) * 22 + rnoise);
    }
  }
  void drawMe(){
    stroke(_cs2.red, _cs2.green, _cs2.blue, mya);
    strokeWeight(_blockwei);
    int ind = 0;
    if(axis == 0){//←
      for(int i = 0; i < myw; i += _blockstep){
        line(location.x + i + _blockandball, location.y - frames.get(ind), location.z - frames.get(ind), location.x + i + _blockandball, location.y - frames.get(ind), location.z + frames.get(ind));
        line(location.x + i + _blockandball, location.y - frames.get(ind), location.z + frames.get(ind), location.x + i + _blockandball, location.y + frames.get(ind), location.z + frames.get(ind));
        line(location.x + i + _blockandball, location.y + frames.get(ind), location.z + frames.get(ind), location.x + i + _blockandball, location.y + frames.get(ind), location.z - frames.get(ind));
        line(location.x + i + _blockandball, location.y + frames.get(ind), location.z - frames.get(ind), location.x + i + _blockandball, location.y - frames.get(ind), location.z - frames.get(ind));
        ind++;
      }
    }else if(axis == 1){//↑
      for(int i = 0; i < myw; i += _blockstep){
        line(location.x + frames.get(ind), location.y - frames.get(ind), location.z + i + _blockandball, location.x - frames.get(ind), location.y - frames.get(ind), location.z + i + _blockandball);
        line(location.x - frames.get(ind), location.y - frames.get(ind), location.z + i + _blockandball, location.x - frames.get(ind), location.y + frames.get(ind), location.z + i + _blockandball);
        line(location.x - frames.get(ind), location.y + frames.get(ind), location.z + i + _blockandball, location.x + frames.get(ind), location.y + frames.get(ind), location.z + i + _blockandball);
        line(location.x + frames.get(ind), location.y + frames.get(ind), location.z + i + _blockandball, location.x + frames.get(ind), location.y - frames.get(ind), location.z + i + _blockandball);
        ind++;
      }
    }else if(axis == 2){//→
      for(int i = 0; i < myw; i += _blockstep){
        line(location.x - i - _blockandball, location.y - frames.get(ind), location.z + frames.get(ind), location.x - i - _blockandball, location.y - frames.get(ind), location.z - frames.get(ind));
        line(location.x - i - _blockandball, location.y - frames.get(ind), location.z - frames.get(ind), location.x - i - _blockandball, location.y + frames.get(ind), location.z - frames.get(ind));
        line(location.x - i - _blockandball, location.y + frames.get(ind), location.z - frames.get(ind), location.x - i - _blockandball, location.y + frames.get(ind), location.z + frames.get(ind));
        line(location.x - i - _blockandball, location.y + frames.get(ind), location.z + frames.get(ind), location.x - i - _blockandball, location.y - frames.get(ind), location.z + frames.get(ind));
        ind++;
      }
    }else if(axis == 3){//↓
      for(int i = 0; i < myw; i += _blockstep){
        line(location.x + frames.get(ind), location.y - frames.get(ind), location.z - i - _blockandball, location.x - frames.get(ind), location.y - frames.get(ind), location.z - i - _blockandball);
        line(location.x - frames.get(ind), location.y - frames.get(ind), location.z - i - _blockandball, location.x - frames.get(ind), location.y + frames.get(ind), location.z - i - _blockandball);
        line(location.x - frames.get(ind), location.y + frames.get(ind), location.z - i - _blockandball, location.x + frames.get(ind), location.y + frames.get(ind), location.z - i - _blockandball);
        line(location.x + frames.get(ind), location.y + frames.get(ind), location.z - i - _blockandball, location.x + frames.get(ind), location.y - frames.get(ind), location.z - i - _blockandball);
        ind++;
      }
    }
  }
}

    //beginShape(QUADS);//上面
    //vertex(location.x, location.y, location.z);
    //vertex(location.x + myw, location.y, location.z);
    //vertex(location.x + myw, location.y, location.z + myd);
    //vertex(location.x, location.y, location.z + myd);
    //endShape();
    
    //beginShape(QUADS);//下面
    //vertex(location.x, location.y + myh, location.z);
    //vertex(location.x + myw, location.y + myh, location.z);
    //vertex(location.x + myw, location.y + myh, location.z + myd);
    //vertex(location.x, location.y + myh, location.z + myd);
    //endShape();
    
    //beginShape(QUADS);//向こう面
    //vertex(location.x, location.y, location.z);
    //vertex(location.x + myw, location.y, location.z);
    //vertex(location.x + myw, location.y + myh, location.z);
    //vertex(location.x, location.y + myh, location.z);
    //endShape();
    
    //beginShape(QUADS);//手前面
    //vertex(location.x, location.y, location.z + myd);
    //vertex(location.x + myw, location.y, location.z + myd);
    //vertex(location.x + myw, location.y + myh, location.z + myd);
    //vertex(location.x, location.y + myh, location.z + myd);
    //endShape();
    
    //beginShape(QUADS);//左面
    //vertex(location.x, location.y, location.z);
    //vertex(location.x, location.y + myh, location.z);
    //vertex(location.x, location.y + myh, location.z + myd);
    //vertex(location.x, location.y, location.z + myd);
    //endShape();
    
    //beginShape(QUADS);//右面
    //vertex(location.x + myw, location.y, location.z);
    //vertex(location.x + myw, location.y + myh, location.z);
    //vertex(location.x + myw, location.y + myh, location.z + myd);
    //vertex(location.x + myw, location.y, location.z + myd);
    //endShape();