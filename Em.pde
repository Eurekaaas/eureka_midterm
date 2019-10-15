class Em{
  boolean isPlaying = false;
  int now;
  float duration;
  int startTime;
  
  float diameter = 0;
  
  SoundFile chordEm;
  
  Em(SoundFile sound){
    chordEm = sound;
  }
  
  void dur() {
    float now = millis();
    float playbackPosition = now - startTime; 
    float dura = chordEm.duration() * 1000; 
    if (playbackPosition >= dura) {
      isPlaying = false;
    }
  }
  
  void display(){
    if(isPlaying == true){
      stroke(#FF742A);
      strokeWeight(15);
      frameRate(400);
      noFill();

          background(#9BFFD6);
          ellipse(width/5, height/5*2, diameter, diameter);
          ellipse(width/5*2, height/5*2, diameter, diameter);
          diameter = diameter + 20;

    }
  }
  
  void play(){
    if(keyPressed){
      if(key == 'e'){
        chordEm.play();
        isPlaying = true;
        startTime = millis();
      }
    }
  }

}
