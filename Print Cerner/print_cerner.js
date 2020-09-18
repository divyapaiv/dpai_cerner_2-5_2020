// Run at https://editor.p5js.org/
// cerner_2^5_2020

let data = [7,11,5,13,22,56];
let i = 0;
function setup() {
  createCanvas(300, 200);
	frameRate(2);
  textAlign(CENTER);
}
function draw() {

  if(i > data.length) {
  	background(500);
    i = 0;
  }
  
  // get ith element of data array
  let d = data[i];

  // set text color using data
  if(i%2==0)
    fill(0,125,186);
  else
    fill(120, 190, 32);

	// set text size using data provided
  let s = map(d, min(data), max(data), 0, 200);
  textSize(s/2)+10;
  
  // place cerner at a random place
  text("CERNER", random(width), random(height));
  i = i + 1;
}