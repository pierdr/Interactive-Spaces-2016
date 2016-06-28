
import processing.sound.*;
SinOsc sine;
SinOsc sine2;

FFT fft;
FFT fft2;

int bands = 512;
float[] spectrum = new float[bands];
float[] spectrum2 = new float[bands];

void setup() {
  size(512, 360);
  background(255);
  

  fft = new FFT(this, bands);
    fft2 = new FFT(this, bands);
 
    sine = new SinOsc(this);
    sine.play();
    sine.freq(440);
    
    sine2 = new SinOsc(this);
    sine2.freq(435);
    sine2.play();
   
    
    
  fft.input(sine);
  fft2.input(sine2);
}      

void draw() { 
  background(255);
  fft.analyze(spectrum);
  fft2.analyze(spectrum2);

 
  for(int i = 0; i < bands; i++){
  // The result of the FFT is normalized
  // draw the line for frequency band i scaling it up by 5 to get more amplitude.
   stroke(230,100,80);
  line( i, height, i, height - spectrum[i]*height*5 );
  stroke(20,20,180);
  line( i, height, i, height - spectrum2[i]*height*5 );
  } 
  
}