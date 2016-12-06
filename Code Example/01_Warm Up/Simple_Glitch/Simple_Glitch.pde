/*
Creative Coding for Artist Workshop by Liu Chang
 12.10.2016 @Fou Gallery, Brooklyn, New York
 
 Below is a code example for the exercise section.
 Only for education purpose.
 
 www.fougallery.com
 www.liuchang.work
 
*/
void setup() { 
  size(800, 800);
  background(220);
  noStroke();

  for (int i = 0; i < height; i+=20) {
    for (int j = 0; j < width; j+=20) {
      fill(random(255), random(255), random(255), random(255));
      rect(j, i, 20, 20);
    }
  }
}