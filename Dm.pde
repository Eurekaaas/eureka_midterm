class Dm{
  boolean isPlaying = false;
  int now;
  float duration;
  int startTime;
  
  int diameter = 80;
  int d = 0;
  int r = floor(random(0,255));
  int g = floor(random(0,255));
  int b = floor(random(0,255));
  int[] x = {1000-diameter/2, 1000/5*3, 1000/5*4};
  int[] y = {1000/5-100, 1000/5*2, 1000/2};
  
  SoundFile chordDm;
  
  Dm(SoundFile sound){
    chordDm = sound;
  }
  
  void dur() {
    float now = millis();
    float playbackPosition = now - startTime; 
    float dura = chordDm.duration() * 1000; 
    if (playbackPosition >= dura) {
      isPlaying = false;
    }
  }
  
  void display(){
    if(isPlaying == true){
      frameRate(80);
      noStroke();
      background(#FFF9DC);
      color col = color(r,g,b);
      for (int i = 0; i < x.length; i++){
        fill(col);
        ellipse(x[i], y[i], diameter, diameter);
      }
      for (int i = 0; i < x.length; i++){
        fill(#FFF9DC);
        ellipse(x[i], y[i], d, d);
        d += 1;
      }
      
    }
  }
  
  void play(){
    if(keyPressed){
      if(key == 'd'){
        chordDm.play();
        isPlaying = true;
        startTime = millis();
      }
    }
  }

}
