sealed class SealedClass{
  void methodX();
}

class Sealed1 implements SealedClass{
  @override
  void methodX() {
    
  }
}

class Sealed2 implements SealedClass{
  @override
  void methodX() {
    
  }
} 


void main(){
  SealedClass sealedClass = Sealed1();

  switch (sealedClass) {
    case Sealed1():
     print("Classe Concreta 1");
     break;
    case Sealed2():
     print("Classe Concreta 2");
     break;
  }
}