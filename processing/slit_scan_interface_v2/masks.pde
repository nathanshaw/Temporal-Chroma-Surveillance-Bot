void perlinNoiseMasks() {
  if (color_separated) {
    print("" + map_mode + " - ");
    println("Perlin Noise: separated");
    red_map = makeNoiseMap();
    green_map = makeNoiseMap();
    blue_map = makeNoiseMap();
  } else {
    print("" + map_mode + " - ");
    println("Perlin Noise: not separated");
    green_map = blue_map = red_map = makeNoiseMap();
  }
}

void mostlyVerticalMasks() {
  if (color_separated) {
    print("" + map_mode + " - ");
    println("Vertical Maps: separated");
    if (random(100) < 94) {
      red_map = makeVertMap();
    } else {
      red_map = makeHorMap();
    }
    if (random(100) < 94) {
      green_map = makeVertMap();
    } else {
      green_map = makeHorMap();
    }
    if (random(100) < 94) {
      blue_map = makeVertMap();
    } else {
      blue_map = makeHorMap();
    }
  } else {
    print("" + map_mode + " - ");
    println("Vertical Map: not separated");
    green_map = blue_map = red_map = makeVertMap();
  }
}

void mostlyHorizontalMasks() {
  if (color_separated) {
    print("" + map_mode + " - ");
    println("Horizontal Maps: separated");
    if (random(100) < 94) {    
      red_map = makeHorMap();
    } else {
      red_map = makeVertMap();
    }
    if (random(100) < 94) {
      green_map = makeHorMap();
    } else {
      green_map = makeVertMap();
    }
    if (random(100) < 94) {
      blue_map = makeHorMap();
    } else {
      blue_map = makeVertMap();
    }
  } else {
    print("" + map_mode + " - ");
    println("Horizontal Maps: not separated");
    green_map = blue_map = red_map = makeHorMap();
  }
}

void mostlyDiagonalMasks() {
  if (color_separated) {
    print("" + map_mode + " - ");
    println("Diagonal Maps: separated");
    float chance = random(100);
    if (chance < 90) {    
      red_map = makeDiagMap();
    } else if (chance < 95) {
      red_map = makeHorMap();
    } else {
      red_map = makeVertMap();
    }
    chance = random(100);
    if (chance < 90) {
      green_map = makeDiagMap();
    } else if (chance < 95) {
      green_map = makeHorMap();
    } else {
      green_map = makeVertMap();
    }
    chance = random(100);
    if (chance < 90) {
      blue_map = makeDiagMap();
    } else if (chance < 95) {
      blue_map = makeVertMap();
    } else {
      blue_map = makeHorMap();
    }
  } else {
    print("" + map_mode + " - ");
    println("Diagonal Maps: not separated");
    green_map = blue_map = red_map = makeDiagMap();
  }
}

void doublePerlinNoiseMasks() {
  if (color_separated) {
    print("" + map_mode + " - ");
    println("Double Noise - separated");
    red_map = makeDoubleNoiseMap();
    green_map = makeDoubleNoiseMap();
    blue_map = makeDoubleNoiseMap();
  } else {
    print("" + map_mode + " - ");
    println("Double Noise - not separated");
    red_map = makeDoubleNoiseMap();
    green_map = blue_map = red_map;
  }
}

void whiskMask() {
  if (!color_separated) {
    print("" + map_mode + " - ");
    println("Whisk map");
    red_map = makeWhiskMap();
    green_map = blue_map = red_map;
  } else {
    print("" + map_mode + " - ");
    println("Whisk map");
    red_map = makeWhiskMap();
    blue_map = makeWhiskMap();
    green_map = makeWhiskMap();
  }
}

void currentFrameMasks() {
  // TODO : space out which frames are grabbed for color separated version
  if (color_separated) {
    print("" + map_mode + " - ");
    println("Feedback: separated");
    red_map = makeCurrentFrameMap();
    green_map = makeCurrentFrameMap();
    blue_map = makeCurrentFrameMap();
  } else {
    print("" + map_mode + " - ");
    println("Feedback: not separated");
    green_map = blue_map = red_map = makeCurrentFrameMap();
  }
}

