// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

class Attractor extends VerletParticle2D {

  float r;

  Attractor (Vec2D loc) {
    super (loc);
    r = 24;
    physics.addParticle(this);
    //width is the radis of the attaction
    physics.addBehavior(new AttractionBehavior(this, width, 0.1));//change back to width
  }

  void display () {
    fill(243,215,51);
    //stroke(20,110,100,100);
    noStroke();
    //ellipse (x, y, r*10, r*10);
    //fill(15,13,194,50);
    //ellipse (x, y, r*10.5, r*10.5);
    ellipse (x, y, r*15, r*15);
  }
}