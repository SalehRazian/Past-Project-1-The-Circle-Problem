void setup(){
  size(600,600);
  background(0);
}

float r=0.1;
float y=0;
float ux;
float uy;

void draw(){
  translate(0,200);
  scale(6);
  if (r>=0.27){
    //stop();
    stroke(255,0,0,255);
    ux = 300*cos(2*PI*y);
    uy = 300*sin(2*PI*y);
    line(y*300,0,ux,uy);
    y+=0.005;
    if (y>=0.25){
      stop();
    }
  }
  else{
    stroke(255);
    strokeWeight(0.01);
    ux = 300*cos(2*PI*r);
    uy = 300*sin(2*PI*r);
    line(r*300,y,ux,uy);
    r+=0.005;
  }
}
