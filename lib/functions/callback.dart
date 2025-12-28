void main(){

  List<void Function()> callbacks = [];
  callbacks.add(animatedButtom);
  callbacks.add(changeColorButtom);
  callbacks.add(() => print("finalizando ação do botão"));

  onPressed(callbacks);
}

void onPressed(List<void Function()> callbacks){
  for(void Function() callback in callbacks){
    callback.call();
  }
}
void animatedButtom(){
  print("botão sendo animado");

}
void changeColorButtom(){
  print("botão trocando de cor");
}