void randomMasks() {
  print("" + map_mode + " - ");
  println("Random mask:");
  float chance1 = random(90);
  if (chance1 < 10) {
    red_map = makeNoiseMap();
  } else if (chance1 < 20) {
    red_map = makeHorMap();
  } else if (chance1 < 30) {
    red_map = makeVertMap();
  } else if (chance1 < 40) {
    red_map = makeDiagMap();
  } else if (chance1 < 50) {
    red_map = makeWhiskMap();
  } else if (chance1 < 60) {
    red_map = makeDoubleNoiseMap();
  } else if (chance1 < 70) {
    red_map = makeBoxMap();
  } else if (chance1 < 80) {
    red_map = makeCircleMap();
  } else if (chance1 < 90) {
    red_map = loadMapFromFile();
  }
  chance1 = random(80);
  if (chance1 < 10) {
    blue_map = makeNoiseMap();
  } else if (chance1 < 20) {
    blue_map = makeHorMap();
  } else if (chance1 < 30) {
    blue_map = makeVertMap();
  } else if (chance1 < 40) {
    blue_map = makeDiagMap();
  } else if (chance1 < 50) {
    blue_map = makeWhiskMap();
  } else if (chance1 < 60) {
    blue_map = makeDoubleNoiseMap();
  } else if (chance1 < 70) {
    blue_map = makeBoxMap();
  } else if (chance1 < 80) {
    blue_map = makeCircleMap();
  } else if (chance1 < 90) {
    blue_map = loadMapFromFile();
  }
  chance1 = random(80);
  if (chance1 < 10) {
    green_map = makeNoiseMap();
  } else if (chance1 < 20) {
    green_map = makeHorMap();
  } else if (chance1 < 30) {
    green_map = makeVertMap();
  } else if (chance1 < 40) {
    green_map = makeDiagMap();
  } else if (chance1 < 50) {
    green_map = makeWhiskMap();
  } else if (chance1 < 60) {
    green_map = makeDoubleNoiseMap();
  } else if (chance1 < 70) {
    green_map = makeBoxMap();
  } else if (chance1 < 80) {
    green_map = makeCircleMap();
  } else if (chance1 < 90) {
    green_map = loadMapFromFile();
  }
}

void fileMasks() {
  if (color_separated) {
    print("" + map_mode + " - ");
    println("Famous Maps: separated");
    green_map = blue_map = red_map = loadMapFromFile();
  } else {
    print("" + map_mode + " - ");
    println("Famous Maps: not separated");
    green_map = blue_map = red_map = loadMapFromFile();
  }
}

void boxMasks() {
  // TODO : make it so the size of the boxes changes with each drawing...
  if (color_separated) {
    print("" + map_mode + " - ");
    println("Box Masks: separated");
    red_map = makeBoxMap();
    green_map = makeBoxMap();
    blue_map = makeBoxMap();
  } else {
    print("" + map_mode + " - ");
    println("Box Masks: not separated");
    green_map = blue_map = red_map = makeBoxMap();
  }
}

void geometryMasks() {
  if (color_separated) {
    print("" + map_mode + " - ");
    println("Geometry Maps: separated");
    float chance = random(100);
    if (chance < 33) {    
      red_map = makeCircleMap();
    } else if (chance < 66) {
      red_map = makeRectangleMap();
    } else {
      red_map = makeTriangleMap();
    }
    chance = random(100);
    if (chance < 33) {
      green_map = makeCircleMap();
    } else if (chance < 66) {
      green_map = makeRectangleMap();
    } else {
      green_map = makeTriangleMap();
    }
    chance = random(100);
    if (chance < 33) {
      blue_map = makeCircleMap();
    } else if (chance < 66) {
      blue_map = makeRectangleMap();
    } else {
      blue_map = makeTriangleMap();
    }
  } else {
    print("" + map_mode + " - ");
    println("Geometry Masks: not separated");
    green_map = blue_map = red_map = makeDiagMap();
  }
}

void changingFrameMasks() {
  // TODO : needs to be implimented
}

void newMaps() {
  if (map_mode == 0) {
    perlinNoiseMasks();
  } else if (map_mode == 1) {
    mostlyVerticalMasks();
  } else if (map_mode == 2) {
    mostlyHorizontalMasks();
  } else if (map_mode == 3) {
    doublePerlinNoiseMasks();
  } else if (map_mode == 4) {
    whiskMask();
  } else if (map_mode == 5) {
    mostlyDiagonalMasks();
  } else if (map_mode == 6) {
    currentFrameMasks();
  } else if (map_mode == 7) {
    randomMasks();
  } else if (map_mode == 8) {
    fileMasks();
  } else if (map_mode == 9) {
    boxMasks();
  } else if (map_mode == 10) {
    geometryMasks();
  } else if (map_mode == 11) {
    changingFrameMasks();
  } else {
    println("Map_mode ", map_mode, " not implimented");
  }
}

void changeDifference() {
  if (difference == 0) {
    difference = 1;
  } else {
    difference = 0;
  }
}

