void titleScreen(){
  if (!tSTheme.isPlaying()) {
    tSTheme.loop(1,0.10);
  }
    if(tframes>30){
        tScreen=!tScreen;
        tframes=0;
    }else{
        tframes++;
    }
    int imgWidth=height*16/9;
    if(tScreen){
        image(tS0, width/2-imgWidth/2, 0,imgWidth , height);
    }else{
        image(tS1, width/2-imgWidth/2, 0,imgWidth , height);
    }
    if(start){
        screen=1;
    }
}
