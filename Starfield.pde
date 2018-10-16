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
  bob[0] = new JumboParticle();
  bob[1] = new OddballParticle();
}

void draw()
{
  fill(0);
  rect(0,0,width, height);
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
     speed = (float)(Math.random()*5);
     angle = Math.random()* 2*PI;
  }
  void move(){
    pX += (float)(Math.cos(angle) * speed);
    pY += (float)(Math.sin(angle) * speed);
    
  }
  void show(){
    fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    ellipse((float)pX,(float)pY,10,10);
  }
}
interface Particle
{
	public void move();
  public void show();
}
class OddballParticle extends NormalParticle
{
	void move(){
    pX += (int)(Math.random()*5)-3;
    pY += (int)(Math.random()*5)-3;
  }
  void show(){
    fill(255);
    rect((float)pX,(float)pY,100,100);
  }
}
class JumboParticle extends NormalParticle
{
	void move(){
    pX += (float)(Math.cos(angle) * speed);
    pY += (float)(Math.sin(angle) * speed);
  }
  void show(){
    fill(255);
    ellipse((float)pX,(float)pY,100,100);
  }
}
