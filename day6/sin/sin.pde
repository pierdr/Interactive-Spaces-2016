int index=0;
float radiants=0;
void setup()
{
  size(1024, 360);
  background(255);
}
void draw(){
  index++;
  radiants+=0.01; //<>//
  
  if(index==width)
  {
    index=0;
  }
  ellipse(index,sin(radiants)*(height/2)+180,1,1);

}