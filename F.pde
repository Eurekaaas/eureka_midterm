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
  int loopEnd1=0;
  int loopEnd2=0;
  void dur() {
    float now = millis();
    float playbackPosition = now - startTime; 
    float dura = chordF.duration() * 1000; 
    if (playbackPosition >= dura) {
      isPlaying = false;
         loopEnd1=0;
         loopEnd2=0;
    }
  }
  
  void display(){
    if(isPlaying == true){
      
      stroke(#97364E);
      strokeWeight(15);
      fill(#97364E);
    
      
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
      if(loopEnd1<300){
      loopEnd1+=10;
      }
      
      
      ellipse(x, y, 30, 30);
      for (int i = 0; i <= loopEnd1; i++){
        point(x, y);
        x -= 1; 
        y += 1;
        if (x < 400 && y > 600){
          point(x, y);
          x -= 1;
          y = 600;
          ellipse(400, 600, 30, 30);
        }
      }
      
      int x1 = 200;
      int y1 = 600;

        if(loopEnd2<200){
      loopEnd2+=10;
      }
      ellipse(x1, y1, 30, 30);
      for (int i = 0; i < loopEnd2; i ++){
        point(x1, y1);
        x1 += 2;
        y1 -= 1;
      }
    
    }
    if(!isPlaying){
      x1[0] = -20;
      x2[0] = 30;
    }
  }
  
  void play(){
    if(keyPressed){
      if(key == 'f'){
        chordF.play();
        isPlaying = true;
        startTime = millis();
        key =' ';
      }
    }
  }

}
