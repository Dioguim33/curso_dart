import 'dart:io';

import 'package:curso_dart/prog_async/service/directory_service.dart';
import 'package:curso_dart/prog_async/service/files_service.dart';

void main() async {
  final filesService = FilesService();
  final directoryService = DirectoryService();

  final dirPath = await directoryService.createDirectory("class_services");
  final fileName = "file_class_service.txt";

  final file = await filesService.createFile("${dirPath.path}/$fileName");
  await file.writeAsString("class content\n", mode: FileMode.append);

}