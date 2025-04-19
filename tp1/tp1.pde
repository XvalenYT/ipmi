PImage miReproductorMP3;

void setup (){
size (800, 400);
background (240,240,240);
//2) cargar la imagen
miReproductorMP3 = loadImage ("reproductor.jpg");

}

void draw (){
//3) mostrar la imagen
image (miReproductorMP3, 0,0, 400, 400);

strokeWeight (10);
line (400, 0, 400, 400); 

println ("X");
println (mouseX );
println ("Y");
println (mouseY );
println ();

fill (5, 5, 5);
strokeWeight (0);
rect (513, 31, 200, 320, 28);

// Pantalla
fill(30, 30, 30); 
noStroke();  
rect(535, 50, 155, 115, 5);

fill (50, 50, 50);
noStroke();
rect(147+400, 60, 133 , 76);


fill(229, 229, 229);  
textAlign(CENTER, CENTER);
textSize(12);
text("DIGITAL  M P 3  PLAYER", 400+ 213, 150);

// Circulo Blanco
fill(229, 229, 229);
ellipse(400+213, 250, 120, 120);

// Círculo negro central
fill(10,10,10);
ellipse(400+213, 250, 50, 50);

// Botoncitos
fill(28, 28, 28);
textSize(14);
text("VOL", 400+213, 295);
textSize(9);
text("▶▶l", 400+255, 255);
text("l◀◀",400+170, 255);
textSize(17);
text("M", 400+213, 210);

}
