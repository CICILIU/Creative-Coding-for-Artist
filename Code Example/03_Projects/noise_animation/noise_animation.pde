/*
Creative Coding for Artist Workshop by Liu Chang
 12.10.2016 @Fou Gallery, Brooklyn, New York
 
 Below is a code example for the exercise section.
 Only for education purpose.
 
 www.fougallery.com
 www.liuchang.work
 
*/
void setup() {
  size(800, 800, P3D);
  background(0);
  frameRate(30);
  smooth(20);
}

void draw() {
  background(0);
  // it's need to continue to use map+noise function
  float xstart = noise((mouseX/5));
  float ynoise = noise((mouseY/5));

  //float xstart = tan((mouseX/10));
  //float ynoise = sin((mouseY/10));

  translate(width/2, height/2);
  for (float y = -(height/8); y<=(height/8); y+=3) {

    ynoise+=0.02;//change back to 0.02
    float xnoise = xstart;
    for (float x = -(width/8); x<=(width/8); x+=3) {

      xnoise +=0.06;//change back to 0.02
      drawPoint(x, y, noise(xnoise, ynoise));
    }
  }
}

void drawPoint(float x, float y, float noiseFactor) {

  pushMatrix();
  translate(x*noiseFactor*4, y*noiseFactor*4, -y);
  float edgeSize = noiseFactor*10;
  //fill(random(0, 255), random(0, 255), random(0, 255));
  ellipse(0, 0, edgeSize, edgeSize);
  popMatrix();
}