//Got rid of most comments from the copied code because they take up room and I dont wanna see them around the code because ill get confused
Boolean start = false; 

int ballX, ballY;
int ballStartX, ballStartY;
int ballDiameter;
int ballMoveX = 1, ballMoveY = 1;
int paddleWidthRatio; 
int paddleHeightRatio = 6;
int [] paddle = {0, 0}; 
int [] player = new int [4]; 
int [] score = {0, 0}; 

void setup() {
  size(500, 600); 
  screenSizeChecker (); 
  gameStart(); 
}

void draw() {

  
  startStop();

  if (start==true) { 
    playGame();
    score();
  }
}
