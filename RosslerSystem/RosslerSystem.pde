import peasy.*;

float a = 0.2;
float b = 0.2;
float c = 5.7;
float dt = 0.1;

float x = 2;
float y = 1;
float z = 1;

ArrayList<PVector> points = new ArrayList<PVector>();
PeasyCam jCam;

void setup() {
  size(800, 600, P3D);
  jCam = new PeasyCam(this, 100);  
}

void draw() {
  background(0);
  
  float dx = - y - z;
  float dy = x + a * y;
  float dz = b + z * (x - c);
  x = x + dx * dt;
  y = y + dy * dt;
  z = z + dz * dt;  
 points.add(new PVector(x, y, z));

  translate(0,0, -80);
  stroke(255);
  noFill();

  beginShape();
  for(var v: points) {
    vertex(v.x, v.y, v.z);
      //println(x, y, z);
  }
  endShape();
}
