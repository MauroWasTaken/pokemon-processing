PImage MM0;
PImage selector;
int selecting=0;
SoundFile MMMove;
void mainMenu(){
    noStroke();
    smooth(3);
    background(255,255,255);
    float imgWidth=height*16/9;
    image(MM0, width/2-imgWidth/2,0,imgWidth ,height);
    switch(selecting){
    case 0:
      image(selector,250*width/3840,450*height/2160,10*5,14*5);
      break;
    case 1:
      image(selector,250*width/3840,725*height/2160,10*5,14*5);
      break;
default:
  break;
    } //<>//
    if((up)&(up!=pup)){
      if(selecting!=0){
          selecting--;
          MMMove.play();
      }
    }
    if((down)&(down!=pdown)){
        if(selecting!=1){
          selecting++;
          MMMove.play();
        }
    }
    if((a)&(a!=pa)){
          screen=0;
          MMMove.play();       
    }
}
