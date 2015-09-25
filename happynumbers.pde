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

void setup(){
int x=13;
println(squaredigitsum(x));
  
}