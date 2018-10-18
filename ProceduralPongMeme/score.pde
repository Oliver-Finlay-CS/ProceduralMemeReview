void score () {
  
  if (ballX == 0+(ballDiameter/2) || ballX == width-(ballDiameter/2)) { 
    if (ballX == 0+(ballDiameter/2)) { 
      score[1] += 1;
    }
    if (ballX == width-(ballDiameter/2)) { 
      score[0] += 1;
    }
    
    ballX = ballStartX;
    ballY = ballStartY;
    
    //Randomizing the initial ball movement in four directions, commented out as an intentional mistake
    //And this one shall not be released from the shackles of the comment line because I did this with another line already
    /*
    ballMoveX = int (random (-2, 2)); //Notice: this is copied code, would be better as a procedure
    while (ballMoveX == 0) { //Notice: this is copied code, would be better as a procedure
      ballMoveX = int (random (-2, 2)); //Notice: this is copied code, would be better as a procedure
    } //will set the beginning of the draw loop
    ballMoveY = int (random (-2, 2)); //Notice: this is copied code, would be better as a procedure
    while (ballMoveY == 0) { //Notice: this is copied code, would be better as a procedure
      ballMoveY = int (random (-2, 2)); //Notice: this is copied code, would be better as a procedure
    }
    */
    
    player[1] = height/2 - height/paddleHeightRatio/2;
    
    //Old Debugging Code
    //println ("Score Board is: " + score[0] + " Player-1" + "     " + score[1] + " Player-2");
    //println("Middle: " + player[1]);
  }

  textSize(0.1*width);
  text("Player 1:\n" + score[0], (width*1/5)-(0.1*width), height*1/5); //Printing to ration of screen, Player 1 is minusing width of font
  text(score[1], width*4/5, height*1/5);
  println ("Score Board is: " + score[0] + " Player-1" + "     " + score[1] + " Player-2");
}
