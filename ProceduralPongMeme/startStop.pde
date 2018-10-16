void startStop() {
  if (keyPressed) {
    if (key == '7') {
      start = true;
    }
  }

  if (keyPressed) { // ESC is a keyCoded Varaible and used to quit a game, ASCII is a little easier
    if (key == 'p' || key == 'P') {
      println ("The canvas has exited.");
      exit();
    }
  }
}
