mixin Runner{
  void run() => print("runnig...");
}

mixin Swimmer{
  void swim() => print("swimming...");
}

mixin Cyclist{
  void pedal() => print("cycling...");
}

class TriAthlete with Runner, Swimmer, Cyclist {
  void exercise(){
    run();
    swim();
    pedal();
  }
}

void main(){
  final jason = TriAthlete();

  jason.exercise();
}