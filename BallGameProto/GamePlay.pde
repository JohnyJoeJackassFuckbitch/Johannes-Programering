void DrawGamePlay() {
  //Drawing
  background(30);
  textSize(24);
  fill(255);
  text(score,15,30);
  text("If your score becomes 0, you lose!",1460,900);
  text("Move the mouse to avoid the enemy!",1460,950);
  text("Press the mouse button to speed up!",1460,1000);
  
  //energy line
  noStroke();
  fill(energyColor);
  rect(80,30,energy*0.5,7);
  
  //draw square
  fill(redCSquare,greenCSquare,blueCSquare);
  strokeWeight(2);
  rect(squareX, squareY, squareRadius, squareRadius);

  
  //draw food
  fill(foodColor);
  noStroke();
  ellipse(foodX,foodY,foodRadius,foodRadius); 
 
 
  //food collision
  int fDistanceX = squareX - foodX + 15;
  int fDistanceY = squareY - foodY + 15;
  
  if ((fDistanceX <= foodRadius)&&(fDistanceY <= foodRadius)&&(fDistanceX >= NegFoodRadius)&&(fDistanceY >= NegFoodRadius)){
    score = score + 10;
    energy = energy +100;
    foodX = (int)random(width);
    foodY= (int)random(height);
  }
 
  
  //Movement
  int vectorX = mouseX - squareX;
  int vectorY = mouseY - squareY;
  squareX += vectorX/speed;
  squareY += vectorY/speed;

  //Speed up
    if ((mousePressed)&&(energy > 1)) {
      speed = 5;
      energy = energy -5;   
      //colorshift
      redCSquare = 0;
      greenCSquare = 239;
      blueCSquare = 255;
    
    } else {
    speed = 17;
      redCSquare = 255;
      greenCSquare = 255;
      blueCSquare = 255;
   }
  
   //Enemy
   fill(255,0,0);
   noStroke();
   ellipse(enemyX,enemyY,squareRadius,squareRadius);
   
   //pathfinding
   if (enemyX < squareX){
   enemyX += 5;
   } else if (enemyX > squareX){
   enemyX -= 5;
   } 
   
   if (enemyY < squareY) {
   enemyY += 5;
   } else if (enemyY > squareY){
   enemyY -= 5;
   }
   
   //Enemy Collision 
  int eDistanceX = squareX - enemyX;
  int eDistanceY = squareY - enemyY;
  if ((eDistanceX <= squareRadius)&&
     (eDistanceY <= squareRadius)&&
     (eDistanceX >= NegSquareRadius)&&
     (eDistanceY >= NegSquareRadius))
     {
    score = score - 1;
  }
  
  if(score < 0){
    state = GameState.GameOver;
  }
}
