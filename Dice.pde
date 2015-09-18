int colors = 255;
void setup()
{
	size(500,500);
	noLoop();
	
}
void draw()
{
	Die bob = new Die(0,0);
	bob.roll();
	bob.show();
}
void mousePressed()
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
	void roll()
	{
		

	}
	void show()
	{
		if (number==1)
		{
			fill(colors);
			rect(myX,myY,36,36);
			fill(0);
			ellipse(myX+18,myY+18,2,2);
		}
		else if (number==2)
		{
			fill(colors);
			rect(myX,myY,36,36);
			fill(0);
			ellipse(myX+12,myY+18,2,2);
			ellipse(myX+24,myY+18,2,2);
		}
		else if (number==3)
		{
			fill(colors);
			rect(myX,myY,36,36);
			fill(0);
			ellipse(myX+9,myY+9,2,2);
			ellipse(myX+18, myY+18, 2, 2);
			ellipse(myX+27, myY+27, 2, 2);
		}
		else if (number==4)
		{
			fill(colors);
			rect(myX,myY,36,36);
			fill(0);
			ellipse(myX+12,myY+12,2,2);
			ellipse(myX+24,myY+12,2,2);
			ellipse(myX+12,myY+24,2,2);
			ellipse(myX+24,myY+24,2,2);
		}
		else if (number==5)
		{
			fill(colors);
			rect(myX,myY,36,36);
			fill(0);
			ellipse(myX+9,myY+9,2,2);
			ellipse(myX+9,myY+27,2,2);
			ellipse(myX+18,myY+18,s,s);
			ellipse(myX+27,myY+9,s,s);
			ellipse(myX+27,myY+27,s,s);
		}
		else 
		{
			fill(colors);
			rect(myX,myY,36,36);
			fill(0);
			ellipse(myX+12,myY+9,s,s);
			ellipse(myX+12,myY+18,s,s);
			ellipse(myX+12,myY+27,s,s);
			ellipse(myX+24,myY+9,s,s);
			ellipse(myX+24,myY+18,s,s);
			ellipse(myX+24,myY+27,s,s);
		}
	}
}
