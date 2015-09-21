color dark = #050505; 
color c =color(random(40,60),random(40,60),random(40,60));

float x, z;
boolean pintar = false;
int posX;
int posY;

//setup()
void setup() //returns nothing
{
  //size & background
  size(1200,700);
  colorMode(HSB);
  background(GRAY);
  frameRate(24);
  smooth();

}

//draw
void draw()
{
  
  noFill();
  strokeWeight(10);
  
  if(pintar==true)
  {
    
    pushMatrix();
      stroke(random(255),random(255),random(255));
      translate(posX,posY);
      
      if(x%2==0)
      {   
        beginShape();
        vertex(-x,-x); 
        vertex(x,-x);
        vertex(x,x);
        vertex(-x,x);
        endShape(CLOSE);
      
        //quad(x,x,-x,x,-x,-x,x,-x);
      }
      else
      {  
        rotate(PI/4);beginShape();
        vertex(-x,-x); 
        vertex(x,-x);
        vertex(x,x);
        vertex(-x,x);
        endShape(CLOSE);
        
        //quad(x,x,-x,x,-x,-x,x,-x);    
      }
      x+=9;
    
    popMatrix();
  }
  
}

void mousePressed()
{
  pintar = true;
  posX=mouseX;
  posY=mouseY;
}
void mouseReleased()
{
  pintar = false;
  x=0;
  z=0;
}