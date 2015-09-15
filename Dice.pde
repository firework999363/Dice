void setup()
{
	size(500,500);
	noLoop();
	Die a = new Die();
}
void draw()
{
	a.roll();
	a.show();
}
void mousePressed()
{
	redraw();
}
class Die 
{
	Die(int x, int y) 
	{
		
	}
	void roll()
	{
		int number=((int)(Math.random()*6)+1);

	}
	void show()
	{
		if (number=1)
		{
			rect(x,y,36,36);
			ellipse(x+18,y+18,2,2)
		}
		else if (number=2)
		{
			rect(x,y,36,36);
			ellipse(x+12,)
		}
		else if (number=3)
		{
			rect(x,y,36,36);
		}
		else if (number=4)
		{
			rect(x,y,36,36);
		}
		else if (number=5)
		{
			rect(x,y,36,36);
		}
		else 
		{
			rect(x,y,36,36);
		}
	}
}