PImage makeCircleMap() {
  PImage cMap = createImage(width, height, RGB);
  cMap.loadPixels();
  for (int x = 0; x < cMap.width; x++) {
    int factor = int(random(256));
    for (int y = 0; y < cMap.height; y++) {
      int step = int((float(x)/cMap.width)*factor) + int((float(y)/cMap.height)*127);
      if (x%2 == 1) {
        cMap.pixels[x + y*width] = 255 << 24 | step << 16 | step << 8 | step;
      } else {
        cMap.pixels[x*height + y] = 255 << 24 | step << 16 | step << 8 | step;
      }
    }
  }
  cMap.updatePixels();
  return cMap;
}

PImage makeWhiskMap() {
  PImage cMap = createImage(width, height, RGB);
  cMap.loadPixels();
  for (int x = 0; x < cMap.width; x++) {
    int factor = int(random(256));
    for (int y = 0; y < cMap.height; y++) {
      int step = int((float(x)/cMap.width)*factor) + int((float(y)/cMap.height)*127);
      cMap.pixels[x*height + y] = 255 << 24 | step << 16 | step << 8 | step;
    }
  }
  cMap.updatePixels();
  return cMap;
}

PImage makeTVVisionMap() {
  //create horizontal gradient map
  int direction = int(random(2));
  println(direction);
  PImage hmap = createImage(width, height, RGB);
  hmap.loadPixels();
  int time_length = int(random(70, 256));
  int random_amount = 1;
  if (random(10) < 2) {
    random_amount = int(random(0, 10));
  }
  for (int x = 0; x < hmap.width; x++) {
    for (int y = 0; y < hmap.height; y++) {
      int g;
      if (direction == 0) {
        g = int((float(y)/hmap.height) * time_length) - random_amount + int(random(random_amount));
      } else {
        g = int(((height - float(y))/hmap.height) * time_length) - random_amount + int(random(random_amount));
      }
      int argb = 255 << 24 | g << 16 | g << 8 | g; 
      hmap.pixels[x*height + y] = argb;
    }
  }
  hmap.updatePixels();
  return hmap;
}

PImage makeHorMap() {
  //create vertical gradient map
  PImage dmap = createImage(width, height, RGB);
  dmap.loadPixels();
  // 255 is max, more than 255 will leave gaps
  int direction = int(random(2));
  print("direction : ", direction, " ");
  int time_length = int(random(70, 256));
  int random_amount = 1;
  if (random(10) < 2) {
    random_amount = int(random(0, 10));
  }
  println("times length is :", time_length, " - random_amount is : ", random_amount);
  int g;
  for (int x = 0; x < dmap.width; x++) {
    for (int y = 0; y < dmap.height; y++) {
      if (direction == 0) {
        g = int((float(dmap.width - x)/width)*time_length) - random_amount + int(random(random_amount));// + (float(dmap.height - y)/height))/2 * 255) + random(0, 1));
      } else {
        g = int((float(x)/width)*time_length) - random_amount + int(random(random_amount));// + (float(dmap.height - y)/height))/2 * 255) + random(0, 1));
      }
      int argb = 255 << 24 | g << 16 | g << 8 | g; 
      dmap.pixels[x*height + y] = argb;
    }
  }
  dmap.updatePixels();
  return dmap;
}

int currentImage = 0;
int numImageMasks = 8;
PImage loadMapFromFile() {
  PImage fileMask = createImage(1280, 720, RGB);
  currentImage = currentImage + 1;
  if (currentImage >= numImageMasks) {
    currentImage = 0;
  }
  String  imageName = str(currentImage) + ".jpg";
  println("loading image : ", imageName);
  fileMask = loadImage(imageName);
  return fileMask;
}

PImage makeCurrentFrameMap() {
  PImage currentFrame = createImage(width, height, RGB);
  currentFrame.loadPixels();
  for (int i = 0; i < pixels.length; i++) {
    currentFrame.pixels[i] = pixels[i];
  }
  currentFrame.updatePixels();
  return currentFrame;
}

PImage makeVertMap() {
  //create vertical gradient map
  PImage dmap = createImage(width, height, RGB);
  dmap.loadPixels();
  // 255 is max, more than 255 will leave gaps
  int direction = int(random(2));
  print("direction : ", direction, " ");
  int time_length = int(random(70, 256));
  int random_amount = 1;
  if (random(10) < 2) {
    random_amount = int(random(0, 10));
  }
  println("times length is :", time_length, " - random_amount is : ", random_amount);
  int g;
  for (int x = 0; x < dmap.width; x++) {
    for (int y = 0; y < dmap.height; y++) {
      if (direction == 0) {
        g = int((float(dmap.width - x)/width)*time_length) - random_amount + int(random(random_amount));// + (float(dmap.height - y)/height))/2 * 255) + random(0, 1));
      } else {
        g = int((float(x)/width)*time_length) - random_amount + int(random(random_amount));// + (float(dmap.height - y)/height))/2 * 255) + random(0, 1));
      }
      int argb = 255 << 24 | g << 16 | g << 8 | g; 
      dmap.pixels[x + y*width] = argb;
    }
  }
  dmap.updatePixels();
  return dmap;
}

