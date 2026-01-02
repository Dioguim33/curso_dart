import 'dart:async';
import 'dart:math';

class TemperatureSensor{
  final StreamController<double> _controller = StreamController<double>.broadcast();
  Timer? _timer;
  final _random = Random();

  Stream<double> get stream => _controller.stream;

  Future<void> start()async{
    _timer = Timer.periodic(Duration(seconds: 1), (timer){
      final temperature = 20 + (_random.nextDouble() * 15);
      _controller.add(temperature);
    });
  }

  Future<void> finish() async{
    _timer?.cancel();
    await _controller.close();
  }
}

void main() async{
  TemperatureSensor sensor =  TemperatureSensor();

  sensor.stream.listen((e){
    print("Temperature: ${e.toStringAsFixed(1)} C");
  }, onDone: (){
    print("Evento 1 finalizado");
  });

  sensor.stream.listen(
    (e){
      if(e > 30){
        print("Alerta de temperatura: ${e.toStringAsFixed(1)} C");
      }
    },
      onDone: (){
        print("Evento 2 finalizado");
    });

  sensor.start();

  await Future.delayed(Duration(seconds: 5));

  sensor.finish();
}
