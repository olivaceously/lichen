class Button {
    color c, stroke;
    int xPos;
    int yPos;
    
    Button(color c, int xPos, int yPos) {
       this.c = c;
       //this.stroke = color(255);
       this.xPos = xPos;
       this.yPos = yPos;
    }
    
    color getColor(){
      return this.c;
    }
    
    void render(){
      
      fill(this.c);
      //stroke(this.stroke);
      //strokeWeight(4);
      rect(this.xPos, this.yPos, width * 1/16, height * 1/16);
    }
    
    boolean onButton(int x, int y){
      return ((x > this.xPos && x < this.xPos + width * 1/16) &&
              (y > this.yPos && y < this.yPos + height * 1/16));
    }
    
    void setStroke(color c){
      this.stroke = c;
    }
    
    
}