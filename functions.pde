void createGrid() {
  for (int i = 0; i < sqr_x; i ++) {
    for (int j = 0; j < sqr_y; j ++) {
      grid[i][j] = new grid(new PVector(i*sqr_size, j*sqr_size));
    }
  }
}
void showGrid() {
  for (int i = 0; i < sqr_x; i ++) {
    for (int j = 0; j < sqr_y; j ++) {
      grid[i][j].show();
    }
  }
}

void initSqr(PVector vec) {
  int x = (int)vec.x;
  int y = (int)vec.y;
  grid[y][x].setAlive(true);
}

boolean nextGen(PVector vec) {
  int x = (int)vec.x;
  int y = (int)vec.y;
  
  boolean l_alive = (x < 1) ? l_alive = false : grid[x-1][y].getAlive();
  boolean alive = grid[x][y].getAlive();
  boolean r_alive = (x + 1 > sqr_x - 1) ? r_alive = false : grid[x+1][y].getAlive(); 


  
  boolean result = false;
  
  if (l_alive == false && alive == false && r_alive == true) {
    result = true;
  }
  if (l_alive == true && alive == false && r_alive == false) {
     result = true;
  }
  
  return result;
}
void draww(int j){
  for (int i = 0; i < sqr_x; i++) {
    grid[i][j].setAlive(nextGen(new PVector(i, j-1)));
  }
}
