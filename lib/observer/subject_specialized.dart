import 'package:curso_dart/observer/typedefs.dart';

void main(){
  final counter = Counter();

  counter.addObserver((value){
    print("Counter: $value");
  });

  counter.increment();
  counter.increment();

  counter.dispose();
}

class Counter extends IntSubject{
  int _count = 0;

  void increment(){
    _count++;
    notifyObserver(_count);
  }

  void decrement(){
    _count--;
    notifyObserver(_count);
  }
}

class IntSubject{
  final List<VoidIntCallback> _observers = [];

  void addObserver(VoidIntCallback observer){
    _observers.add(observer);
  }

  void removeObserver(VoidIntCallback observer){
    _observers.remove(observer);
  }

  void notifyObserver(int value){
    for (final observer in _observers){
      observer(value);
    }
  }

  void dispose(){
    _observers.clear();
  }
  
}