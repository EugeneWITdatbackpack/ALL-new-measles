//Global Variables

int faceX;
int faceY;
int leftEyeX;
int leftEyeY;
int rightEyeX;
int rightEyeY;
int eyeDiameter;
float measlesX, measlesY, measlesDiamter;


color red = #FF0307;
color white = #FFFFFF;


void setup() {
size(500, 600);
faceX = width/2;
 faceY= height/2;
 leftEyeX = width/4;
 leftEyeY = height/4;
 rightEyeX = width*3/4;
 rightEyeY = height/4;
 eyeDiameter = width/8

  ellipse(width/2, height/2, width, width); //Face
  ellipse(width/4, height/4, width/8, width/8); //Left Eye
  ellipse(width*3/4, height/4, width/8, width/8); //Rigtht Eye
  //line(x-point1, y-point1, x-point2, y-point2);
  line(width/4, height*3/4, width*3/4, height*3/4); //mouth, only place for this formulae
  //triangle(x-point1, y-point1, x-point2, y-point2, x-point3, y-point3); 
  triangle(width*2/4, height*1/3, width*3/4, height*2/3, width*1/4, height*2/3); //nose, broken a little, only place for this formulae
  measlesDiamter = width*1/60; //Other measles varaibles need to be in draw()

//ButtonRectangle();

}

void draw() {

 //Arithmetic First
  measlesArithmetic();
  
  //Draw Measles
   drawMeasles();
  

  //Drawing Second
  fill(white); //White, resetts fill to default
  ellipse(leftEyeX, leftEyeY, eyeDiameter, eyeDiameter);
  ellipse(rightEyeX, rightEyeY, eyeDiameter, eyeDiameter);
  triangle(width*2/4, height*1/3, width*3/4, height*2/3, width*1/4, height*3/4); //nose, broken a little, only place for this formulae
  strokeWeight(50); //big mouth
  line(width/4, height*3/4, width*3/4, height*3/4); //mouth, only place for this formulae
  strokeWeight(1); //default 
}
