//TP2
//Hecho por Valentin Baiardi

PImage imagen1, imagen2, imagen3;
PFont fuente;
int e;
int tiempoInicio;
float alphaTexto;
float xTexto;void setup() 


{
  size(640, 480);
  imageMode(CENTER);
  textAlign(LEFT, CENTER);  
  imagen1 = loadImage("tetris1.jpg");
  imagen2 = loadImage("tetris2.jpeg");
  imagen3 = loadImage("tetrisgif.gif");
  fuente = createFont("Arial", 28);
  textFont(fuente);  e = 1;
  tiempoInicio = frameCount;
  alphaTexto = 0;
  xTexto = -400;
}void draw() {
  background(0);  if (e == 1) {
    image(imagen1, 320, 240, width, height);  
    if (alphaTexto < 255) alphaTexto += 2;
    fill(255, 8, 8, alphaTexto);
    textSize(30);
    textAlign(LEFT, CENTER);
    text("Presentación sobre TETRIS", 70, 90);  

if (frameCount - tiempoInicio > 60 * 4) {
  e = 2;
  tiempoInicio = frameCount;
  xTexto = -400;
}

  } else if (e == 2) {
    image(imagen2, 320, 240, width, height);

if (xTexto < 90) xTexto += 4;
fill(217,217,217);
textSize(27);
textAlign(LEFT, CENTER);
text("Creado en 1984 por Alexéi Pázhitnov", xTexto, 340);  

if (frameCount - tiempoInicio > 60 * 4) {
  e = 3;
  tiempoInicio = frameCount;
}

  } else if (e == 3) {
    image(imagen3, 320, 240, width, height);

float y = sin(frameCount * 0.08) * 8 + 150;
fill(255);
textSize(25);
textAlign(LEFT, CENTER);
text("Tetris es un videojuego clásico de rompecabezas \ndonde el objetivo es encajar piezas que caen desde \nla parte superior de la pantalla, llamadas tetrominós\n para formar líneas horizontales completas.", 60, y);  

if (frameCount - tiempoInicio > 60 * 4) {
  e = 4;
  tiempoInicio = frameCount;
}

  } else if (e == 4) {
    background(0);
    fill(255);
    textSize(28);
    textAlign(LEFT, CENTER);
    text("Gracias por ver la presentación :)", 100, 180);  //boton para reiniciar
    fill(100, 255, 150);
    rect(460, 350, 110, 40, 8);
    fill(0);
    textSize(14);
    textAlign(CENTER, CENTER);
    text("→ Reiniciar ←", 460 + 55, 350 + 20);
  }
}
void mousePressed() {
  if (e == 4) {
    if (mouseX > 460 && mouseX < 460 + 110 &&
        mouseY > 350 && mouseY < 350 + 40) {
      e = 1;
      tiempoInicio = frameCount;
      alphaTexto = 0;
      xTexto = -400;
    }
  }
}
