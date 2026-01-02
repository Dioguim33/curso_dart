import 'package:curso_dart/observer/typedefs.dart';

//seja executavel
//adicione escutadores
//remova escutadores
//notifique escutadores

class Subject{
  bool wasDispose = false;

  final List<VoidCallback> _observers =[];

  void addObserver(VoidCallback observer){
    _observers.add(observer);
  }

  void removerObserver(VoidCallback observer){
    _observers.remove(observer);
  }
  
  void notifyObserver(){
    for (final observer in _observers){
      observer();
    }
  }

  void dispose(){
    _observers.clear();
  }
}

void main(){
  final subject = Subject();

  subject.addObserver(observer1);
  subject.addObserver(observer2);
  subject.notifyObserver();
  subject.removerObserver(observer1);
  subject.notifyObserver();

  subject.dispose();
}

void observer1(){
  print("Observer1 notificado");
}

void observer2(){
  print("Observer2 notificado");
}
