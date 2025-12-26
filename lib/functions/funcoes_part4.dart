num somar(int num1, num2){
  return num1 + num2;
}

num subtrair(int num1, num2){
  return num1 + num2;
}


num calcular(int num1, int num2, num Function(int,int) calculo){
  return calculo(num1, num2);
}


void main(){

  final soma = calcular(3, 30, somar);
  print(soma);
  final soma2 = somar(3, 30);
  print(soma2);
  
  final diminuir = calcular(20, 5, subtrair);
  print(diminuir);
  final diminuir2 = somar(10, 3);
  print(diminuir2);


}