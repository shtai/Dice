void setup()
{
	size(400, 400);
	noLoop();
}
void draw()
{
	background(70, 60, 0);
	for (int i = 30; i <= 350; i = i + 70)
	{
		for (int j = 30; j <= 200; j = j + 60)
		{
			Die one = new Die(i, j);
			one.roll();
			one.show();
		}
	}

}
void mousePressed()
{
	redraw();
}
class Die
{	
	int myX, myY, num, radius, dieSize, dieRed, dieGreen, dieBlue;
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
		dieRed = 45;
		dieGreen = 150;
		dieBlue = 60;
		noStroke();
		if (num <= 1)
		{
			noStroke();
			fill (dieRed, dieGreen, dieBlue);
			rect (myX, myY, dieSize, dieSize, 15);
			fill(0);
			ellipse (myX + 25, myY + 25, radius, radius);
		}
		else if (num <= 2)
		{
			fill (dieRed, dieGreen, dieBlue);
			rect (myX, myY, dieSize, dieSize, 15);
			fill(0);
			ellipse (myX + 15, myY + 35, radius, radius);
			ellipse (myX + 35, myY + 15, radius, radius);
		}
		else if (num <= 3)
		{
			fill (dieRed, dieGreen, dieBlue);
			rect (myX, myY, dieSize, dieSize, 15);
			fill(0);
			ellipse (myX + 15, myY + 35, radius, radius);
			ellipse (myX + 25, myY + 25, radius, radius);
			ellipse (myX + 35, myY + 15, radius, radius);
		}
		else if (num <= 4)
		{
			fill (dieRed, dieGreen, dieBlue);
			rect (myX, myY, dieSize, dieSize, 15);
			fill(0);
			ellipse(myX + 15, myY + 15, radius, radius);
			ellipse(myX + 35, myY + 15, radius, radius);
			ellipse(myX + 15, myY + 35, radius, radius);
			ellipse(myX + 35, myY + 35, radius, radius);
		}
		else if (num <= 5)
		{
			fill (dieRed, dieGreen, dieBlue);
			rect (myX, myY, dieSize, dieSize, 15);
			fill(0);
			ellipse(myX + 15, myY + 15, radius, radius);
			ellipse(myX + 35, myY + 15, radius, radius);
			ellipse(myX + 15, myY + 35, radius, radius);
			ellipse(myX + 35, myY + 35, radius, radius);
			ellipse(myX + 25, myY + 25, radius, radius);
		}
		else 
		{
			fill (dieRed, dieGreen, dieBlue);
			rect (myX, myY, dieSize, dieSize, 15);
			fill(0);
			ellipse(myX + 15, myY + 15, radius, radius);
			ellipse(myX + 15, myY + 25, radius, radius);
			ellipse(myX + 15, myY + 35, radius, radius);
			ellipse(myX + 35, myY + 15, radius, radius);
			ellipse(myX + 35, myY + 25, radius, radius);
			ellipse(myX + 35, myY + 35, radius, radius);
		}

	}
}
