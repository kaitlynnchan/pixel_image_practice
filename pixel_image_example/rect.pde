class Square {
  //instance variables, or 'feilds'
  float x, y, d;
  color c;
  
  //Constructor: function that has the same name as the class(case sensitive) and no 'void' that initializes the instance variables
  Square(){
    x = random(0, width);
    y = random(0, height);
    c = get((int)x, (int)y);
  }
  
  //Behaviour Functions: regular functions that act on the instance variables
  void show(){
    fill(c);
    rect(x, y, d, d);
  }
  
  void act(){
    d = 1000/dist(x, y, mouseX, mouseY);
    //d = min(d, 50);
    if(d >= 100){
      d = 100;
    }
  }
}