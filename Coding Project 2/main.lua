require("L5")


function setup()
  --Setup, makes the size of the canvas and background color as well as changing the shape modes
  size(1000, 500)
  background(0,120,191,255)
  noStroke()
  fill(0)
  angleMode(DEGREES)
  rectMode(CENTER)
  ellipseMode(CENTER)
  --This fill is yellow 
  fill(255,232,0,100)
  --The triangle, rect, and circle combine to make a caution symbol
  triangle(100,300,200,100,300,300)
  fill(0,120,191,100)
  rect(200,200,25,75)
  circle(200,275,25)
  --Red text 
  fill(255,72,176,100)
  textSize(90)
  text("RAIN WARNING",310,235)
end

function draw()
end

function keyIsPressed()
  if key == 's' then
    save()
  end

end

function mousePressed()
  --Makes the background grey with no strokes
  background(0,120,191,255)
  noStroke()
  --Makes the droplets blue 
  fill(0)

  --The for loop here makes all 100 droplets and puts them at a random position and angle 
  --The push and pop change where I can put the origin point, translate is the new one
  for i = 1,100,1 do
    push()
    translate(random(width),random(height))
    rotate(random(-35,-45))
    rect(0,0,5,random(20,35))
    pop()
  end
  --Makes the clouds grey
  fill(255,72,176,random(80,100))
  --The for loop here puts the clouds randomly at the top of the screen
  for i = 1,30,1 do
    push()
    translate(random(width),random(height/5))
    ellipse(0,0,random(200,300),random(100,200))
    pop()
  end
  --This makes the lighthouse
  push()
  translate(800,400)
  fill(255,72,176,50)
  rect(0,-100,30,30)
  fill(255,72,176,255)
  rect(0,-130,30,30)
  fill(255,72,176,50)
  rect(0,-160,30,30)
  fill(0,120,191,50)
  rect(0,-190,30,30)
  fill(255,72,176,255)
  rect(0,-210,30,10)
  fill(0)
  rect(0,-190,10,10)
  fill(255,232,0,50)
  triangle(-600,-250,0,-190,-600,-100)
  fill(0)
  circle(0,0,200)
  pop()

  --Makes the beam of light from the lighthouse
 
 
  --Makes the boat
  push()
  translate(random(25,975),335)
  fill(255,72,176,255)
  rect(0,-10,30,30)
  fill(255,232,0,255)
  arc(0,0,100,100,0,180,OPEN)
  pop()

  --This fill and rect is for the background to the water bumps
  fill(0)
  rect(500,500,1000,200)
  
  --These ellipses make up the bumps in the water
   ellipse(random(1,100),400,250,random(50,100))
   ellipse(random(100,200),400,250,random(50,100))
   ellipse(random(200,300),400,250,random(50,100))
   ellipse(random(300,400),400,250,random(50,100))
   ellipse(random(400,500),400,250,random(50,100))
   ellipse(random(500,600),400,250,random(50,100))
   ellipse(random(600,700),400,250,random(50,100))
   ellipse(random(700,800),400,250,random(50,100))
   ellipse(random(800,900),400,250,random(50,100))
   ellipse(random(900,1000),400,250,random(50,100))

end







