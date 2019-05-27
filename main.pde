player one=new player(50,50);
massege_box box=new massege_box();

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
      one.place_x+=10;
      one.way='R';
    }
    else if (key== 'a'||key== 'A')
    {
      one.place_x-=10;
      one.way='L';
    }
    else if (key== 'W'||key== 'w')
    {
      one.place_y-=10;
      one.way='U';
    }
    else if (key== 's'||key== 'S')
    {
      one.place_y+=10;
      one.way='D';
    }
    else if (key== 'F'||key== 'f')
    {
      if(one.way=='U')
        one.place_y-=50;
      else if(one.way=='D')
        one.place_y+=50;
      else if(one.way=='L')
        one.place_x-=50;
      else if(one.way=='R')
        one.place_x+=50;
    }
  }
  one.appear();
  box.appear(one.power_max,one.power_left);
}
class player
{ 
  int place_x,place_y;
  int power_max,power_left;
  char way;
  player(int a,int b)
  { 
    place_x=a; place_y=b;
    power_max=200;power_left=200;
  }
  void appear()
  {
    if(place_x<25)
      place_x=50;
    else if(place_x>975)
      place_x=950;
    else if(place_y<25)
      place_y=50;
    else if(place_y>975)
      place_y=950;
    fill(0,155,200,154);
    ellipse(place_x, place_y, 50, 50);
  }
}
class massege_box
{
  void appear(int a,int b)
  {
    fill(0,155,a,54);
    rect(740,40,220,70);
    fill(200,0,0,54);
    rect(750,50,b,50);
  }
}
