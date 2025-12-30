import 'dart:io';

class DirectoryService {
  
  Future<bool> directoryExists(String path) async{
    final dir = Directory(path);
    return await dir.exists();
  }

  Future<void> removeDirectory(String path) async{
    final dir = Directory(path);
    await dir.delete(recursive: true);
  }

  Future<Directory> createDirectory(String path) async{
    final dir = Directory(path);
    if(await directoryExists(path)){
      return dir;
    }
    return await dir.create();
  }
}