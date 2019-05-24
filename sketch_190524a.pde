player one=new player(50,50);

void setup() 
{
  size(1000, 1000);
}
void draw()
{
  background(255);
  noStroke();
  if (keyPressed)
  {
    if (key== 'D'||key== 'd')
    {
      one.x+=10;
      one.way='R';
    }
    else if (key== 'a'||key== 'A')
    {
      one.x-=10;
      one.way='L';
    }
    else if (key== 'W'||key== 'w')
    {
      one.y-=10;
      one.way='U';
    }
    else if (key== 's'||key== 'S')
    {
      one.y+=10;
      one.way='D';
    }
    else if (key== 'F'||key== 'f')
    {
      if(one.way=='U')
        one.y-=50;
      else if(one.way=='D')
        one.y+=50;
      else if(one.way=='L')
        one.x-=50;
      else if(one.way=='R')
        one.x+=50;
    }
  }
  one.appear();
}
class player
{ 
  int x,y;
  char way;
  player(int a,int b){ x=a; y=b; }
  void appear()
  {
    if(x<25)
      x=50;
    else if(x>975)
      x=950;
    else if(y<25)
      y=50;
    else if(y>975)
      y=950;
    fill(0,155,200,154);
    ellipse(x, y, 50, 50);
  }
}
