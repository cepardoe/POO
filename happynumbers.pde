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

void setup(){
int x=13;
println(digits(x));
  
}