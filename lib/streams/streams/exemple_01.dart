void main(){
  Stream<int> stream = Stream.fromIterable([1,2,3]);

  stream.listen((valor){
    print("valor emitido: $valor");
  }).onDone((){
    print("Finalizando a stream");
  });

  final timer = Stream.periodic(Duration(seconds: 1), (count){
    if(count == 4){
      throw Exception("Tempo Excetido");
    }
    
    return count +1;
  }).take(5);

  timer.listen((e){
    print("e: $e");
  }).onError((e){
    print("error:$e");
  });
}