/*
Creative Coding for Artist Workshop by Liu Chang
 12.10.2016 @Fou Gallery, Brooklyn, New York
 
 Below is a code example for the exercise section.
 Only for education purpose.
 
 www.fougallery.com
 www.liuchang.work
 
*/

import toxi.geom.*;
import toxi.physics2d.*;
import toxi.physics2d.behaviors.*;

ArrayList<Particle> particles;
Attractor attractor;

VerletPhysics2D physics;

void setup () {
  size (850, 850);
  //noCursor();
  physics = new VerletPhysics2D ();
  physics.setDrag (0.01);
  
  particles = new ArrayList<Particle>();
  for (int i = 0; i < 200; i++) {
    particles.add(new Particle(new Vec2D(random(width),random(height))));
  }
  
  attractor = new Attractor(new Vec2D(width/2,height/2));
}


void draw () {
  //background (16,45,82);  
  fill(218,5,64,125);
  rect(0,0,width,height/2);
  fill(0,31,137,125);
  rect(0,height/2,width,height/2);
  physics.update ();

  attractor.display();
  for (Particle p: particles) {
    p.display();
  }
  
  if (mousePressed) {
    attractor.lock();
    attractor.set(mouseX,mouseY);
  } else {
    attractor.unlock();
  }
}