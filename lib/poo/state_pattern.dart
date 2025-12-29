class User {
  final String name;
  final String id;
  
  User({
    required this.name,
    required this.id,
  });

  @override
  String toString() {
    return "$name - $id";
  }
}

sealed class UserState {}

class LoadingUser implements UserState{}

class ErrorWhileLoadingUser implements UserState {
  final Exception error;

  ErrorWhileLoadingUser({required this.error});

}

class UserLoaded implements UserState {
  final User user;

  UserLoaded({required this.user});
}



void main(){
  // UserState userState = LoadingUser();
  // UserState userState = ErrorWhileLoadingUser(error: Exception("Erro de conexão"));
  UserState userState = UserLoaded(user: User(name: "Diogo", id: "33"));

  switch(userState){
    case LoadingUser():
      print("carregando usuário...");
      break;
    case ErrorWhileLoadingUser():
      print(userState.error);
      break;
    case UserLoaded():
      print(userState.user.toString());
      break;
  }
}