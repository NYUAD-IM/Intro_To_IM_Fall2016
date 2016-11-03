/*///////////
James Hosken
November 2016

Draw a grid of Hexagons using the 
regular polygons function from processing.org
https://processing.org/examples/regularpolygon.html
////////////*/

void setup(){
  size(1200,800);
}


void draw(){
 float w = 24*2;
 float h = sqrt(3)/2 * 24;

  for(int i = 0; i < width/36; i++){
    for(int j = 0; j < height/8; j++){
      polygon(12+i*36 + (j%2)*18, j*h/2, 12, 6);
    }
  }
}


void polygon(float x, float y, float radius, int npoints) {
  float angle = TWO_PI / npoints;
  
  //Random Gradiented fill
  fill(random(x*255/width,255));
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius;
    float sy = y + sin(a) * radius;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}