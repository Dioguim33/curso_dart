import 'dart:async';
void main() async {
  final controller = StreamController<int>();

  controller.stream.listen(
    (e){
      print("event:$e");
    },
    onError: (error){
      print("Error: $error");
    },
    onDone: (){
      print("Finalizando Stream");
    });

    // for(int i =0; i <5; i++){
    //   await Future.delayed(Duration(milliseconds: 500));
    //   controller.add(i);
    // }
    
    controller.addError("Erro De inclusão");
    
    await controller.close();

    final nameController = StreamController<String>();
    final name = "Diogo Sousa";
    String emittedStream = "";

    nameController.stream.listen((event){
      print(event);
    });

    for(int i = 0; i < name.length; i++){
      await Future.delayed(Duration(milliseconds: 200));
      emittedStream += name[i];
      nameController.add(emittedStream);
    }

    nameController.close();
}