class Walker{
  int myX, myY, myColor;
  Walker(){
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    myColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  }
  void walk(){
    if(myX < mouseX) myX += (int)(Math.random() * 2);
    else myX += (int)(Math.random() * 2) - 1;
    if(myY < mouseY) myY += (int)(Math.random() * 2);
    else myY += (int)(Math.random() * 2) - 1;
  }
  void show(){
    fill(myColor);
    ellipse(myX, myY, 50, 50);
  }
}

Walker [] christopher = new Walker[25];
 int charColor = color(255, 255, 255);

void setup(){
  size(500, 500);
  for(int i = 0; i < christopher.length; i++){
    christopher[i] = new Walker();
  }
}

void draw(){
  background(0);
  for(int i = 0; i < christopher.length; i++){
    christopher[i].show();
    christopher[i].walk();
    if(dist(christopher[i].myX, christopher[i].myY, mouseX, mouseY) <= 37.5){
      charColor = christopher[i].myColor;
    }
  }
  
  fill(charColor);
  ellipse(mouseX, mouseY, 25, 25);
}
