// Set é uma lista sem valores duplicados. 

void main(){
  Set<String> fruits = {
    "maça",
    "banana",
    "abacaxi",
    "maracuja",
  };

  fruits.add("limão");
  fruits.remove("banana");
  fruits.contains("limão");

  print(fruits);

  List<int> numeros = [1,1,1,1,2,2,2,3,3,3,2,3];

  final listNumbers = numeros.toSet().toList();
  print(listNumbers); 
}