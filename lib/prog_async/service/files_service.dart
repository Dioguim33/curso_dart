import 'dart:io';

class FilesService {
  
  Future<bool> fileExists(String path) async{
    final file = File(path);
    return await file.exists();
  }

  Future<void> removeFile(String path) async{
    final file = File(path);
    await file.delete(recursive: true);
  }

  Future<File> createFile(String path) async{
    final file = File(path);
    if(await fileExists(path)){
      return file;
    }
    return await file.create();
  }
}
