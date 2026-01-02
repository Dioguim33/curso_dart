void main(){
  Stream<List<int>> listnumbers = Stream.fromIterable([
    [1,2],
    [3,4],
    [5,6]
  ]);

  listnumbers.expand((n) => n).listen(print);
}