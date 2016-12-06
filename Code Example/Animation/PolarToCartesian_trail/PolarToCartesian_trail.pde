/*
Creative Coding for Artist Workshop by Liu Chang
 12.10.2016 @Fou Gallery, Brooklyn, New York
 
 Below is a code example for the exercise section.
 Only for education purpose.
 
 www.fougallery.com
 www.liuchang.work
 
 
 * Formula
 * Convert a polar coordinate (r,theta) to cartesian (x,y):  
 * x = r * cos(theta)
 * y = r * sin(theta)
 */
 
float r;
float theta;


void setup() {
  size(800, 800);
  background(255);
  // Initialize all values
  r = height * 0.45;
  theta = -180;
}

void draw() {
  
  //background(255);
  noStroke();
  //fill(255,50);
  //rect(0,0,width,height);
    
  // Translate the origin point to the center of the screen
  translate(width/2, height/2);
  
  // Convert polar to cartesian
  float x = r * cos(theta);
  float y = r * sin(theta);
  
  // Draw the ellipse at the cartesian coordinate
  ellipseMode(CENTER);
  fill(155,255,175);
  stroke(155,255,175);
  strokeWeight(1);
  line(0,0,x/2,y/2);
  //stroke(255,155,175);
  line(0,0,x/3,y/3);
  //ellipse(mouseX, mouseY, 3, 3);
  ellipse(x, y, 5, 5);
  
  // Increase the angle over time
  theta += 0.02;
  

}