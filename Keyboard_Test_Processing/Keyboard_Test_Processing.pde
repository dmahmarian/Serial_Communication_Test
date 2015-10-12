

import processing.sound.*;
import processing.serial.*;
import cc.arduino.*;

Arduino arduino;

Serial myPort;

AudioDevice device;
SoundFile[] file;

// Define the number of samples 
int numsounds = 5;

int value[] = {0, 0, 0};

int rectWidth;

void setup() {
  fullScreen();
  background(255);
  String portName = Serial.list()[2]; //change the 0 to a 1 or 2 etc. to match your port
  myPort = new Serial(this, portName, 9600);

  arduino = new Arduino(this, Arduino.list()[0], 9600);

  rectWidth = width/4;

  // Create a Sound renderer and an array of empty soundfiles
  device = new AudioDevice(this, 48000, 32);
  file = new SoundFile[numsounds];

  // Load 5 soundfiles from a folder in a for loop. By naming the files 1., 2., 3., n.aif it is easy to iterate
  // through the folder and load all files in one line of code.
  for (int i = 0; i < numsounds; i++) {
    file[i] = new SoundFile(this, (i+1) + ".aif");
  }
}

void draw() {

  background(value[0], value[1], value[2]);
}


void allLED() {
  //arduino.analogWrite(13,1); 

  myPort.write('1');
  delay(200);
  myPort.write('0');
  //arduino.analogWrite(13,0);
}


void keyPressed() {
  for (int i=0; i < 3; i++) {  
    value[i]=int(random(255));
  }


  //float circleSize = random(0.0,800.0);
  switch(key) {
  case 'a':
    circles();
    delay(20);
    allLED();
    file[0].play(0.5, 1.0);
    break;

  case 's':
    allLED();
    file[1].play(0.5, 1.0);
    circles();
    break;

  case 'd':
    circles();
    allLED();
    file[2].play(0.5, 1.0);
    break;

  case 'f':
    circles();
    allLED();
    file[3].play(0.5, 1.0);
    break;

  case 'g':
    circles();
    allLED();
    file[4].play(0.5, 1.0);
    break;

  case 'h':
    circles();
    allLED();
    file[0].play(1.0, 1.0);
    break;

  case 'j':
    circles();
    allLED();
    file[1].play(1.0, 1.0);
    break;

  case 'k':
    circles();
    allLED();
    file[2].play(1.0, 1.0);
    break;

  case 'l':
    circles();
    allLED();
    file[3].play(1.0, 1.0);
    break;

  case 'm':
    circles();
    allLED();
    file[4].play(1.0, 1.0);
    break;

  case 'x':
    circles();
    allLED();
    file[0].play(2.0, 1.0);
    break;

  case 'q':
    circles();
    allLED();
    file[1].play(2.0, 1.0);
    break;

  case 'w':
    circles();
    allLED();
    file[2].play(2.0, 1.0);
    break;    

  case 'e':
    circles();
    allLED();
    file[3].play(2.0, 1.0);
    break;

  case 'r':
    circles();
    allLED();
    file[4].play(2.0, 1.0);
    break; 

  case 't':
    circles();
    allLED();
    file[0].play(3.0, 1.0);
    break;

  case 'z':
    circles();
    allLED();
    file[1].play(3.0, 1.0);
    break;

  case 'u':
    circles();
    allLED();
    file[2].play(3.0, 1.0);
    break;    

  case 'i':
    circles();
    allLED();
    file[3].play(3.0, 1.0);
    break;

  case 'o':
    circles();
    allLED();
    file[4].play(3.0, 1.0);
    break;

  case 'p':
    circles();
    allLED();
    file[0].play(4.0, 1.0);
    break;    

  case 'y':
    circles();
    allLED();
    file[1].play(4.0, 1.0);
    break;
  }
}

float circleSize = random(100, 800);


void circles() {
  noStroke();
  fill(random(0-255), random(0, 255), random(0, 255));
  ellipse(random(0, width), random(0, height), circleSize, circleSize);
  delay(100);
}