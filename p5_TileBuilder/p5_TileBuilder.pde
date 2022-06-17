float gridSize = 54;
ArrayList<Tile> tiles = new ArrayList<Tile>();

void setup()
{
  size(540, 972);

  for (int x = 0; x < width; x+=gridSize)
  {
    for (int y = 0; y < height; y+=gridSize)
    {
      tiles.add(new Tile(x, y, gridSize));
      //tiles.get(tiles.size()-1).setType(  sin(x)*sin(y)*6  );
      tiles.get(tiles.size()-1).setType(  noise(x,y)*6  );
    }
  }
}


void draw()
{
  background(255);
  for (int i = 0; i < tiles.size(); i++)
  {
    tiles.get(i).draw();
  }
}

void mouseReleased()
{
  for (int i = 0; i < tiles.size(); i++)
  {
    if (tiles.get(i).mouseOver()) {
      if (mouseButton == LEFT)
        tiles.get(i).toggleTypeForward();
      if (mouseButton == RIGHT)
        tiles.get(i).toggleTypeBackward();

      println("["+i+"]: "+tiles.get(i).type);
    }
  }
}
