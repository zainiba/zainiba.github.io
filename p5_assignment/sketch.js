// Lives stream from class demo is here: https://youtu.be/vE6GQu9cQCE
// final demo (but with competed racecar shape): https://art75.github.io/in-class-exercises/p5_master/p5-exercise-1/index.html


let carX = 50;
let vroom;
let carSpeed = 3;
let carAcc = .5;
let raceStarted = false;
let s = 'START';

function setup() {
  createCanvas(750, 200);
  vroom = new p5.Oscillator('square');

}

function draw() {
  background(20, 80, 77, 220);

  //Make start button
  rect(350, 100, 50, 30);

  fill(225);
  text(s, 357, 109, 50, 30);

  // tie sound frequence to carX
  vroom.freq(carX);

  if (mouseIsPressed && mouseX >= 350 && mouseX <= 400 && mouseY <= 130 && mouseY >= 100) {
    raceStarted = !raceStarted;

    vroom.start();
    vroom.amp(.05);
  }

  if (raceStarted) {
background(20, 80, mouseY, 220);
    if (carX >= 750) {
      carX = -50;
      carSpeed = 3;

    } else {
      carSpeed += carAcc
      carX += carSpeed;

    }

  }
  // drawing car body
  noStroke();
  fill(255, 50, 50);
  triangle(carX, 50, carX + 60, 80, carX, 80);

  // drawing car wheels
  fill(0);
  ellipse(carX, 80, 20, 20);
  ellipse(carX + 50, 80, 20, 20);
}


// mute it with mouse click!
function mousePressed() {
  vroom.stop();
}
