void measlesProgram() {
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
  text( quit, button3X, button3Y, buttonSide, buttonSide);
  //
  ellipse( leftEyeX, leftEyeY, eyeDimater, eyeDimater );
  ellipse( rightEyeX, rightEyeY, eyeDimater, eyeDimater );
  triangle( noseX1, noseY1, noseX2, noseY2, noseX3, noseY3); 
  strokeWeight(mouthOpen);
  line(mouthX1, mouthY1, mouthX2, mouthX2);
  strokeWeight( mouthReset);
 //
   color measleColour = color( 255, random(0,84), random( 0,103) );
   fill(measleColour);
    measleDiameter = random( smallerDimension*1/100, smallerDimension*1/30 ); 
  measleX = random( backgroundX, backgroundX+backgroundWidth );  
  measleY = random( backgroundY, backgroundY+backgroundWidth );
  while (measleX<= button1X+buttonSide+(measleDiameter/2) && measleY <= button1Y+buttonSide+(measleDiameter/2))
  {
      measleX = random(button1X+buttonSide+(measleDiameter/2), (backgroundX+backgroundWidth)-(measleDiameter/2) );
  }
  noStroke();
  if ( ((measleX-faceX)*(measleX-faceX))+((measleY+faceY)*(measleY+faceY)) <((faceDiameter/2)*(faceDiameter/2) )) {  //Measle satys inside the circle
    if ( measlesON==true ) ellipse( measleX, measleY, measleDiameter, measleDiameter );   
  }
  stroke(1);
  fill(resetColour);
} //End Measle RPogram
