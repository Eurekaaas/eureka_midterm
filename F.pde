class F{
  boolean isPlaying = false;
  int now;
  float duration;
  int startTime;
  
  int[] x1 = {-20};
  int[] x2 = {30};
  
  
  SoundFile chordF;
  
  F(SoundFile sound){
    chordF = sound;
  }
  
  void dur() {
    float now = millis();
    float playbackPosition = now - startTime; 
    float dura = chordF.duration() * 1000; 
    if (playbackPosition >= dura) {
      isPlaying = false;
    }
  }
  
  void display(){
    if(isPlaying == true){
      
      stroke(#C50E0E);
      strokeWeight(15);
      fill(#C50E0E);
    
      
      for (int i = 0; i < 10; i++){
        if (i%20 == 0){
          line(x1[i], 180, x2[i], 100);
          x1 = append(x1, x1[i] += 30);
          //x1[i] += 30;
          x2 = append(x2, x2[i] += 30);
        }
      }
      
      int x = width/5*3;
      int y = height/5*2;
      strokeWeight(5);
      
      int loopEnd1 = constrain(floor(map(frameCount*5, 0, 240, 0, 300)), 0, 300);
      ellipse(x, y, 50, 50);
      for (int i = 0; i <= loopEnd1; i++){
        point(x, y);
        x -= 1; 
        y += 1;
        if (x < 400 && y > 600){
          point(x, y);
          x -= 1;
          y = 600;
          ellipse(400, 600, 50, 50);
        }
      }
      
      int x1 = 200;
      int y1 = 600;
      int loopEnd2 = constrain(floor(map(frameCount*5, 0, 240, 0, 200)), 0, 200);
      ellipse(x1, y1, 50, 50);
      for (int i = 0; i < loopEnd2; i ++){
        point(x1, y1);
        x1 += 2;
        y1 -= 1;
      }
    
    }
  }
  
  void play(){
    if(keyPressed){
      if(key == 'f'){
        chordF.play();
        isPlaying = true;
        startTime = millis();
      }
    }
  }

}
