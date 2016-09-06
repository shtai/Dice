void setup()
{
	noLoop();
}
void draw()
{
	//your code here
}
void mousePressed()
{
	redraw();
}
class Dice //models one single dice cube
{
	//variable declarations here
	Dice(int x, int y) //constructor
	{
		//variable initializations here
		int myX = x;
		int myY = y;

	}
	void roll()
	{
		int num = (int)(Math.random()*6);
		if (num <= 1)
		{
			
		}

		//your code here
	}
	void show()
	{
		//your code here
	}
}
