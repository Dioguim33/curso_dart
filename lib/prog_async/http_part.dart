// import 'package:curso_dart/prog_async/models/post_model.dart';
import 'package:curso_dart/prog_async/service/post_api.dart';

void main() async {
  final postAPI = PostApi();
  // final postList = await postAPI.fetchAll();

  // for(PostModel post in postList) {
  //   print(post);
  // }

  final post = await postAPI.fetchPost(10);
  print(post);

}