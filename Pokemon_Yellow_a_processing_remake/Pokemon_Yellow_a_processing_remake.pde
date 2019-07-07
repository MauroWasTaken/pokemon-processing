import net.java.games.input.*;
import org.gamecontrolplus.*;
import org.gamecontrolplus.gui.*;
import processing.sound.*;
//controller variables
boolean availableController=false;
ControlDevice controller;
ControlIO control;
PFont pokemonFont;
int screen=0;
void setup() {
  background(0,0,0);
  fullScreen(1);
  frameRate(60);
  smooth(3);
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
  //pokemon font
  pokemonFont=createFont("data/PokemonFont.ttf",20);
  textFont(pokemonFont);
  //title Screen
  tS0=loadImage("sprites/others/titlescreen0.png");
  tS1=loadImage("sprites/others/titlescreen1.png");
  tSTheme = new SoundFile(this, "sounds/music/Title Screen Theme.mp3");
  int random=(int)random(1,97);
  println(random);
  if(random>=10){
    tSPikaCry = new SoundFile(this, "sounds/cries/025 - Pikachu ("+random+").wav");
  }else{
    tSPikaCry = new SoundFile(this, "sounds/cries/025 - Pikachu (0"+random+").wav");
  }
  //main menu
  MM0=loadImage("sprites/others/menu.png");
  selector=loadImage("sprites/others/selector.png");
  MMMove= new SoundFile(this, "sounds/sounds/menuMove.wav");
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
  updateLastKeys();
}
