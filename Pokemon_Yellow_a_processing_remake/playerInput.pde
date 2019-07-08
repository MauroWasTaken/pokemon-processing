//control variables
boolean up=false,down=false,left=false,right=false,a=false,b=false,start=false;
boolean pup=false,pdown=false,pleft=false,pright=false,pa=false,pb=false,pstart=false;
void keyPressed() {
  keyverification(keyCode, true);
    if (keyCode == 27){
             key = 0;
      };
}


void keyReleased() {
  keyverification(keyCode, false);
}


void keyverification(int k, boolean holding) {
  if(!availableController){
    //println(k);
    switch(k) {
    case 10:
      if(holding){
        start=true;
      }
      break;
    case 97:
      if(holding){
        a=true;
      }
      break;
    case 98:
      if(holding){
        b=true;
      }
      break;
    case 38:
      if(holding){
          up=true;
          down=false;
          left=false;
          right=false;
        }else{
          up=false;
        }
      
      break;
    case 37:
      if(holding){
          up=false;
          down=false;
          left=true;
          right=false;
        }else{
          left=false;
        }
      break;
    case 39:
      if(holding){
          up=false;
          down=false;
          left=false;
          right=true;
        }else{
          right=false;
        }
      break;
    case 40:
      if(holding){
          up=false;
          down=true;
          left=false;
          right=false;
        }else{
          down=false;
        }
      
      break;
    default:
      break;
    }
  }
}


void getControllerInput(){
  float dpad;
  dpad = controller.getHat("dpad").getValue();
  switch ((int)dpad) {
    case 2:
      up=true;
      down=false;
      left=false;
      right=false;
      break;
    case 4:
      up=false;
      down=false;
      left=false;
      right=true;
      break;
    case 6:
      up=false;
      down=true;
      left=false;
      right=false;
      break;
    case 8:
      up=false;
      down=false;
      left=true;
      right=false;
      break;
    default:
      up=false;
      down=false;
      left=false;
      right=false;
      break;
  }
  if(controller.getButton("a").getValue()==8){
    a=true;
  }else{
    a=false;
  }
  if(controller.getButton("b").getValue()==8){
    b=true;
  }else{
    b=false;
  }
  if(controller.getButton("start").getValue()==8){
    start=true;
  }else{
    start=false;
  }
}
void updateLastKeys(){
  if(a!=pa){
    pa=a;
  }
  if(b!=pb){
    pb=b;
  }
  if(start!=pstart){
    pstart=start;
  }
  if(up!=pup){
    pup=up;
  }
  if(down!=pdown){
    pdown=down;
  }
  if(left!=pleft){
    pleft=left;
  }
  if(right!=pright){
    pright=right;
  }
}
