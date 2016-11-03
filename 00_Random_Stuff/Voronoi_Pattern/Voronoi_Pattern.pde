/*////////
James Hosken
November 2016

Simple example of voronoi pattern
from randomly distributed points
Uses Mesh library
/////////*/

import megamu.mesh.*;

float[][] points = new float[500][2];
Voronoi myVoronoi;
MPolygon[] myRegions;

void setup(){
  size(500,500);
  
  for (int i = 0; i < points.length; i++){
    points[i][0] = random(0, width);
    points[i][1] = random(0, height);
  }
  
  myVoronoi = new Voronoi( points );
  myRegions = myVoronoi.getRegions();
}

void draw(){
  for(int i=0; i<myRegions.length; i++){
    // an array of points
    float[][] regionCoordinates = myRegions[i].getCoords();
  
    fill(255,0,0);
    myRegions[i].draw(this); // draw this shape
  }
}

void reset(){
  for (int i = 0; i < points.length; i++){
    points[i][0] = random(0, width);
    points[i][1] = random(0, height);
  }
  
  myVoronoi = new Voronoi( points );
  myRegions = myVoronoi.getRegions();
}

void mousePressed(){
  reset();
}