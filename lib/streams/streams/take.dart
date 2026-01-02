void main(){
  Stream<int> numbers = Stream.fromIterable([1,2,3,4,5,6]);

  numbers.take(5).listen(print);
}