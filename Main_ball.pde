// Her laver vi et array af 6 bolde hvir vi også instansere array'et
Ball[] balls = new Ball[6]; 

void setup () {
  size(500, 500); // Vindue størrelsen 

  for (int i = 0; i < balls.length; i++) { // Et for loop som laver bolde i forhold til array'ets størrelse 
    balls[i] = new Ball(random(1.0, 500.0), random(1.0, 500.0), 4, 4, 50); // Her instansere vi de bolde som skal blive lavet ud fra de instansvariabler fra konstruktøren
  }
}

void draw (){
  background(100, 100, 100);
  for (Ball ball : balls) { // Her laver vi et for each loop hvor vi kalder på vores metoder Ball er klassen ball er navnet på loopet og balls er array'et
    
    
    ball.showBall();
    ball.hitEdges();
    ball.moveBall();
  }

  float distance = balls[0].calculateDistance(balls[1]); // Her tager vi ball 0 og bruger afstandsmetoden til at beregne afstanden mellem ball 1 og 2 og det er lig med en variabel distance af datatypen float 
  println("Distance between ball 0 and ball 1: " + distance); // Vi printer tekset samt distance som vi får mellem de to bolde 

  if (distance < 250) { // Hvis distancen mellem de to bolde er over 250 
    balls[0].setColor(random(0, 255), random(0, 255), random(0, 255)); // Så skifter på ball 1 til en random farve
    balls[1].setColor(random(0, 255), random(0, 255), random(0, 255)); // Så skifter på ball 1 til en random farve
  }
}
