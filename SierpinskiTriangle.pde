int r1 = (int)(Math.random()*255);
int g1 = (int)(Math.random()*255);
int b1 = (int)(Math.random()*255);
int r2 = 0; 
int g2 = 0;
int b2 = 0;
public void setup()
{
size(500,500);
}
public void draw()
{
background (0,0,0);
fill(r1, g1, b1);
sierpinski(50,450,400);
fill(r2, g2, b2);
sierpinski(0,450,500);
}
public void mousePressed()//optional
{
 if(r2 == 0){
r1 = 0;
g1 = 0;
b1 = 0;
r2 = (int)(Math.random()*255); 
g2 = (int)(Math.random()*255);
b2 = (int)(Math.random()*255);
 } else{
r2 = 0;
g2 = 0;
b2 = 0;
r1 = (int)(Math.random()*255); 
g1 = (int)(Math.random()*255);
b1 = (int)(Math.random()*255);   
}
}
public void sierpinski(int x, int y, int len) 
{
if( len<=15){
  triangle(x, y, x+len, y, x+len/2 , y-len);
}else {
  sierpinski(x,y, len/2);
  sierpinski(x+len/2, y, len/2);
  sierpinski(x+len/4, y-len/2, len/2);
}
}
