//your code here
Particle[] bob;
void setup()
{
  background(255);
	size(1000,1000);
  bob = new Particle[1000];
  for(int i=0;i<bob.length;i++){
    bob[i] = new NormalParticle();
  }
}

void draw()
{
  for(int i = 0;i<bob.length;i++){
     bob[i].move();
     bob[i].show();
  }
}
class NormalParticle implements Particle
{
	double pX, pY, speed, angle;
  
  NormalParticle(){
     pX = pY = 500;
     speed = (float)(Math.random()*6);
     
     angle = Math.random()* 2*PI;
     
  }
  void move(){
    pX += (float)(Math.cos(angle) * speed);

    pY += (float)(Math.sin(angle) * speed);
    
  }
  void show(){
    fill(0);
    ellipse((float)pX,(float)pY,10,10);
  }
}
interface Particle
{
	public void move();
  public void show();
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}
