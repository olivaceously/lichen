Button [] buttons;
color current;
int numColors = 6;
int r = 10;

void mouseDragged(){
  fill(current);
  stroke(current);
  arc(mouseX, mouseY, r, r, 0, TWO_PI);
}

void mouseClicked(){
  for(int i = 0; i < numColors; i++){
    if (buttons[i].onButton(mouseX, mouseY)){
       current = buttons[i].getColor();
       buttons[i].setStroke(color(0));
    } else {
        buttons[i].setStroke(color(255));
    }
  }
}

void setup() {
  size(600, 300);
  background(255);
  
  color [] colors = {color(#bf0909), color(#e57d29), color(#f9e507), color(#b8ef2d), color(#118e0f), color(#0b3fa0)};
  buttons = new Button[numColors];
  
  for (int i = 0; i < numColors; i++) {
    Button b = new Button(colors[i], width * 7/8, height * i/numColors + 20); 
    buttons[i] = b;
  }
  
  current = color(#bf0909);
  buttons[0].setStroke(color(0));
}

void draw() {
  for (int i = 0; i < numColors; i++) {
    buttons[i].render();
  }
  



}