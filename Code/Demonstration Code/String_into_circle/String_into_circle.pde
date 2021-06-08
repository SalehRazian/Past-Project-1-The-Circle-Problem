float[] r = new float[101];
float[][] c = new float[101][2];
int count=0;

void setup(){
  size(600,600);
  background(0);
  
  for (float i=0;i<1;i+=0.01){
    r[count]=i;
    count++;
  }
  count=0;
  for (float i=0;i<1;i+=0.01){
    c[count][0]= 300*cos(2*PI*r[count]);
    c[count][1]= 300*sin(2*PI*r[count]);
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
    vertex((r[i]*300)+(t*(c[i][0]-(r[i]*300))),0+(t*(c[i][1]-0))); 
  }
  endShape();
  t+=0.001;
  if (t>=1){
    stop();
  }
}
