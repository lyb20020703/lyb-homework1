int x1,y1,r1,red1,green1,blue1;
float[] x = new float[100];
float[] y = new float[100];
float[] speed = new float[100];
 
void setup() {
  size(900, 900);
  background(255);
  int i = 0;
  while(i <100) {  
    x[i] = random(0, width);
    y[i] = random(0, height);
    speed[i] = random(10,100);
    i = i + 1;
  }
}
 
void draw() {
  background(255);
  
  int i = 0;
   x1=int(random(width));
  y1=int(random(height));
  r1=int(random(50,80));
  red1=int(random(200,232));
  green1=int(random(180,250));
  blue1=int(random(100));
  frameRate(3);
  while(i < 100) {
    drawMoney(int(x[i]),int( y[i]),r1);
  
    y[i] = y[i] + speed[i];
    if(y[i] >height) {
      y[i] = 0;
    }
    i = i + 1;
  }
}
 void drawMoney(int x2,int y2,int radiu)
{
noStroke();
 red1=int(random(200,250));
  green1=int(random(180,250));
  blue1=int(random(100));
strokeWeight(5);
fill(195,157,30);
ellipse(x2+5,y2-5,radiu+3,radiu+3);
fill(red1,green1,blue1);
ellipse(x2,y2,radiu,radiu);
fill(195,157,30);
rectMode(CENTER);
noStroke();
rect(x2,y2,radiu/2,radiu/2);
fill(255);
rectMode(CENTER);
rect(x2+5,y2-5,radiu/2,radiu/2);
}
 
 
