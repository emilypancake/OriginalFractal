public void petal(float x, float y, float w, boolean first, int circleRed, int petalRed){
  w *= .8;
  translate(x, y);
  rotate(PI/13);
  fill(circleRed, 0, 0);
  if(first == true){    
    rotate(PI/6);
    fill(150, 0, 0);
    rect(0, 0, w, w);
    rotate(PI/5);
    fill(170, 0, 0);
    rect(0, 0, w, w);
    rotate(-11*PI/30);
  }else{
    ellipse(0, 0, w * 1.3, w * 1.3);
  }
  fill(petalRed, 0, 0);
  rect(0, 0, w*0.9, w*0.9);
  translate(-x, -y); 
}



public void setup(){
   size(500, 500);
   rectMode(CENTER);
}
public void roseRepeat(float exponent, int circleRed, int petalRed){
  if(exponent == 1){
    petal(width/2, height/2, (float)Math.pow(0.8, exponent) * width, true, circleRed, petalRed);
  }else{
    petal(width/2, height/2, (float)Math.pow(0.8, exponent) * width, false, circleRed, petalRed);
  }
  if(exponent > 16){
    return;
  }
  roseRepeat(exponent + 2.1, circleRed - 10, petalRed - 7);
}



public void draw(){
   roseRepeat(1, 170, 200);
}
