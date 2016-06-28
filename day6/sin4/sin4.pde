int index=0;
float radiants=0;

void setup()
{
  size(1024, 360);
  background(255);
}

void draw(){
  index++;
  radiants+=0.01;

  if(index==width)
  {
    index=0;
  }
  stroke(255, 100,80);
  ellipse(index,sin(radiants)*(height/2)+180,1,1);
  stroke(0, 100, 255);
  ellipse(index,sin(radiants+1.5)*(height/2)+180,1,1);
}