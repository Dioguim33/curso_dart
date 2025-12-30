import 'dart:io';

void main() async{
  final dir = Directory("files");
  if(!await dir.exists()) await dir.create();
  
  for(int i =0; i <10; i++){
    await Future.delayed(Duration(milliseconds: 500));
    final file = File("${dir.path}/first_file$i.txt");
    if(!await file.exists()) await file.create();
  }
}