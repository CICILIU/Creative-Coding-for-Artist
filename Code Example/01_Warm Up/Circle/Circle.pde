/*
Creative Coding for Artist Workshop by Liu Chang
 12.10.2016 @Fou Gallery, Brooklyn, New York
 
 Below is a code example for the exercise section.
 Only for education purpose.
 
 www.fougallery.com
 www.liuchang.work
 
*/

void setup() { 
  size(400, 400);
  background(0);
  for (int i = 0; i < 10; i++) {
    //fill(190-i*20);
    fill(190 - i * 20,200 - i * 10,190 - i * 30);
    noStroke();
    ellipse(width/2, height/2, 300 - i * 30, 300 - i * 30);
  }
} 