//Global Variables
Float appWidth, appHeight;
float faceX, faceY, faceDiameter; 
float  backgroundX, backgroundY, backgroundWidth, backgroundHeight; 
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDimater; 
float noseX1, noseY1, noseX2, noseY2, noseX3, noseY3;
float mouthX1, mouthY1, mouthX2, mouthY2;
//
void setup() {
  fullScreen;
  appWidth = displayWidth;
  appHeight = displayHeight;
  int smallerDimension = (appWidth >= appHeight) ? appHeight : appWidth;
 println("SmallerDimension is", smallerDimension);
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
    rightEyeX =  smallerDimension; 
    rightEyeY =  smallerDimension; 
    noseX1 =  smallerDimension; 
    noseY1 =  smallerDimension;
    mouthX1 = smallerDimension;
    mouthY1 = smallerDimension; 
    mouthX2 = ;
    mouthY2 = ;
    mouthopen = ; 
    mouthReset = ; 
    
 
 
 
 
 
    //DIVs
    ellipse( faceX, faceY, faceDiameter, faceDiameter) ; 
    //4 Inscribed buttons on the background square not on the circle
    //Solve Isolceles leg length to find rect() and height 
    //
} // End setup
//
void draw() {
  //rect( backgroundX, backgroundY, backgroundWidth, backgroundHeight );
  ellipse( faceX, faceY, faceDiameter, facediameter) :  
  ellipse( faceX, faceY, faceDiameter, faceDiameter ); //LeftEye
  ellipse( rightEyeX, rightEyeY, eyeDimater, eyeDimater ); //RightEye 
  triangle( noseX1, noseY1, noseX2, noseY2, noseX3, noseY3); //Nose
 strokeWeight(mouthopen);
 strokeWeight( mouth2)
 strokeWeight()
  );
} //End draw 
//
void keyPressed() {} //End keyPressed
//
void mousePressed() {} //End mousePressed 
//
//End MAIN Program
