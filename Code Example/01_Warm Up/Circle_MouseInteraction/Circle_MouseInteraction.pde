/*
Creative Coding for Artist Workshop by Liu Chang
 12.10.2016 @Fou Gallery, Brooklyn, New York
 
 Below is a code example for the exercise section.
 Only for education purpose.
 
 www.fougallery.com
 www.liuchang.work
 
 */

void setup() { 
  size(500, 500);
  background(255);
  smooth(30);
} 

void draw() {
  for (int i = 0; i < 10; i++) {
    //fill(190-i*20);
    fill(mouseX - i * 20, mouseY - i * 10, mouseX - i * 30);
    noStroke();
    ellipse(width/2, height/2, 400 - i * 30, 400 - i * 30);
    //rectMode(CENTER);
    //rect(width/2, height/2, 500 - i * 50, 500 - i * 50);
  }
}