void setup(){
  size(600,600);
  background(0);
}

float r=0;
float y=0;
float ux;
float uy;

void draw(){
  translate(0,200);
  scale(4);
  stroke(200);
  strokeWeight(0.3);
  ux = 300*cos(2*PI*r);
  uy = 300*sin(2*PI*r);
  line(r*300,y,ux,uy);
  r+=0.01;
  if (r>=1){
    stop();
  }
}
