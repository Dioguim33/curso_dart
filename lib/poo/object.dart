class Vehicle{
  final String brand;
  final String model;
  final int year;

  const Vehicle({
    required this.brand,
    required this.model,
    required this.year
  });

  @override
  String toString() {
    return "$brand $model - $year";
  }

}

void main(){
  Vehicle upTSI   = Vehicle(brand: "VW", model: "UP TSI", year: 2018);
  Vehicle golfGTI = Vehicle(brand: "VW", model: "Golf GTI", year: 2014);

  print(upTSI.toString());
  print(golfGTI.toString());
}