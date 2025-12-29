class Calculator{

  double addition (double num1, double num2){
    return num1 + num2;
  }

  double subtraction (double num1, double num2){
    return num1 - num2;
  }

  double multiplication (double num1, double num2){
    return num1 * num2;
  }

  double division (double num1, double num2){
    return num1 / num2;
  }
}

void main(){
  Calculator calc = Calculator();

  final add = calc.addition(3, 4);

  print(add);
}