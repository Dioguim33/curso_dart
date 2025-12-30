void main() async {

  buscarUsuario().then((usuario){
    print(usuario);
  }).onError((error, stackTrace){
    print(error);
  });

}

Future<String> buscarUsuario() async {
  final timeAwait = 5;
  await Future.delayed(Duration(seconds: timeAwait));
  if(timeAwait > 2){
    throw Exception("TIMEOUT");
  }
  return "Diogo Sousa";
}