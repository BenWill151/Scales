

void setup()
{
  size(500,500);
  noStroke();
  noFill();
  colorMode(HSB);
  
  
}
float column = -15;
float[] hexagonrow = new float[1];
void draw()
{
  

  
  
  float time  = radians(frameCount);
  //fill(255*(.5+.5*cos(time)), 255,255);
  background(255*(.5+.5*cos(time)), 255,225);
  
  for(int y= 1; y<800; y+=17)
{
  for(int x =0; x<800;x+=30)
  {
  fill(255*(.5+.7*cos(time))*x,255,255);  
  hexagon(x,y,.15);
  }
}

for(float y= -7.7 ; y<800; y+=17)
{
  for(float x =-15; x<800;x+=30)
  {
    fill(255*(.5+.5*cos(time))*x,255,255);
    hexagon(x,y,.15);
   
  }
}

column+=30;

delay(10);
}







void hexagon(float x, float y, float scale)
{
  float theight = 50*scale;
  float hs = 28.85*scale;
  float hix1 = x;
  float hiy1 = y;
  float hix2 = x;
  float hiy2 = y;
  float hix3 = x;
  float hiy3 = y;
  
  //triangle(hix1-hs,hiy1+50,hix2,hiy2,hix3+hs,hiy3+50);//bottom middle
  triangle(hix1-hs, hiy1+theight, hix2, hiy2, hix3+hs, hiy3+theight);//bottom middle
  triangle(hix1-hs, hiy1-theight, hix2, hiy2, hix3+hs, hiy3-theight);//top middle
  triangle(hix1+hs, hiy1+theight, hix2, hiy2, hix3+hs*2, hiy3);//bottom right
  triangle(hix1-hs, hiy1+theight, hix2, hiy2, hix3-hs*2, hiy3);//bottom left
  triangle(hix1+hs, hiy1-theight, hix2, hiy2, hix3+hs*2, hiy3);//top right
  triangle(hix1-hs, hiy1-theight, hix2, hiy2, hix3-hs*2, hiy3);//top left
  
}
























//  double rv = Math.random()*255;
//  double gv = Math.random()*255;
// double bv = Math.random()*255;
// int r;
//int g;
//int b;
//int lx =0;
//  int r = (int)rv;
// int g = (int)gv;
// int b = (int)bv;
// fill(r,g,b);
