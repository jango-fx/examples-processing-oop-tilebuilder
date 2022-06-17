class Tile
{
  PVector p, s;
  int type;
  color c;

  Tile(float _x, float _y, float _s) {
    p = new PVector(_x, _y);
    s = new PVector(_s, _s);
    c = color(255, 0, 0);
    type = int(random(0, 7));
  }

  void draw()
  {
    fill(0, 10);
    if (type == 0) rect(p.x+1, p.y+1, s.x-1, s.y-1);
    fill(c);
    noStroke();
    if (type == 1) rect(p.x, p.y, s.x, s.y);
    if (type == 2) ellipse(p.x+s.x*0.5, p.y+s.y*0.5, s.x, s.y);
    if (type == 3) arc(p.x, p.y, s.x*2, s.y*2, 0, HALF_PI);
    if (type == 4) arc(p.x+s.x, p.y, s.x*2, s.y*2, HALF_PI, PI);
    if (type == 5) arc(p.x+s.x, p.y+s.y, s.x*2, s.y*2, PI, PI+HALF_PI);
    if (type == 6) arc(p.x, p.y+s.y, s.x*2, s.y*2, PI+HALF_PI, TWO_PI);
  }

  boolean mouseOver()
  {
    if (mouseX > p.x && mouseX < p.x+s.x && mouseY > p.y && mouseY < p.y+s.y)
      return true;
    else
      return false;
  }

  void toggleTypeForward()
  {
    type++;
    if (type > 6) type = 0;
  }

  void toggleTypeBackward()
  {
    type--;
    if (type < 0) type = 6;
  }
  
  void setType(float t)
  {
    type = int(constrain(t, 0, 6));
  }
}
