
//Déclaration de variables
float music=0;


//Importation des librairies
import ddf.minim.*;
Minim minim;
AudioPlayer player;


//SETUP
void setup()
{
  fullScreen(1);
  minim = new Minim(this);
  player = minim.loadFile("ThaTrickaz.mp3", int(width*1.5));
  player.loop();
  MidiBus.list(); // Liste les devices MIDI
  myBus = new MidiBus(this, 0, 3); // Connexion au bon device
}


//Boucle DRAW
void draw()
{
  background(0);
  translate(-width,knob7*20-(height/2));
  strokeWeight(knob6);
  colorMode(HSB,slider5*2.55+1);
  
 for(int i = 0; i < player.bufferSize(); i=i+(slider0+5)*2)
  {
    stroke((player.left.get(i))*20,5*slider6,5*slider7);
    line((i+knob2*3)+width/1.5, player.left.get(i)*(slider1*5)-knob1*10, (i)+width/1.5, player.left.get(i+1)*(slider1*5)+knob1*10);
  }
}