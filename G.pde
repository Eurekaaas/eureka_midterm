class G{
  boolean isPlaying = false;
  int now;
  float duration;
  int startTime;
  
  int[] xPos = {0, width/5, width};
  int[] yPos = {height/2, height/5*2, height/2};
  
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
    

      for (int i = 0; i < xPos.length; i++){
        //line(xPos[i]-30, yPos[i]-30, xPos[i]+30, yPos[i]+30);
        if (i < xPos.length-1){
          line(xPos[i]-40, yPos[i]-40, xPos[i]+40, yPos[i]+40);
          xPos[i] += 10;
          yPos[i] += 10;
        }
        else{
          line(xPos[2]-40, yPos[2]+40, xPos[2]+40, yPos[2]-40);
          xPos[2] -= 10;
          yPos[2] += 10;
        }
      }
    }
    if(!isPlaying){
      xPos[0] = 0;
      xPos[1] = width/5;
      xPos[2] = width;
      yPos[0] = height/2;
      yPos[1] = height/5*2;
      yPos[2] = height/2;
    }
  }
  
  void play(){
    if(keyPressed){
      if(key == 'g'){
        chordG.play();
        isPlaying = true;
        startTime = millis();
        key =' ';
      }
    }
  }

}
