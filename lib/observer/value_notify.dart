import 'package:curso_dart/observer/change_notifier.dart';
import 'package:curso_dart/observer/value_listenable.dart';

class ValueNotify<T> extends ChangeNotifier implements ValueListenable {
  T _value;
  ValueNotify(this._value);
  
  @override
  get value => _value;

  set value(T newValue){
    if(newValue == _value) return;
    _value = newValue;
    notifyListeners();
  }
}