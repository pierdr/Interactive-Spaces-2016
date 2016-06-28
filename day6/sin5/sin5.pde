int index=0;
float radiants=0;
float curveSum=0;

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
    background(255);
  }
  curveSum= sin(radiants)*(height/2)+180+sin(radiants+3.14)*(height/2)+180;
  curveSum/=2;
  stroke(0);
  ellipse(index,curveSum,1,1);
  
  stroke(255, 100,80);
  ellipse(index,sin(radiants)*(height/2)+180,1,1);
  stroke(0, 100, 255);
  ellipse(index,sin(radiants+3.14)*(height/2)+180,1,1);
}