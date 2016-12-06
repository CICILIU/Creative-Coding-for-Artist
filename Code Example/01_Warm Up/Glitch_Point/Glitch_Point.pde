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
}

void draw() {

  for (int x = 0; x < width; x++) {
    for (int y = 0; y < height; y++) {
      stroke(255, random(0, 255), 0);
      point(x, y);
    }
  }
}