int index=0;
float radiants=0;
float radiants2=0;
int curvesSum = 0;
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
    background(255);
  }
  fill(255, 100,80);
  curvesSum=(int)( sin(radiants)*(height/2)+180 + sin(radiants2)*(height/2)+180);
  curvesSum/=2;
  ellipse(index,curvesSum,1,1);
 
}