import 'package:curso_dart/observer/change_notifier.dart';

void main(){
  final changeNotifier = ChangeNotifier();

  changeNotifier.addListener(voidCallback);
  changeNotifier.addListener(voidCallback);
 
  changeNotifier.notifyListeners();
  changeNotifier.dispose();
}

void voidCallback(){
  print("callback Executado");
}