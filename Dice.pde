void setup()
{
	size(400, 400);
	noLoop();
}
void draw()
{
	background(70, 60, 0);
	Die one = new Die(200, 200);
	one.roll();
	one.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX, myY, num, radius, dieSize;
	Die(int x, int y)
	{
		myX = x;
		myY = y;
	}
	
	void roll()
	{
		num = (int)(Math.random()*6);
	}
	
	void show()
	{
		radius = 10;
		dieSize = 50;
		if (num <= 1)
		{
			noStroke();
			fill (45, 150, 60);
			rect (myX, myY, dieSize, dieSize, 15);
			fill(0);
			ellipse (myX + 25, myY + 25, radius, radius);
		}
		else if (num <= 2)
		{
			fill (45, 150, 60);
			rect (myX, myY, dieSize, dieSize, 15);
			fill(0);
			ellipse (myX + 15, myY + 35, radius, radius);
			ellipse (myX + 35, myY + 15, radius, radius);
		}
		else if (num <= 3)
		{
			fill (45, 150, 60);
			rect (myX, myY, dieSize, dieSize, 15);
			fill(0);
			ellipse (myX + 15, myY + 35, radius, radius);
			ellipse (myX + 25, myY + 25, radius, radius);
			ellipse (myX + 35, myY + 15, radius, radius);
		}
		else if (num <= 4)
		{
			fill (45, 150, 60);
			rect (myX, myY, dieSize, dieSize, 15);
			fill(0);
			ellipse(myX + 16, myY + 16, radius, radius);
		}
		else if (num <= 5)
		{
			fill (45, 150, 60);
			rect (myX, myY, dieSize, dieSize, 15);
			fill(0);
		}

	}
}
