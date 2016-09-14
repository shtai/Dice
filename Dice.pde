int strokeWidth = 15;
int sum = 0;
void setup()
{
	size(400, 400);
	noLoop();
}
void draw()
{
	background(0, 255, 255);
	fill(0);
	rect(0, -100, 400, 360, 50);
	for (int i = 30; i <= 350; i = i + 70)
	{
		for (int j = 30; j <= 200; j = j + 70)
		{
			Die one = new Die(i, j);
			one.roll();
			one.show();
			sum = sum + one.num;
		}
	}

	textSize(20);
	textAlign(CENTER);
	text("Sum: " + sum, 200, 290);
	fill(0, 100, 255);
	rect(25, 300, 110, 50, 25);
	rect(145, 300, 110, 50, 25);
	rect(265, 300, 110, 50, 25);
	fill(0);
	text("Sum < 50", 80, 333);
	text("Sum = 50", 200, 333);
	text("Sum > 50", 320, 333);

}
void mousePressed()
{
	if (mouseX >= 50 && mouseX <= 170 && mouseY >= 300 && mouseY <= 360)
	{
		redraw();
		if (sum < 50)
		{
			fill (0);
			stroke(0);
			text("YOU WIN!!!", 200, 370);
		}
		if (sum == 50)
		{
			text("NOT SO QUITE..", 200, 370);
		}
	}
		sum = 0;
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
		dieRed = (int)(Math.random()*255+30);
		dieGreen = (int)(Math.random()*255+30);
		dieBlue = (int)(Math.random()*255+30);
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
