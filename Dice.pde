int colorR;
int colorG;
int colorB;
int s = 6;
int sum;
void setup()
{
	background(0);
	size(470,520);
	noLoop();
	noStroke();
	frameRate(2);
}
void draw()
{
	sum=0;
	for(int y=10;y<=450;y=y+46)
	{
		for(int x=10;x<=450;x=x+46)
		{
			colorR = (int)(Math.random()*220)+36;
			colorG = (int)(Math.random()*220)+36;
			colorB = (int)(Math.random()*220)+36;
			Die bob = new Die(x,y);
			bob.roll();
			bob.show();
		}
	}
	fill(255);
	textSize(24);
	text("TOTAL: " + sum,170,500);
}
void mousePressed()
{
	background(0);
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
		if (number==1)
		{
			fill(colorR,colorG,colorB);
			rect(myX,myY,36,36,5);
			fill(0);
			ellipse(myX+18,myY+18,s,s);
			sum= sum +1;
		}
		else if (number==2)
		{
			fill(colorR,colorG,colorB);
			rect(myX,myY,36,36,5);
			fill(0);
			ellipse(myX+12,myY+18,s,s);
			ellipse(myX+24,myY+18,s,s);
			sum= sum +2;
		}
		else if (number==3)
		{
			fill(colorR,colorG,colorB);
			rect(myX,myY,36,36,5);
			fill(0);
			ellipse(myX+9,myY+9,s,s);
			ellipse(myX+18, myY+18, s, s);
			ellipse(myX+27, myY+27, s, s);
			sum= sum +3;
		}
		else if (number==4)
		{
			fill(colorR,colorG,colorB);
			rect(myX,myY,36,36,5);
			fill(0);
			ellipse(myX+12,myY+12,s,s);
			ellipse(myX+24,myY+12,s,s);
			ellipse(myX+12,myY+24,s,s);
			ellipse(myX+24,myY+24,s,s);
			sum= sum +4;
		}
		else if (number==5)
		{
			fill(colorR,colorG,colorB);
			rect(myX,myY,36,36,5);
			fill(0);
			ellipse(myX+9,myY+9,s,s);
			ellipse(myX+9,myY+27,s,s);
			ellipse(myX+18,myY+18,s,s);
			ellipse(myX+27,myY+9,s,s);
			ellipse(myX+27,myY+27,s,s);
			sum= sum +5;
		}
		else 
		{
			fill(colorR,colorG,colorB);
			rect(myX,myY,36,36,5);
			fill(0);
			ellipse(myX+12,myY+9,s,s);
			ellipse(myX+12,myY+18,s,s);
			ellipse(myX+12,myY+27,s,s);
			ellipse(myX+24,myY+9,s,s);
			ellipse(myX+24,myY+18,s,s);
			ellipse(myX+24,myY+27,s,s);
			sum= sum +6;
		}
	}
	void show()
	{
	}
}
