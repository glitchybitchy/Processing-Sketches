 import glitchP5.*;
 int rotzfactor = 0;
 
 GlitchP5 glitchP5;

void setup () {
  size(800, 600, P3D);
  glitchP5 = new GlitchP5(this);

}

void draw () {
  
  
  float rotx = (mouseY/360.0)*-2*PI+PI;
  float roty = (mouseX/420.0)*2*PI-PI;
  float rotz = rotzfactor*PI/36;

  float value = mouseX;
  float m = map(value,0,width,0,255);
  
  background (255);
  smooth();
 

  pushMatrix();
  
    translate((width/2 +20), height/2, 0);
    rotateY(rotx);
    rotateX(roty);
    rotateZ(rotz);
    box (300); 
    //noFill();
    fill(0);
    stroke(0);
    strokeWeight(5);
    
  popMatrix();
  
  pushMatrix();
  
    translate(width/3, height/2, 0);
    rotateY(-rotx);
    rotateX(-roty);
    rotateZ(-rotz);
    box (200);
    noFill(); 
    strokeWeight(10);
  
  popMatrix();
  
  glitchP5.run(); // this needs to be at the end of draw(). anything after it will not be drawn to the screen
}


void mousePressed()
{
  blendMode(BLEND);
  glitchP5.glitch(400, 0, 0, 0, 800, 1200, 3, 1.0f, 10, 20);
  

}


