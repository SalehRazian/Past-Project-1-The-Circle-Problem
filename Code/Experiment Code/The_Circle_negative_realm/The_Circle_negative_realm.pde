void setup(){
  size(600,600);
  background(0);
}

float r=-1;
float y=0;
float ux;
float uy;

void draw(){
  translate(300,300);
  //scale(4);
  stroke(100);
  strokeWeight(0.5);
  ux = 300*cos(2*PI*r);
  uy = 300*sin(2*PI*r);
  line(r*300,y,ux,uy);
  r+=0.01;
  if (r>=1){
    stop();
  }
}
