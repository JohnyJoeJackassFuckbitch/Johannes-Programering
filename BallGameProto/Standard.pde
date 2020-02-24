//square
int squareX = 540;
int squareY = 360;
int squareRadius = 30;
int NegSquareRadius = squareRadius *-1;

//food
int foodRadius = 20;
int NegFoodRadius = foodRadius * -1;
int foodX = 500;
int foodY = 500;

//Enemy
int enemyX = 100;
int enemyY = 100;

//other
int score = 50;
float speed = 17;
int s = second();

//energy
int energy = 200;

//color
int redCSquare = 255;
int greenCSquare = 255;
int blueCSquare = 255;
color squareColor = color(redCSquare,greenCSquare,blueCSquare);
color foodColor = color(50,200,50);
color energyColor = color(0,239,255);

enum GameState {
  GameOver,
  Playing,
}

public GameState state = GameState.Playing;

void setup() {
  size(1920,1080);
  
}


void draw() {
  switch (state) {
    case Playing:
      DrawGamePlay();
      break;
    
    case GameOver:
      DrawGameOver();
      break;
  }
}
