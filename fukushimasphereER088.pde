//Unitのxyzはボールの中心点
//そこからaxisによって東西南北にブロックとスティックをつくる
//ブロックの枠はオブジェクト（アレイリスト）で、それぞれ独自に大きさを変える
//となりの枠の大きさに影響される
//Object modeling
//Unit
//date
int _y = year();
int _mo = month();
int _d = day();
int _h = hour();
int _mi = minute();
int _s = second();
//color
ColorScheme _cs1 = new ColorScheme("dp2");//ball
ColorScheme _cs2 = new ColorScheme("Bk");//block
ColorScheme _cs3 = new ColorScheme("Bk");//stick
ColorScheme _cs4 = new ColorScheme("W");//mesh
ColorScheme _cs5 = new ColorScheme("gy9.5");//background
int _dlc = 100;//directionalLight
int _alc = 190;//ambientLight
int _sticka = 160;//alpha
int _balla = 180;
int _blocka = 160;
int _mesha = 100;
//setting
float _meshsize = 100;
float _dimensionsize = 2000;
int _ballsize = 200;
int _sticklen = 150;
int _stickwei = 2;
int _unitnum = 9;
int _blockwei = 2;
int _blockstep = 25;
float _ballratio = 0.9;
int _blockandball = 200;
//camera setting
float cameraradius = 930;
float eyex = _dimensionsize/2 + cameraradius;
float eyey = 1;
float eyez = _dimensionsize/2 + cameraradius;
float centerx = _dimensionsize/2;
float centery = 1500;
float centerz = _dimensionsize/2;
float eyeyvel = 1.5;
float rotatevel = 0.3;
//global
ArrayList<Mesh> _mesh = new ArrayList<Mesh>();
ArrayList<Unit> _unit = new ArrayList<Unit>();

void setup(){
  size(720, 720, P3D);
  pixelDensity(displayDensity());
  smooth();
  frameRate(60);
  drawMesh();
  drawUnit();
}

void draw(){
  background(_cs5.red, _cs5.green, _cs5.blue);
  directionalLight(_dlc + 10, _dlc + 20, _dlc, 0, -1, 0);//y軸上に
  directionalLight(_dlc + 20, _dlc + 20, _dlc + 10, 0, 1, 0);//y軸下に
  directionalLight(_dlc, _dlc, _dlc + 20, 1, 0, 0);//x軸右に
  directionalLight(_dlc + 20, _dlc + 10, _dlc, 0, 0, -1);//z軸奥に
  ambientLight(_alc, _alc, _alc + 10);
  eyex = (_dimensionsize/2) + cameraradius * cos(radians(frameCount * rotatevel));
  eyez = (_dimensionsize/2) + cameraradius * sin(radians(frameCount * rotatevel));
  eyey = eyey + eyeyvel;
  if((eyey < 1)||(eyey > 1999)){
    eyeyvel *= -1;
  }
  for(Mesh ms: _mesh){
    ms.drawMe();
  }
  for(Unit un: _unit){
    un.updateMe();
    un.drawMe();
  }
  camera(eyex, eyey, eyez, centerx, centery, centerz, 0, 1, 0);
}
void mouseReleased(){
  saveFrame("output/fukusph" + _y + _mo + _d + _h + _mi + _s + "#######.jpg");
}
void drawMesh(){
  //底面 y = _dimensionsize
  for(float z = 0; z < _dimensionsize; z += _meshsize){
    for(float x = 0; x < _dimensionsize; x += _meshsize){
      _mesh.add(new Mesh(x, _dimensionsize, z));
    }
  }
  //北面 z = 0
  for(float y = 0; y < _dimensionsize; y += _meshsize){
    for(float x = 0; x < _dimensionsize; x += _meshsize){
      _mesh.add(new Mesh(x, y, 0));
    }
  }
  //東面 x = _dimensionsize
  for(float z = 0; z < _dimensionsize; z += _meshsize){
    for(float y = 0; y < _dimensionsize; y += _meshsize){
      _mesh.add(new Mesh(_dimensionsize, y, z));
    }
  }
  //南面 z = _dimensionsize
  for(float y = 0; y < _dimensionsize; y += _meshsize){
    for(float x = 0; x < _dimensionsize; x += _meshsize){
      _mesh.add(new Mesh(x, y, _dimensionsize));
    }
  }
  //西面 x = 0
  for(float z = 0; z < _dimensionsize; z += _meshsize){
    for(float y = 0; y < _dimensionsize; y += _meshsize){
      _mesh.add(new Mesh(0, y, z));
    }
  }
}
void drawUnit(){
  for(int i = 0; i < _unitnum; i++){
    int x = floor(random(1700)) + 100; 
    int y = floor(random(1500)); 
    int z = floor(random(1700)) + 100; 
    //widthはUnitの奥行き（Stick除く）
    int w = floor(random(900)) + 400;
    //rはボールの半径とブロックの大きさ
    int r = floor(random(_ballsize)) + 10;
    int ax = floor(random(4));
    _unit.add(new Unit(x, y, z, r, w, ax));
  }
}