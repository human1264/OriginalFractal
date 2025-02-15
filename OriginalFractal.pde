void setup(){
size(500,500);
}
int c = 50;
void draw(){
background(255,255,255);
//circle(200,200,c);
fractal(c,width/2,height/2);
}
void keyPressed(){
if(key == 'a'){c +=10;}
else{c -= 10;}
}
public void fractal(int size, int centx, int centy){
if(size <= 3){
circle(centx, centy - size, size);
circle(centx + size/1.46, centy - size/1.46, size);
circle(centx + size, centy, size); 
circle(centx + size/1.46, centy + size/1.46, size);
circle(centx, centy + size, size);
circle(centx - size/1.46, centy + size/1.46, size);
circle(centx - size, centy, size);
circle(centx - size/1.46, centy - size/1.46, size);


}
else{
circle(centx, centy - size, size);
circle(centx + size/1.46, centy - size/1.46, size);
circle(centx + size, centy, size); 
circle(centx + size/1.46, centy + size/1.46, size);
circle(centx, centy + size, size);
circle(centx - size/1.46, centy + size/1.46, size);
circle(centx - size, centy, size);
circle(centx - size/1.46, centy - size/1.46, size);
fractal(size * 3/4,centx,centy);
}


}


public void circle(int x, int y, int r){
ellipse(x,y,2*r,2*r);
}
