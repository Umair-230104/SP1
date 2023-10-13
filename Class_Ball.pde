// Der bliver oprettet en klasse som hedder Ball
class Ball { 
  
  //Boldens position
  private float x; // En instansvariabel x med datatypen float 
  private float y; // En instansvariabel y med datatypen float 

  //Boldens hastighed 
  private float xSpeed; // En instansvariabel xSpeed med datatypen float 
  private float ySpeed; // En instansvariabel ySpeed med datatypen float 
  
  // Boldens radius 
  private float radius; // En instansvariabel radius med datatypen float 
  
  // Boldens farve
  private color ballColor; // En instansvariabel ballColor med datatypen color
  
  
  // Her laver vi en konstruktør for instansvariablerne
  public Ball (float x, float y, float xSpeed, float ySpeed, float radius) {
    this.x = x;
    this.y = y;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
    this.radius = radius;
    this.ballColor = color(255); 
  }

  // En metode til at vise bolden 
  public void showBall() {
    strokeWeight(10); // Størrlensen på boldens kant
    stroke(ballColor); // Farven til boldens kant
    ellipse(x, y, radius, radius); // Dette laver en ellipse/bold
  }

  // En metode til at flytte bolden
  public void moveBall() {
    x = x + xSpeed; // Her ændre vi x værdien som får bolden til at bevæge på x-aksen
    y = y + ySpeed; // Her ændre vi y værdien som får bolden til at bevæge på y-aksen 
  }

  // En metode til når bolden rammer kanterne
  public void hitEdges() {
    if (x > width || x < 0) { // Hvis x er mindre end bredden eller x er mindre end 0 
      xSpeed = xSpeed * -1; // Så vil bolden gå tilbage når xSpeed er *-1 
    }
    if (y > height || y < 0) { // Hvis y er mindre end højden eller y er mindre end 0
      ySpeed = ySpeed * -1; // Så vil bolden gå tilbage når ySpeed er *-1 
    }
  }

  // En metode til at beregne afstande mellem to bolde som retunere en float værdi
  public float calculateDistance(Ball otherBall) { // I parameteren tager vi klassen Ball og laver en otherball
    
    // dx og dy er nogen lokale variabler som bliver brugt til at beregne afstanden mellem boldene d står for distance
    float dx = otherBall.x - this.x; // .x er den instansvariabel x vi lavede i konstruktøren hvis denne x er minusset med otherball.x er det = dx 
    float dy = otherBall.y - this.y; // .y er den instansvariabel y vi lavede i konstruktøren hvis denne y er minusset med otherball.y er det = dy 
    return sqrt(dx*dx + dy*dy); // Her retunere vi via squareroot/kvadratroden funktionen af dx*dx+dy*dy 
  }
  // En metode til at give boldene farver ud fra RGB
  public void setColor(float r, float g, float b) { // Der bliver lagt floar RGB i parameteren
    ballColor = color(r, g, b); // Her gøre vi at ballColor kan bestemmes ud fra de 3 RGB værdier
  }
}
