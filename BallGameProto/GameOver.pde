void DrawGameOver(){
  //Drawing
  background(30);
  textSize(36);
  fill(255);
  text("You Lost! Press something to try again.",150,300);
  
  float coinFlip = random(-1,1);
  
  if (keyPressed){
    state = GameState.Playing;
    score = score +100;
    
    if(coinFlip >= 0){
    enemyX = enemyX -100;
    enemyY = enemyY -100;
    } 
    if (coinFlip <= 0){
    enemyX = enemyX +100;
    enemyY = enemyY +100;
    }
    
    if (coinFlip == 0){
    enemyX = enemyX +100;
    enemyY = enemyY -100;
    }
  }
}
