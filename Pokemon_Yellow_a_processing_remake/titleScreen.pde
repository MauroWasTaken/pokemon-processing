//title screen variables
int tframes=0;
boolean tScreen=true;
PImage tS0;
PImage tS1;
SoundFile tSTheme;
SoundFile tSPikaCry;
void titleScreen(){
  if (!tSTheme.isPlaying()) {
    tSTheme.loop(1,0.10);
  }
    if(tframes>30){
        tScreen=!tScreen;
        tframes=0;
        float imgWidth=height*16/9;
        if(tScreen){
            image(tS0, width/2-imgWidth/2, 0,imgWidth , height);
        }else{
            image(tS1, width/2-imgWidth/2, 0,imgWidth , height);
        }
    }else{
        tframes++;
    }
    
    if((start)&(start!=pstart)){
        screen=1;
        tSTheme.stop();
        tSPikaCry.play();
        delay(200);
    }
}
