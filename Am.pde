class Am{
  boolean isPlaying = false;
  int now;
  float duration;
  int startTime;
  
  SoundFile chordAm;
  
  Am(SoundFile sound){
    chordAm = sound;
  }
  
  int loopEnd=0;
  void dur() {
    float now = millis();
    float playbackPosition = now - startTime; 
    float dura = chordAm.duration() * 1000; 
    if (playbackPosition >= dura) {
      isPlaying = false;
      loopEnd=0;
    }
  }
  
  int showx=0;
  void display(){
    if(isPlaying == true){
      background(#B9D2F8);
      fill(#FFF979);
      stroke(#FFF979);
      strokeWeight(8);
      
      int x = width / 5 * 4;
      int y = height / 5;
      
      ellipse(x, y, 40, 40);
      
       if(loopEnd<300){
        loopEnd =loopEnd+10;
       }
      
      for (int i = 0; i < loopEnd; i++) {
        point(x, y); 
        x -= 1;
        y += 1;
        if (x < 600 && y > 400) {
          point(x, y);
          x -= 1;
          y = 400;
          ellipse(600, 400, 40, 40);
          ellipse(400, 400, 40, 40);
        }
        
      }
    }
  }
  
  void play(){
    if(keyPressed){
      if(key == 'a'){
        chordAm.play();
        isPlaying = true;
        startTime = millis();
        key =' ';
      
      }
    }
  }

}
