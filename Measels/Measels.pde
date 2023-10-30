//Global Variables
Float appWidth, appHeight;
float faceX, faceY, faceDiameter; 
float  backgroundX, backgroundY, backgroundWidth, backgroundHeight; 
float leftEyeX, leftEyeX, rightEyeX, rightEyeY, eyeDimater; 
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
    leftEyeX = ;
    leftEyeY = ;
    eyedimater = ; 
    rightEye = ; 
    rightEye = ; 
    noseX1 = ; 
    noseY1 = 
    
    
    
    
    
    
    
    
    
    
    //
    //DIVs
    //4 Inscribed buttons on the background square not on the circle
    //Solve Isolceles leg length to find rect() and height 
    //
} // End setup
//
void draw() {
  rect( backgroundX, backgroundY, backgroundWidth, backroundHeight );
  ellipse( faceX, faceY, faceDiameter, faceDiameter );
  ellipse()
  ellipse()
  ellipse()
} //End draw 
//
void keyPressed() {} //End keyPressed
//
void mousePressed() {} //End mousePressed 
//
//End MAIN Program
