void readArduinoButtons() {
  if (arduino_port.available() > 0) {
    val = arduino_port.read();    
    println("reading in : ", int(val));
    if (int(val) < 12) {
      map_mode = int(val);
      newMaps();
    } 
    if (int(val) == 16) {
      print("button press : ");
      // 20% of the time change color_separated to none
      if (random(100)  < 20) {
        color_separated = false;
        newMaps();
      } else {
        color_separated = true;
        newMaps();
      }
      // also 10% of the time the button is pressed the image
      // should be tweeted
      if (random(100) < 10){
        println("WOULD HAVE TWEETED"); 
        //saveScreenShot();
      }
    }
    while (arduino_port.available() > 0) {
      arduino_port.read();
    }
  }
}


void flipColorSeparation() {
  color_separated = !color_separated;
  newMaps();
}

void increaseFrameRate() {
  num_frames = num_frames * 2;
  if (num_frames > 256) {
    num_frames = 8;
  }
  overfill_amount = 256 / num_frames;
  print("overfill : ", overfill_amount);
  println(" num_frames : ", num_frames);
}

void decreaseFrameRate() {
  num_frames = num_frames/2;
  if (num_frames < 8) {
    num_frames = 256;
  }
  overfill_amount = 256/num_frames;
  print("overfill : ", overfill_amount);
  println(" num_frames : ", num_frames);
}

void keyPressed() {
  if (key == 'r') show_red_map = !show_red_map;
  if (key == 'g') show_green_map = !show_green_map;
  if (key == 'b') show_blue_map = !show_blue_map;
  if (key == 'n') {
    newMaps();
  }
  if (key == 'm') {
    // go to the next mapModes
    map_mode++;
    if (map_mode >= num_map_modes) {
      map_mode = 0;
    }
    newMaps();
  }
  if (key == 't') {
    saveScreenShot();
  }
  if (key == 'c') {
    flipColorSeparation();
  }
  if (key == '=') {
    increaseFrameRate();
  }
  if (key == '-') {
    decreaseFrameRate();
  }
}

void checkButtonsAndKeys() {
  // check keys
  if (show_red_map) image(red_map, 0, 0);
  if (show_green_map) image(green_map, 0, 0);
  if (show_blue_map) image(blue_map, 0, 0);
}