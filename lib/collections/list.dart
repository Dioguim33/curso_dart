final List<int> price = [10, 25, 30, 4, 100];


void main(){
  final newPrice = price.where((price) => price > 20).map((price) => price * 0.9).toList();
  print(newPrice);
}