//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(600, 400); 
}

//🎯Variable Declarations Go Here
var treex = 150
var treey = 500
var carx = 300


//🟢Draw Procedure - Runs on Repeat
draw = function(){
 
 background(170,210, 250, 0);

    //grass
    strokeWeight(0)
    stroke(0,0,0,0)
    fill(72,111,56)
    rect(0,300,600,200);

    //tree 1
    strokeWeight(20);
    stroke(101, 67, 33);
    line(treex,300,treex,120); //wood
    strokeWeight(1);
    stroke(0,0,0,0)
    fill(37, 65, 23);
    triangle(treex - 80,270,treex,80,treex + 80,270); //leaves

    //tree 2
    strokeWeight(20);
    stroke(101, 67, 33);
    line(treey,300,treey,120); //wood
    strokeWeight(1);
    stroke(0,0,0,0)
    fill(37, 65, 23);
    triangle(treey - 80,270,treey,80,treey + 80,270); //leaves

    //car
    strokeWeight(0);
    stroke(0,0,0,0);
    fill(194,80,7);
    rect(250,220,140,100);
    rect(200,260,200,60);
        //wheels
        fill(0,0,0)
        ellipse(carx - 60,320,50,50);
        ellipse(carx + 60,320,50,50);

    treex = treex + 7
    treey = treey + 7

    if(treex > 700) {
        treex = -30
    }

    if(treey > 700) {
        treey = -30
    }


  //Show x y values when mousepressed
  if(mousePressed){showXYPositions();}

}

//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

showXYPositions = function(){
    fill(255,255,255,200)
    rect(470,320,150,100,10)
    fill(0,0,0)
    textSize(30)
    text("x = " + mouseX + "\ny = " +mouseY, 490, 360)
    fill(255, 255, 255)
    ellipse(mouseX, mouseY, 10, 10);
    fill(255,255,255)
}
