class Animal{
  void makeSound(){
    print("default noise");
  }
}

class Dog extends Animal{
  @override
  void makeSound() {
   print("woof woof");
  }
}


class Cat extends Animal{
  @override
  void makeSound() {
   print("meow meow");
  }
}


class Cow extends Animal{
  @override
  void makeSound() {
   print("moo moo");
  }
}

void main(){

  List<Animal> animals = [
    Dog(),
    Cat(),
    Cow(),
  ];

  for(Animal animal in animals){
    animal.makeSound();
  }
}