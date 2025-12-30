import 'package:curso_dart/prog_async/models/post_model.dart';
import 'package:dio/dio.dart';

class PostApi {
  final dio = Dio();

  void _setup(){
    dio.options.baseUrl = "http://jsonplaceholder.typicode.com";
  }

  Future<List<PostModel>> fetchAll() async {
    try{
      _setup();
      final result = await dio.get("/posts");
    
      if(result.statusCode == 200){
        return (result.data as List).map((post) => PostModel.fromJson(post)).toList();
      }
      throw Exception("Ocorreu um erro ao buscar os posts");
    } on Exception catch(e){
      print("Excessão: $e");
      rethrow;
    }
  }

  Future<PostModel> fetchPost(int idPost) async {
    try{
      _setup();  
      final result = await dio.get("/posts/$idPost");
      if(result.statusCode == 200){
        final postMap = (result.data as Map<String, dynamic>);
        return PostModel.fromJson(postMap);
        
      }
      throw Exception("Ocorreu um erro ao buscar o post $idPost");
    } on Exception catch(e){
      print("Excessão: $e");
      rethrow;
    }
  }
}