int numberSquares=10; //justerer antal af firkanter; der er numberSquares * numberSquares firkanter tegnet
float rectSize=600/numberSquares; //variabel til kvadratsidelængde, regulerer sådan at alle firkanter kan ses på skærmen
float rectX; float rectY; //variabler der skal lægges til firkanternes x- eller y-position så de kan "ryste"

void setup() {
  size(600, 600);
}

void draw() {
  background(0);

  //to forloops der tegner (antal firkanter)*(antal firkanter) så mange gange man har angivet, samt regulerer firkanternes individuelle positioner efter random tal.
  for (int x=0; x<numberSquares; x++) {
    for (int y=0; y<numberSquares; y++) {

      float shade=x*10+y*10; //laver lokal variabel der gør firkanternes farve mørkere i takt med de bliver tegnet

      fill(155+shade, 0+shade, 47+shade); //farver firkanterne med "shade" lagt til så det bliver et spektrum af PINK
      rect(x*rectSize+rectX, y*rectSize+rectY, rectSize, rectSize); //tegner kvadraterne, med hensyn til x-/y-position samt "rysten"

      //randomfunktion der lægges til firkanternes x- og y-positioner hver gang de tegner (fordi det er i draw)
      rectX = random(-3, 3);
      rectY = random(-3, 3);
    }
  }
}
