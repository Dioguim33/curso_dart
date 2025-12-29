class People{
  final String name;
  final double weight;
  final int height;
  final int age;

  const People({
    required this.name,
    required this.weight,
    required this.height,
    required this.age,
  });

  int yearBirth(){
    return DateTime.now().year - age;
  }
}

void main(){
  People diogo = People(name: "Diogo", weight: 75, height: 172, age: 22);

  print(diogo.yearBirth());
}