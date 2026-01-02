import 'package:curso_dart/observer/listenable.dart';
import 'package:curso_dart/observer/typedefs.dart';

mixin class ChangeNotifier implements Listenable{
  final List<VoidCallback> _listeners = [];
  
  @override
  void addListener(VoidCallback listener) {
    if(!_listeners.contains(listener)) _listeners.add(listener);
  }

  @override
  void removeListener(VoidCallback listener) {
    if(!_listeners.contains(listener)) _listeners.remove(listener);
  }

  @override
  void notifyListeners(){
    for(final listener in _listeners){
      listener();
    }
  }
  
  @override
  void dispose() {
    _listeners.clear();
  }
}