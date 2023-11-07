/* Measles To Do List
 - finish to println of button 1-3
 - Button 1: start measles code, draw face circle once (singleIF with Boolean)
 - Button 2: Stop drawing measles code
 - Button 3: Quit with goodbye screen (delay of draw() code)
 */
//Global variables
int  appWidth, appHeight, smallerDimension; 
float faceX, faceY, faceDiameter; 
float backgroundX, backgroundY, backgroundWidth, backgroundHeight; 
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDimater; 
float noseX1, noseY1, noseX2, noseY2, noseX3, noseY3;
float mouthX1, mouthY1, mouthX2, mouthY2, mouthopen, mouthreset;
float measleX, measleY, measleDiameter; 
float button1X, button1Y, button2X, button2Y, button3X, button3Y, buttonSide; 
color Pastelblue=#74BCF5, Pinegreen = #149B3B, black=#000000, resetColour=#FFFFFF;
color hoverOverColour=resetColour;
String start="Start", stop="STOP", quit="X";
PFont buttonFont; 
//
void setup() {
  size(700,500);
  appWidth = width;   
  appHeight = height;
  smallerDimension = (appWidth >= appHeight) ? appHeight : appWidth;
  println("Smaller Dimension is", smallerDimension);
  //
  //Population 
    faceX = appWidth*1/2;  
    faceY = appHeight*1/2; 
    faceDiameter = smallerDimension; 
    backgroundX = faceX - faceDiameter*1/2;
    backgroundY = faceY - faceDiameter*1/2; 
    backgroundWidth= faceDiameter;  
    backgroundHeight = faceDiameter;     
    leftEyeX = backgroundX+smallerDimension*1/4;
    leftEyeY = backgroundY+smallerDimension*1/4;
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
    mouthopen = smallerDimension*1/8; 
    mouthreset = smallerDimension/smallerDimension; 
    buttonFont = createFont("MalgunGothic-Semilight-48",54); 
   //
   //DIVs
   rect( backgroundX, backgroundY, backgroundWidth, backgroundHeight );
   ellipse( faceX, faceY, faceDiameter, faceDiameter ); 
    button1X = backgroundX;
    button1Y = backgroundY; 
    button2X = backgroundX+faceDiameter-buttonSide; 
    button2Y = button1Y; 
    button3X = button2X;
    button3Y = backgroundY+faceDiameter-buttonSide;
    //buttonSide =  smallerDimension/2-sqrt(sq(smallerDimension/2)/2);
    rect( button1X, button1Y, buttonSide, buttonSide );
    println(backgroundX, smallerDimension, smallerDimension/2, sq( smallerDimension/2 ), sq( smallerDimension/2 ) /2, sqrt( sq( smallerDimension/2 ) /2 ), smallerDimension/2-sqrt(sq(smallerDimension/2)/2) );
     //
} // End setup
//
void draw() {
  //Text Code
  //...An Error? hoveover allowed measles into other buttons make sure he doesnt do it again 
  if ( mouseX>button1X && mouseX<button1X+buttonSide && mouseY>button1Y  && mouseY>button1Y+buttonSide ) { 
    hoverOverColour = Pastelblue;
  } else if ( mouseX>button2X &&  mouseX<button2X+buttonSide  && mouseY>button2Y &&  mouseY>button2Y+buttonSide ) { 
    hoverOverColour = Pastelblue;
  } else if ( mouseX>button3X && mouseX<button3X+buttonSide && mouseY>button3Y && mouseY>button3Y+buttonSide ) { 
    hoverOverColour = Pinegreen; 
  } else { 
    fill( resetColour );
  }
  
  fill(black);
  textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  int  size = 22;
   textFont(buttonFont, size);
  text( start, button1X, button1Y, buttonSide, buttonSide);
  text( stop, button2X, button2Y, buttonSide, buttonSide);
  text( X, button3X, button3Y, buttonSide, buttonSide);
  //
  ellipse( leftEyeX, leftEyeY, eyeDimater, eyeDimater );
  ellipse( rightEyeX, rightEyeY, eyeDimater, eyeDimater );
  triangle( noseX1, noseY1, noseX2, noseY2, noseX3, noseY3); 
  strokeWeight(mouthopen);
  line(mouthX1, mouthY1, mouthX2, mouthX2);
  strokeWeight( mouthreset);
 //
   color measleColour = color( 255, random(0,84), random( 0,103) );
   fill(measleColour);
    measleDiameter = random( smallerDimension*1/100, smallerDimension*1/30 ); 
  measleX = random( backgroundX, backgroundX+backgroundWidth );  
  measleY = random( backgroundY, backgroundY+backgroundWidth );
  println( "start", measleX, measleY, measleDiameter);
  //
  //
  //
  
  noStroke();
  ellipse( measleX, measleY, measleDiameter, measleDiameter );
  stroke(1);
  fill(resetColour);    
} //End draw 
//
void keyPressed() {
  if ( key==CODED && keyCode==SPACE);  //SPACEB-BAR *press space and the measles start*
  if () ;
  if ( );
} //End keyPressed
//
void mousePressed() {
  if ( mouseX> mouseX< mouseY> mouseY<); // "to start" 
  if () ;
  if ( );
} //End mousePressed 
//
//End MAIN Program
