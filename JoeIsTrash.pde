//Joe is Trash

int c1 = color(random(0,255),random(0,255),random(0,255));
int c2 = color(random(0,255),random(0,255),random(0,255));
PImage img = createImage(1000, 800, RGB);
float lerp_value = 0.0;

int bg1[][] = new int[1000][];
int bg2[][] = new int[1000][];

void setup() {
  for (int i = 0; i < 1000; i++) {
    bg1[i] = new int[800];
    bg2[i] = new int[800];
    
    for (int j = 0; j < 800; j++) {
      bg1[i][j] = color(random(0, 255), random(0, 255), random(0, 255));
      bg2[i][j] = color(random(0, 255), random(0, 255), random(0, 255));
    }
  }
  
  size(1000,800);
  background(0);
  
  img.loadPixels(); 
}
 
void draw_trash(int x, int y, float dis_color) {
  color base = lerpColor(c1, c2, lerp_value);
  fill(lerpColor(base, color(0, 0, 0), dis_color));
  
  PFont f = createFont("Broadway", 50);
  textFont(f);
  textSize(50);
  textAlign(CENTER);
  text("Joe is Trash", pixelWidth/2+x, pixelHeight/2+y); 
}
 
void draw(){
  for (int i = 0; i < 1000; i++) {
    for (int j = 0; j < 800; j++) {
      img.pixels[j * 1000 + i] = lerpColor(bg1[i][j], bg2[i][j], lerp_value);
    }
  }
  img.updatePixels();
  image(img, 0, 0);
  
  for (int i = 0; i < 100; i++) {
    draw_trash(100-i, 100-i, 1.0-(i/100.0)/2); 
  }
  
  draw_trash(0, 0, 0);
  
  //Lerp value things
  lerp_value += 0.01;
  
  if (lerp_value > 1) {
    lerp_value = 0;
    c1 = c2;
    c2 = color(random(0,255),random(0,255),random(0,255));
    
    for (int i = 0; i < 1000; i++) {
      for (int j = 0; j < 800; j++) {
        bg1[i][j] = bg2[i][j];
        bg2[i][j] = color(random(0, 255), random(0, 255), random(0, 255));
      }
    }
  }
}
