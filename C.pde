class C{
  boolean isPlaying = false;
  int now;
  float duration;
  int startTime;
  
  int[] yPositions = {1000/2, 1000/5*2, 1000/5};
  
  SoundFile chordC;
  
  C(SoundFile sound){
    chordC = sound;
  }
  
  void dur() {
    float now = millis();
    float playbackPosition = now - startTime; 
    float dura = chordC.duration() * 1000; 
    if (playbackPosition >= dura) {
      isPlaying = false;
    }
  }
  
  void display(){
    if(isPlaying){
      noStroke();
      fill(#2DA8FF, 230);
      frameRate(20);
      
      background(#FFCB93);
      for (int i = 0; i < yPositions.length; i++) {
        int xPos = floor(width/5 * pow(2,i));
        ellipse(xPos, yPositions[i], 50, 50);
        yPositions[i] += frameCount;
            
        stroke(#2DA8FF, 180);
        strokeWeight(7);
        line(xPos, yPositions[i]-120, xPos, yPositions[i]-220);
        strokeWeight(4);
        line(xPos-20, yPositions[i]-140, xPos-20, yPositions[i]-170);
        line(xPos+20, yPositions[i]-140, xPos+20, yPositions[i]-170);
      }
    }
  }
  
  void play(){
    if(keyPressed){
      if(key == 'c'){
        chordC.play();
        isPlaying = true;
        startTime = millis();
      }
    }
  }

}
