// Exemplos de Enum e switch case nos seguintes arquivos:
// coditionals\desafio1.dart
// coditionals\desafio2.dart

enum OrderStatus{
  pending,
  production,
  completed,
  canceled,
  unknow
}

OrderStatus getOrderStatus(int status){
  return switch(status){
    0 => OrderStatus.pending,
    1 => OrderStatus.production,
    2 => OrderStatus.completed,
    3 => OrderStatus.canceled,
    _ => OrderStatus.unknow
  };
}


void main(){
  int currentStatus = 1;

  print(getOrderStatus(currentStatus));

}