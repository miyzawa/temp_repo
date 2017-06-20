PImage tex;
PImage tex2;

float rotx = PI/4;
float roty = PI/4;

void setup() {
  size(640, 360, P3D);
  tex = loadImage("dfb5cc6b.png");
  tex2 = loadImage("berlin-1.jpg");

  textureMode(NORMAL);
  //textureMode(IMAGE);
  fill(255);
  stroke(color(44,48,32));
}

void draw() {
  background(0);
  
  lights();
  
  noStroke();
  translate(width/2.0, height/2.0, -100);
  
  rotateX(rotx);
  rotateY(roty);
  
  pushMatrix();
  translate(0, 0, -300);
  scale(800, 500, 1);
  texture_back(tex2);
  popMatrix();
  
  pushMatrix();
  scale(90);
  TexturedCube(tex);
  popMatrix();
  
  pushMatrix();
  translate(0, 260);
  scale(90);
  polyCube();
  popMatrix();
}

void mouseDragged() {
  float rate = 0.01;
  rotx += (pmouseY-mouseY) * rate;
  roty += (mouseX-pmouseX) * rate;
}