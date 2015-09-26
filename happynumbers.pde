// Este programa permite identificar si un numero es o no feliz e imprime en pantalla el proceso
// para llegar a identificar si es o no feliz.

//Esta funcion permite separar los digitos de un numero y meterlo en un arreglo de lista
ArrayList<Integer> digits(int i) {
    ArrayList<Integer> digits = new ArrayList<Integer>();
        while(i > 0) {
        digits.add(i % 10);
        i /= 10;
    }
    return digits;
}

//esta funcion permite realizar la sumatoria de los cuadrados de los digitos del numero
int squaredigitsum(int n) 
{
ArrayList<Integer> digitos = new ArrayList<Integer>();
digitos=digits(n);
int[] arreglo=new int[digitos.size()];
for (int i=0;i<digitos.size();i++)
{
  arreglo[i] =digitos.get(i);
}
int suma = 0;
for (int i=0;i<digitos.size();i++)
{
suma =suma+((arreglo[i])*(arreglo[i]));
}
return suma;
}

//esta funcion permite verificar si el numero es o no feliz

//empieza a realizarse la GUI para obtener el dato
import controlP5.*;
ControlP5 cp5;
String textValue = "";

//se utiliza el tutorial y los ejemplos de la libreria para invocar los 
//campos necesarios.
void setup(){
  size(700,400);
  
  PFont font = createFont("arial",20);
  
  cp5 = new ControlP5(this);
  
  cp5.addTextfield("NUMERO")
     .setPosition(20,100)
     .setSize(200,40)
     .setFont(font)
     .setFocus(true)
     .setColor(color(255,0,0));

  textFont(font);
}

void draw(){
  int n=int(cp5.get(Textfield.class,"NUMERO").getText());
  background(n);
  fill(255);

int suma = squaredigitsum(squaredigitsum(squaredigitsum(squaredigitsum(n))));
if (squaredigitsum(suma)==1) {
  text("Es feliz", 360,130);
}
else{text("No es feliz", 360,130);}
}

public void input(String theText) {
  // automatically receives results from controller input
  println("a textfield event for controller 'NUMERO' : "+theText);
}