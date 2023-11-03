//global variables 
int  appWidth, appHeight, smallerDimension; 
float faceX, faceY, faceDiameter; 
float  backgroundX, backgroundY, backgroundWidth, backgroundHeight; 
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDimater; 
float noseX1, noseY1, noseX2, noseY2, noseX3, noseY3;
float mouth, mouthX1, mouthY1, mouthX2, mouthY2, mouthopen, mouthReset;
float measleX, measleY, measleDiameter; 
color resetColour=#FFFFFF;
//
void setup() {
  size(800,600);
  appWidth = displayWidth;   
  appHeight = displayHeight;
  //Ternary Operator
  smallerDimension = (appWidth >= appHeight) ? appHeight : appWidth;
  println("Smaller Dimension is", smallerDimension);
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
    leftEyeY =  faceX+smallerDimension*1/4; 
    eyeDimater = smallerDimension*1/11; 
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
    mouthReset = smallerDimension/smallerDimension; 
   //
   //DIVs
    ellipse( faceX, faceY, faceDiameter, faceDiameter ); 
    rect( backgroundX, backgroundY, smallerDimension/2-sqrt(sq(smallerDimension/2)/2), smallerDimension/2-sqrt( sq(smallerDimension/2)/2) );
    println(backgroundX, smallerDimension, smallerDimension/2, sq(smallerDimension/2), sq(smallerDimension/2) /2, sqrt(sq( smallerDimension/2 ) /2 ), smallerDimension/-sqrt(sq(smallerDimension/2)/2) ); 
} // End setup
//
void draw() {
  rect( backgroundX, backgroundY, backgroundWidth, backgroundHeight); 
  ellipse( faceX, faceY, faceDiameter, faceDiameter); 
  ellipse( faceX, faceY, faceDiameter, faceDiameter ); //LeftEye
  ellipse( rightEyeX, rightEyeY, eyeDimater, eyeDimater ); //RightEye 
  triangle( noseX1, noseY1, noseX2, noseY2, noseX3, noseY3); //Nose
  strokeWeight(mouthopen);
  line(mouthX1, mouthY1, mouth, mouth);
  strokeWeight( mouthReset);
 //
   color measleColour = color( 255, random(0,84), random( 0,103) );
   fill(measleColour);
   measleX = random( 0, appWidth );
  measleY = random( 0, appHeight );
   measleDiameter = random( smallerDimension*1/100, smallerDimension*1/30); 
  noStroke();
  ellipse( measleX, measleY, measleDiameter, measleDiameter );
  stroke(1);
  fill(resetColour);    
} //End draw 
//
void keyPressed() {} //End keyPressed
//
void mousePressed() {} //End mousePressed 
//
//End MAIN Program
