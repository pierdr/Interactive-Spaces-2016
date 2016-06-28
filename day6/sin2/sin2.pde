int index=0;
float radiants=0;
float radiants2=0;
void setup()
{
  size(1024, 360);
  background(255);
}

void draw(){
  index++;
  radiants+=0.01;
  radiants2+=0.1;
  if(index==width)
  {
    index=0;
  }
  fill(255, 100,80);
  ellipse(index,sin(radiants)*(height/2)+180,1,1);
  fill(0, 100, 255);
  ellipse(index,sin(radiants2)*(height/2)+180,1,1);
}