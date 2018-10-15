//your code here
NormalParticle bob;
void setup()
{
  background(255);
	size(1000,1000);
}
void draw()
{
  bob = new NormalParticle(200,200,200,30,50);
  bob.move();
  bob.show();
}
class NormalParticle
{
	double pX, pY, speed, angle;
  int colr;
  NormalParticle(double x, double y, double spd, double ang, int clr){
     pX = x;
     pY = y;
     speed = spd;
     angle = ang;
     colr = clr;
  }
  void move(){
    pX = (float)(Math.cos(angle) * speed);

    pY = (float)(Math.sin(angle) * speed);
    System.out.print(pX);
  }
  void show(){
    fill(colr);
    ellipse((float)pX,(float)pY + (float)(Math.sin(angle) * speed),50,50);
    System.out.print(pY);
  }
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}
