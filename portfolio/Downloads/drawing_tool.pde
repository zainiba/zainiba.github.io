Key win;
char currentkey = '1';
PImage b;
PImage c;
PImage d;
PImage e;
PImage f;
PImage h;
PImage j;
PFont i;


public void settings() {
  size(1000, 1000);
}
void setup() {
   win = new Key();
   background(255);
  smooth();
}

void draw() {

  // triggering the clear_print function
  if (keyPressed) {
    clear_print();
  }
  // triggering the newkeychoice
  if (mousePressed) {
    newkeyChoice();
  }
}




void newkeyChoice() {
  // the key mapping if statements that you can change to do anything you want.
  // just make sure each key option has the a stroke or fill and then what type of 
  // graphic function

  // key global variable contains whatever key was last pressed
  if (key =='1') {

    strokeWeight(4);
    stroke(255);
    line(mouseX, mouseY, pmouseX, pmouseY);
  } else if (key == '2') {

    strokeWeight(10);
    stroke(255);
    line(mouseX, mouseY, pmouseX, pmouseY);
  } else if (key == '3') {

    strokeWeight(30);
    stroke(255);
    line(mouseX, mouseY, pmouseX, pmouseY);
  }else if (key == 's' || key == 'S') {


    b = loadImage(" http://dma.sjsu.edu/art74.01/zahmed/processingimages/sun1.png");
    image(b, mouseX, mouseY);
  } else if (key == 'C' || key == 'c') {

    b = loadImage(" http://dma.sjsu.edu/art74.01/zahmed/processingimages/cloud.png");
    image(b, mouseX, mouseY);
  } else if (key == 'G' || key == 'g') {


    b = loadImage(" http://dma.sjsu.edu/art74.01/zahmed/processingimages/grass.png");
    image(b, mouseX, mouseY);
  } else if (key == 'F' || key == 'f') {


    b = loadImage(" http://dma.sjsu.edu/art74.01/zahmed/processingimages/flower.png");
    image(b, mouseX, mouseY);
  } else if (key == 'M' || key == 'm') {

    b = loadImage(" http://dma.sjsu.edu/art74.01/zahmed/processingimages/mountain.png");
    image(b, mouseX, mouseY);
  } else if (key == 'N' || key == 'n') {

    b = loadImage(" http://dma.sjsu.edu/art74.01/zahmed/processingimages/mountain2.png");
    image(b, mouseX, mouseY);
  }else if (key == 'T' || key == 't') {

    b = loadImage(" http://dma.sjsu.edu/art74.01/zahmed/processingimages/tree.png");
    image(b, mouseX, mouseY);
  }
  char currentkey = key;
}
void mousePressed() {
  println("mousePressed in primary window");
}  
class Key extends PApplet {
  Key() {
    super();
    PApplet.runSketch(new String[] {this.getClass().getSimpleName()}, this);
  }

  void settings() {
    size(1000, 1000);
  }

  void setup() {
    background(255);
 i = createFont("Arial",16,true);
   
    b = loadImage(" http://dma.sjsu.edu/art74.01/zahmed/processingimages/sun1.png");  
    c = loadImage(" http://dma.sjsu.edu/art74.01/zahmed/processingimages/cloud.png");
    d = loadImage(" http://dma.sjsu.edu/art74.01/zahmed/processingimages/grass.png");
    e = loadImage(" http://dma.sjsu.edu/art74.01/zahmed/processingimages/flower.png");
    f = loadImage(" http://dma.sjsu.edu/art74.01/zahmed/processingimages/mountain.png");
    h = loadImage(" http://dma.sjsu.edu/art74.01/zahmed/processingimages/mountain2.png");
    j = loadImage(" http://dma.sjsu.edu/art74.01/zahmed/processingimages/tree.png");
 
}

  void draw() {
  image(b, 40, 0);
  image(c, 40, 280);
  image(d, 40, 560);
  image(e, 100, 790);
  image(f, 250, 710);
  image(h, 640, 710);
  image(j, 440, 0);
 textFont(i,30);                
 fill(0);
 text("Drawing Key",350,40);
 text("S/s",300,140);
 text("C/c",300,360);
 text("G/g",300,600);
 text("F/f",200,800);
 text("M/m",480,800);
 text("N/n",870,800);
 text("T/t",790,370);

}

  void mousePressed() {
    println("mousePressed in secondary window");
  }
}
void clear_print() {

  // these 2 options let you choose between clearing the background
  // and saveing the current image as a file.
  if (key == 'x' || key == 'X') {
    background(255);
  } else if (key == 'p' || key == 'P') {
    saveFrame("images/00jm_m-####.png");
    //this will save the name as the intials and a millis counting number.
    // it will always be larger in value then the last one.
  }
}
