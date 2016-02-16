
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
	if(len < 400)
	{
			fractal(x, y, len);
			fractal(x+x/len , y , len/(2/3));
	}
	else
	{
		triangle(x, y, x+len, y, x+(len/2), y-((len/2)*sqrt(3)));
		triangle(x, y-((len/3)*sqrt(3)), x+len, y-((len/3)*sqrt(3)), x+(len/2), y+((len/2)/sqrt(3)));
	}
}