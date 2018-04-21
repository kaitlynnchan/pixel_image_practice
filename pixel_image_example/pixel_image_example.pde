Square[] squares;
int n = 500; //number of things in the array
PImage image;

void setup(){
  colorMode(HSB); //Hue, Saturation, Brightness
  //fullScreen(FX2D);
  size(800, 800, FX2D);
  image = loadImage("image.jpg");
  squares = new Square[n];
  rectMode(CENTER);
  image(image, 0, 0, width, height);
  noStroke();
  
  int i = 0;
  while(i < n){
    squares[i] = new Square(); // *** constructor ***
    i++;
  }
}

void draw(){
  image(image, 0, 0, width, height);
  
  int i = 0;
  while(i < n){
    squares[i].show(); // *** behaviour funtion ***
    squares[i].act(); // *** behaviour funtion ***
    i++;
  }
}