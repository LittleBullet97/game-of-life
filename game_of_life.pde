int sqr_size = 10;
int sqr_x = 100;
int sqr_y = 100;
grid[][] grid = new grid[sqr_x][sqr_y];

int j=1;

void setup() {
  size(1000, 1000);
  createGrid();
  initSqr(new PVector(0, 50));
}

void draw() { 
  showGrid();
  if (j < sqr_y) {
    draww(j++);
  }
  delay(100);
}
