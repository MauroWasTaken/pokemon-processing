import net.java.games.input.*;
import org.gamecontrolplus.*;
import org.gamecontrolplus.gui.*;
import processing.sound.*;
//controller variables
boolean availableController=false;
ControlDevice controller;
ControlIO control;
//title screen variables
int screen=0;
int tframes=0;
boolean tScreen=true;
PImage tS0;
PImage tS1;
SoundFile tSTheme;
//control variables
boolean up=false,down=false,left=false,right=false,a=false,b=false,start=false;


void setup() {
  background(0,0,0);
  fullScreen();
  frameRate(60);
  smooth(2);
  control = ControlIO.getInstance(this);
  controller= control.getMatchedDevice("pokemonController");
  if(controller==null){
    println("no controller");
  }else{
    availableController=true;
  }
  gameLoading();
}


int calScale(){
 return 0;
}


void gameLoading(){
//title Screen loading
tS0=loadImage("sprites/others/titlescreen0.png");
tS1=loadImage("sprites/others/titlescreen1.png");
tSTheme = new SoundFile(this, "sounds/music/Title Screen Theme.mp3");
}


void draw() {
  clear();
  if(availableController){
    getControllerInput();
  }
  switch (screen) {
    //Title Screen
    case 0:
      titleScreen();
      break;
    //Main Menu
    case 1:
      mainMenu();
      break;
  }
}


void keyPressed() {
  keyverification(keyCode, true);
}


void keyReleased() {
  keyverification(keyCode, false);
}


void keyverification(int k, boolean b) {
  if(!availableController){
    println(k);
    switch(k) {
    case 65:
      break;
    case 68:
      break;
    case 37:
      break;
    case 39:
      break;
    case 79:
      break;
    case 80:
      break;
    case 97:
      break;
    case 98:
      break;
    case 100:
      break;
    case 101:
      break;
    case 102:
      break;
    case 103:
      break;
    case 104:
      break;
    case 105:
      break;
    case 38:
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
