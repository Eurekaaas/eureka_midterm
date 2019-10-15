class Bm{
  boolean isPlaying = false;
  int now;
  float duration;
  int startTime;
  
  SoundFile chordBm;
  
  int alpha = 0;
  int delta = 1;
  boolean fade = false;
  int frequency1 = floor(random(10, 20));
  int frequency2 = floor(random(2, 5));
  
  Bm(SoundFile sound){
    chordBm = sound;
  }
  
  void dur() {
    float now = millis();
    float playbackPosition = now - startTime; 
    float dura = chordBm.duration() * 1000; 
    if (playbackPosition >= dura) {
      isPlaying = false;
    }
  }
  
  void display(){
    if(isPlaying == true){
      background(#CAFDF4);
      noFill();
      stroke(#FF60A1, alpha);
      
      if (alpha == 255) {
        delta= -delta *2;
      }
      alpha += delta*5;
      
      PVector p1 = new PVector(1000/5, 1000/5*2);
    
      float d = 800;
      strokeWeight(7);
      pushMatrix();
        translate(p1.x,p1.y);
        beginShape();
          for (float i = 0; i <= d; i += 1) {
            vertex(i,sin(i*TWO_PI*frequency1/d)*40);
          }
        endShape();
      popMatrix();
    

      PVector p2 = new PVector(1000/5*4, 1000/2);
    
      float d2 = 100;
      strokeWeight(7);
      pushMatrix();
        translate(p2.x,p2.y);
        beginShape();
          for (float i = 0; i <= d2; i += 1) {
            vertex(i,sin(i*TWO_PI*frequency2/d2)*30);
          }
        endShape();
      popMatrix();
   
   
      PVector p3 = new PVector(1000/5*2, 1000/5*3);
    
      float d3 = 100;
      strokeWeight(7);
      pushMatrix();
        translate(p3.x,p3.y);
        beginShape();
          for (float i = 0; i <= d3; i += 1) {
            vertex(i,sin(i*TWO_PI*frequency2/d3)*30);
          }
        endShape();
      popMatrix();
   
   
      PVector p4 = new PVector(1000/5*3, 1000/5*3);
    
      float d4 = 100;
      strokeWeight(7);
      pushMatrix();
        translate(p4.x,p4.y);
        beginShape();
          for (float i = 0; i <= d4; i += 1) {
            vertex(i,sin(i*TWO_PI*frequency2/d4)*30);
          }
        endShape();
      popMatrix();
      
    }
  }
  
  void play(){
    if(keyPressed){
      if(key == 'b'){
        chordBm.play();
        isPlaying = true;
        startTime = millis();
      }
    }
  }

}
