import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Dice extends PApplet {

public void setup()
{
	size(500,500);
	noLoop();
	
}
public void draw()
{
	Die bob = new Die(0,0);
	bob.roll();
	bob.show();
}
public void mousePressed()
{
	redraw();
}
class Die 
{
	int number, myX, myY;
	Die(int x, int y) 
	{
		number=((int)(Math.random()*6)+1);
		myX=x;
		myY=y;
	}
	public void roll()
	{
		

	}
	public void show()
	{
		if (number==1)
		{
			rect(myX,myY,36,36);
			ellipse(myX+18,myY+18,2,2);
		}
		else if (number==2)
		{
			rect(myX,myY,36,36);
			ellipse(myX+12,myY+18,2,2);
			ellipse(myX+24,myY+18,2,2);
		}
		else if (number==3)
		{
			rect(myX,myY,36,36);
			ellipse(myX+9,myY+9,2,2);
			ellipse(myX+18, myY+18, 2, 2);
			ellipse(myX+27, myY+27, 2, 2);
		}
		else if (number==4)
		{
			rect(myX,myY,36,36);
			ellipse(myX+12,myY+12,2,2);
			ellipse(myX+24,myY+12,2,2);
			ellipse(myX+12,myY+24,2,2);
			ellipse(myX+24,myY+24,2,2);
		}
		else if (number==5)
		{
			rect(myX,myY,36,36);
			ellipse(myX+9,myY+9,2,2);
			ellipse(myX+9,myY+27,2,2);
			ellipse(myX+18,myY+18,2,2);
			ellipse(myX+27,myY+9,2,2);
			ellipse(myX+27,myY+27,2,2);
		}
		else 
		{
			rect(myX,myY,36,36);
			ellipse(myX+12,myY+9,2,2);
			ellipse(myX+12,myY+18,2,2);
			ellipse(myX+12,myY+27,2,2);
			ellipse(myX+24,myY+9,2,2);
			ellipse(myX+24,myY+18,2,2);
			ellipse(myX+24,myY+27,2,2);
		}
	}
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Dice" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
