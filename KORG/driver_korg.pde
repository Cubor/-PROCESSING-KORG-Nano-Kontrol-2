
//driver pour le KORG nanoKONTROL2

//déclaration de variables
int slider0=50, slider1=50, slider2=50, slider3=50, slider4=50, slider5=50, slider6=50, slider7=50;
int knob0=50, knob1=50, knob2=50, knob3=50, knob4=50, knob5=50, knob6=50, knob7=40;
float transportREW=0, transportFF=0, transportSTOP=0, transportPLAY=0, transportREC=0;


//Importation dela librairie midi
import themidibus.*;
MidiBus myBus;


//Ecoute des SLIDERS
void controllerChange(int channel, int number, int value) {
  
if (number==0) {
    slider0 = value;
    slider0 = ((slider0 - 0) * (100)/(127)) + 1;
    }
    
  if (number==1) {
    slider1 = value;
  }
  
  if (number==2) {
    slider2 = value;
  }

  if (number==3) {
    slider3 = value;
  }

  if (number==4) {
    slider4 = value;
  }

  if (number==5) {
    slider5 = value;
  }

  if (number==6) {
    slider6 = value;
  }

  if (number==7) {
    slider7 = value;
  }


//Ecoute des KNOBS
  if (number==16) {
    knob0 = value;
  }

  if (number==17) {
    knob1 = value;
  }

  if (number==18) {
    knob2 = value;
  }

  if (number==19) {
    knob3 = value;
  }

  if (number==20) {
    knob4 = value;
  }

  if (number==21) {
    knob5 = value;
  }

  if (number==22) {
    knob6 = value;
  }

  if (number==23) {
    knob7 = value;
  }


//Ecoute des touches de control
  if (number==43) {
    transportREW = value;
  }

  if (number==43) {
    transportFF = value;
  }

  if (number==43) {
    transportSTOP = value;
  }

  if (number==43) {
    transportPLAY = value;
  }

  if (number==43) {
    transportREC = value;
  }
  
}
void stop()
{
  // always close Minim audio classes when you are done with them
  player.close();
  minim.stop();
  super.stop();
}