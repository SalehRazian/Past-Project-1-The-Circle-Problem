float[] r = new float[101];
int count=0;

void setup(){
  size(1000,600);
  background(0);
  
  for (float i=0;i<1;i+=0.01){
    r[count]=i;
    count++;
  }
}

float t=0;
float ux;
float uy;

void draw(){
  clear();
  translate(300,300);
  stroke(200);
  strokeWeight(0.5);
  
  noFill();
  strokeJoin(ROUND);
  beginShape();
  for (int i=0;i<100;i++){
    ux= t*cos(2*PI*r[i])*cos(2*PI*r[i]);
    uy= t*sin(2*PI*r[i]);
    vertex(ux+(r[i]*300),uy); //r[i]
  }
  endShape();
  t++;
  if (t>=301){
    stop();
  }
}