PImage makeDoubleNoiseMap() {
  //create noids map
  PImage nmap = makeNoiseMap();
  PImage nmap2 = makeNoiseMap();
  //PImage finalMap = nmap * nmap2;
  for (int i =0; i < nmap.pixels.length; i++) {
    nmap.pixels[i] = (nmap.pixels[i]|nmap2.pixels[i]);
  }
  nmap.updatePixels();
  return nmap;
}

PImage makeNoiseMap() {
  //create noids map
  PImage nmap = createImage(width, height, RGB);
  float xoff = random(0.0, 1.0);
  // Start xoff at 0
  float detail = random(0.01, 0.15);
  // print("detail : ", detail, " - ");
  float increment = pow(random(0.09125, 0.25), 2);
  // println("increment : ", increment);
  noiseDetail(8, detail);

  // For every x,y coordinate in a 2D space, calculate a noise value and produce a brightness value
  for (int x = 0; x < nmap.width; x++) {
    xoff += increment;   // Increment xoff 
    float yoff = 0.0;   // For every xoff, start yoff at 0
    for (int y = 0; y < nmap.height; y++) {
      yoff += increment; // Increment yoff

      // Calculate noise and scale by 255
      float bright = noise(xoff, yoff) * 255;

      // Set each pixel onscreen to a grayscale value
      nmap.pixels[x+y*width] = color(bright);
    }
  }

  nmap.updatePixels();
  return nmap;
}

PImage makeDiagMap() {
  //create diagonal gradient map
  PImage dmap = createImage(width, height, RGB);
  dmap.loadPixels();
  // 255 is max, more than 255 will leave gaps
  int time_length = int(random(70, 256));
  int random_amount = 1;
  if (random(10) < 2) {
    random_amount = int(random(0, 10));
  }
  println("times length is :", time_length, " - random_amount is : ", random_amount);
  for (int x = 0; x < dmap.width; x++) {
    for (int y = 0; y < dmap.height; y++) {
      int g = int((float(dmap.width - x)/width)*time_length) - random_amount + int(random(random_amount));// + (float(dmap.height - y)/height))/2 * 255) + random(0, 1));
      int argb = 255 << 24 | g << 16 | g << 8 | g; 
      dmap.pixels[x + y*width] = argb;
    }
  }
  dmap.updatePixels();
  return dmap;
}

PImage makeBoxMap() {
  //create horizontal gradient map
  PImage bmap = createImage(width, height, RGB);
  bmap.loadPixels();
  int factor1 = int(random(1, 10));
  int factor11 = int(random(1, 10));
  int factor2 = int(random(30, 90) + 50);
  int factor3 = int(random(100) + 155);
  println("factors : ", factor1, "-", factor11, "-", factor2, "-", factor3);
  for (int x = 0; x < bmap.width; x++) {
    for (int y = 0; y < bmap.height; y++) {
      int r = x%factor3;
      if (x % factor11 < 4) {
        r = y%255;
      }
      if (y % factor2 < 6) {
        r = int(random(0, factor3));
      }
      int g = int((((float(bmap.width - x)/width) + (float(bmap.height - y)/height))/2 * factor3) + random(0, 1));
      r = (r*g)/255;
      int argb = 255 << 24 | r << 16 | r << 8 | r; 
      bmap.pixels[x + y*width] = argb;
    }
  }
  bmap.updatePixels();
  return bmap;
}

PImage makeRectangleMap() {
  //TODO 
  //create horizontal gradient map
  PImage bmap = createImage(width, height, RGB);
  bmap.loadPixels();
  for (int x = 0; x < bmap.width; x++) {
    for (int y = 0; y < bmap.height; y++) {
      int g = 5;
      int r = 10;
      int b = 20;
      int argb = 255 << 24 | r << 16 | r << 8 | r; 
      bmap.pixels[x + y*width] = argb;
    }
  }
  bmap.updatePixels();
  return bmap;
}

PImage makeTriangleMap() {
  //TODO
  PImage bmap = createImage(width, height, RGB);
  bmap.loadPixels();
  for (int x = 0; x < bmap.width; x++) {
    for (int y = 0; y < bmap.height; y++) {
      int g = 5;
      int r = 10;
      int b = 20;
      int argb = 255 << 24 | r << 16 | r << 8 | r; 
      bmap.pixels[x + y*width] = argb;
    }
  }
  bmap.updatePixels();
  return bmap;
}