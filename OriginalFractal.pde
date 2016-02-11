
public void setup()
{
	size(400, 400);
	background(255, 255, 255);
}

public void draw()
{
	fractal(100, 275, 200);

}

public void fractal(int x, int y, int len)
{
	noFill();
	// if()
	// {

	// }
	// else
		triangle(x, y, x+len, y, x+(len/2), y-((len/2)*sqrt(3)));
		triangle(x, y/4, x+len, y/4, x+(len/2), y+((len/2)*sqrt(3)));
}