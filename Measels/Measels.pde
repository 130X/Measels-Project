//Global Variables
Float appWidth, appHeight;
float faceX, faceY, faceDiameter; 
float  backgroundX, backgroundY, backgroundWidth, backgroundHeight; 
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDimater; 
float noseX1, noseY1, noseX2, noseY2, noseX3, noseY3;
float mouthX1, mouthY1, mouthX2, mouthY2, mouthopen, mouthReset;
color resetcolour=FFFFFF;
//
void setup() {
  fullScreen;
  appWidth = displayWidth;
  appHeight = displayHeight;
  int smallerDimension = (appWidth >= appHeight) ? appHeight : appWidth;
  println("SmallerDimension is", smallerDimension); // started as local variable 
  //
  ///Population 
    faceX = appWidth*1/2;  
    faceY = appHeight*1/2; 
    faceDiameter = smallerDimension; 
    backgroundX = faceX - faceDiameter*1/2;
    backgroundY = faceY - faceDiameter*1/2; 
    backgroundHeight = faceDiameter;  
    backgroundWidth = faceDiameter;     
    leftEyeX =  faceX+smallerDimension*1/4;
    leftEyeY =  faceX+smallerDimension*3/4; 
    eyeDimater = smallerDimension*1/20; 
    rightEyeX =  backgroundX+smallerDimension*3/4; 
    rightEyeY =  leftEyeY;  
    noseX1 =  faceX; 
    noseY1 =  rightEyeY;
    noseX2 = leftEyeX;
    noseY2 = faceY;
    noseX3 = rightEyeX; 
    noseY3 = faceY;
    mouthX1 = noseX2;
    mouthY1 = backgroundY+smallerDimension*3/4; 
    mouthX2 = noseX3;
    mouthY2 = mouthY1;
    mouthopen = smallerDimension*1/4; 
    mouthReset = smallerDimension/smallerDimension; //1=reset 
    measleX = random( 0 appWidth);
    measleY = random( 0, appHeight);
    measeDoameter = random(smallerDimension*1/30, smallerDimension*1/10); 
    //measleX= ; 
    //measle = ;
    //measleDiameter = ;
    //DIVs
    ellipse( faceX, faceY, faceDiameter, faceDiameter) ; 
    //4 Inscribed buttons on the background square not on the circle
    //Solve Isolceles leg length to find rect() and height 
    //
} // End setup
//
void draw() {
  //rect( backgroundX, backgroundY, backgroundWidth, backgroundHeight );
  //power of 'void draw'
  ellipse( faceX, faceY, faceDiameter, faceDiameter); 
  ellipse( faceX, faceY, faceDiameter, faceDiameter ); //LeftEye
  ellipse( rightEyeX, rightEyeY, eyeDimater, eyeDimater ); //RightEye 
  triangle( noseX1, noseY1, noseX2, noseY2, noseX3, noseY3); //Nose
 strokeWeight(mouthopen);
 line(mouthX1, mouthY1, mouth, mouth);
 strokeWeight( mouth2);
 //
 color measlecolour = color(255, random(0,84), random( 0,103);
 fill(measleColour);
 measleX
 measleY
 measleDiameter = random( smallerDimension ); 
 noStroke();
 ellipse( measleX, measleY, measledDiameter ); 
 stroke( 1 ); //default is 1
 fill();
} //End draw 
//
void keyPressed() {} //End keyPressed
//
void mousePressed() {} //End mousePressed 
//
//End MAIN Program
