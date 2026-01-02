import 'package:curso_dart/observer/typedefs.dart';

abstract class Listenable {
  void addListener(VoidCallback listener);
  void removeListener(VoidCallback listener);
  void notifyListeners();
  void dispose();
}