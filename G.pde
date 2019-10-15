class G{
  boolean isPlaying = false;
  int now;
  float duration;
  int startTime;
  
  int[] xPos = {0, 1000/5, 1000};
  int[] yPos = {1000/2, 1000/5*2, 1000/2};
  
  SoundFile chordAm;
  
  G(SoundFile sound){
    chordG = sound;
  }
  
  void dur() {
    float now = millis();
    float playbackPosition = now - startTime; 
    float dura = chordG.duration() * 1000; 
    if (playbackPosition >= dura) {
      isPlaying = false;
    }
  }
  
  void display(){
    if(isPlaying == true){
      background(#F8EAFF);
      stroke(#EE03CE);
      strokeWeight(10);
      frameRate(10);
      
      for (int i = 0; i < xPos.length; i++){
        //line(xPos[i]-30, yPos[i]-30, xPos[i]+30, yPos[i]+30);
        if (i < xPos.length-1){
          line(xPos[i]-30, yPos[i]-30, xPos[i]+30, yPos[i]+30);
          xPos[i] += frameCount;
          yPos[i] += frameCount;
        }
        else{
          line(xPos[2]-30, yPos[2]+30, xPos[2]+30, yPos[2]-30);
          xPos[2] -= frameCount;
          yPos[2] += frameCount;
        }
      }
      
    }
  }
  
  void play(){
    if(keyPressed){
      if(key == 'g'){
        chordG.play();
        isPlaying = true;
        startTime = millis();
      }
    }
  }

}
