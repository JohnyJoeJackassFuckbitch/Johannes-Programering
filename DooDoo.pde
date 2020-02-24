//Doo Doo

int c = 0;

void setup() {
  size(1000,1000); 
}

void draw(){
  noStroke();
   
  colorMode(RGB, 1000);
  
  for (int i = 0; i < 1000; i++) {
    for (int j = 0; j < 1000; j++) {
      set(i, j, color(i + c & 5000, j + c & 5000, 0));
    }
  }
  
  c += 20;
}
