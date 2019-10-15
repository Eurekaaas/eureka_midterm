import processing.sound.*;

SoundFile chordAm;
SoundFile chordBm;
SoundFile chordC;
SoundFile chordDm;
SoundFile chordEm;
SoundFile chordF;
SoundFile chordG;

Am cAm;
Bm cBm;
C cC;
Dm cDm;
Em cEm;
F cF;
G cG;


void setup(){
  size(1000,1000);
  
  chordAm = new SoundFile(this, "chordAm.wav");
  chordBm = new SoundFile(this, "chordBm.wav");
  chordC = new SoundFile(this, "chordC.wav");
  chordDm = new SoundFile(this, "chordDm.wav");
  chordEm = new SoundFile(this, "chordEm.wav");
  chordF = new SoundFile(this, "chordF.wav");
  chordG = new SoundFile(this, "chordG.wav");
  
  cAm = new Am(chordAm);
  cBm = new Bm(chordBm);
  cC = new C(chordC);
  cDm = new Dm(chordDm);
  cEm = new Em(chordEm);
  cF = new F(chordF);
  cG = new G(chordG);
 
}

void draw(){
  background(255);
  
  pushMatrix();
  cAm.dur();
  cAm.display();
  cAm.play();
  popMatrix();
  
  pushMatrix();
  cBm.dur();
  cBm.display();
  cBm.play();
  popMatrix();
  
  pushMatrix();
  cC.dur();
  cC.display();
  cC.play();
  popMatrix();
  
  pushMatrix();
  cDm.dur();
  cDm.display();
  cDm.play();
  popMatrix();
  
  pushMatrix();
  cEm.dur();
  cEm.display();
  cEm.play();
  popMatrix();
  
  pushMatrix();
  cF.dur();
  cF.display();
  cF.play();
  popMatrix();
  
  pushMatrix();
  cG.dur();
  cG.display();
  cG.play();
  popMatrix();
  
  
}



//void keyPressed(){
  
//  else if(key == 'b'){
//    chordBm.play();
//  }
//  else if(key == 'c'){
//    chordC.play();
//  }
//  else if(key == 'd'){
//    chordDm.play();
//  }
//  else if(key == 'e'){
//    chordEm.play();
//  }
//  else if(key == 'f'){
//    chordF.play();
//  }
//  else if(key == 'g'){
//    chordG.play();
//  }
//}
