// library to read from the arduino
import processing.serial.*;
import cc.arduino.*;

// library to generate some funky sounds
import processing.sound.*;

// global variables
SinOsc[] sineWaves;
Arduino arduino;

// other types of waves if you are interested
// documentation:
SawOsc saw;
TriOsc tri;

int numSines = 5;

float[] sineVolume;

/* Most Processing scripts are predicated on two functions:
    (1) setup(): runs once and at the beginning
    (2) draw(): runs in a loop indefinitely unless told otherwise
*/

void setup() {
  // creates a window if you want to draw anything
  size(500, 500);
  background(255);


  sineWaves = new SinOsc[numSines];
  sineVolume = new float[numSines];

  for (int i = 0; i < numSines; i++) {
    sineVolume[i] = (1.0 / numSines) / (i + 1);

    sineWaves[i] = new SinOsc(this);
    sineWaves[i].play();
  }
}

/* this function will loop indefinitely until you STOP the script
 *
*/
void draw() {

  // prints the list of available arduino ports
  println(Arduino.list());

  arduino = new Arduino(this, Arduino.list()[1], 57600);

  int A0 = arduino.analogRead(0);
  println("A0: " + A0);

  int A1 = arduino.analogRead(1);
  println("A1: " + A1);

  int A2 = arduino.analogRead(2);
  println("A2: " + A2);

  float frequency = pow(1000, (A0*.001)) + 150;
  float detune = float(A1) / float(A2) - 0.5;

  for (int i = 0; i < numSines; i++) {
    sineWaves[i].freq(frequency * (i + 1 + i * detune));
    sineWaves[i].amp(sineVolume[i]);
  }
}
