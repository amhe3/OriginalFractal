
public void setup()
{
	size(400, 400);
	background(0, 0, 0);
}

public void draw()
{
	fractal(200, 200, 250);
}

int sizes = 20;
public void mousePressed()//optional
{
	if(sizes <= 15)
	{
		sizes = 400;
	}
	else
		sizes =+ sizes/2;
	background(0, 0, 0);
}

public void fractal(int x, int y, int len)
{
	noFill();
	int r = (int)(Math.random()*226);
	int g = (int)(Math.random()*226);
	int b = (int)(Math.random()*226);
	if(len > sizes)
	{	
		stroke(r, g, b);
		ellipse(x, y, len, len);
		fractal(x-(len/2), y, len/2); //left
		fractal(x+(len/2), y, len/2); //right
		fractal(x, y-(len/2), len/2); //top
		fractal(x, y+(len/2), len/2); //bottom
	}
	else
	{
		ellipse(x, y, len, len);
	}
}