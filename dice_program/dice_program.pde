void setup(){
size(1080,720);
}

int D4 = 0;
int D6 = 0;
int D8 = 0;
int D10 = 0;
int D12 = 0;
int D20 = 0;
void draw() {
  background(255);
  fill(0, 0, 0, 255);
  
  textSize(64);
  text(D4,320,180);
  text("D4",297,100);
  text(D6,520,180);
  text("D6",497,100);
  text(D8,720,180);
  text("D8",697,100);
  text(D10,320,480);
  text("D10",280,400);
  text(D12,520,480);
  text("D12",480,400);
  text(D20,720,480);
  text("D20",680,400);
  
  
  textSize(16);
  text("Press q",310,125);
  text("Press w",510,125);
  text("Press e",710,125);
  text("Press a",310,425);
  text("Press s",510,425);
  text("Press d",710,425);
}

void keyPressed(){
  if (key == 'q'){
  D4 = (int)random(1,5);
  }
  if (key == 'w'){
  D6 = (int)random(1,7);
  }
   if (key == 'e'){
  D8 = (int)random(1,9);
  }
  if (key == 'a'){
  D10 = (int)random(1,11);
  }
  if (key == 's'){
  D12 = (int)random(1,13);
  }
  if (key == 'd'){
  D20 = (int)random(1,21);
  }
}
