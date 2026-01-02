import 'package:curso_dart/observer/value_notify.dart';

void main(){
  final valueNotify = ValueNotify<int>(0);
  void executador(){
    print("Valor: ${valueNotify.value}");
  }

  valueNotify.addListener(executador);
  valueNotify.value = 100;
  valueNotify.value = 120;
  valueNotify.value = 140;
  valueNotify.removeListener(executador);
  
  valueNotify.dispose();
}