extension IntExtension on int{
  int squared(){
    return this * this;
  }
}

extension DateFormatBR on DateTime{
  String dateFormatBR(){
    return "${day.toString().padLeft(2, "0")}/${month.toString().padLeft(2,"0")}/$year";
  }
  String hourFormatBR(){
    return "${hour.toString().padLeft(2,"0")}:${minute.toString().padLeft(2,"0")}";
  }
  String formatBR(){
    return "${dateFormatBR()} - ${hourFormatBR()}";
  }
}


void main(){
  final number = 5;
  number.squared();
  print(number.squared());

  final currentDate = DateTime.now().dateFormatBR();
  final currentHour = DateTime.now().hourFormatBR();
  final currentDateHour = DateTime.now().formatBR();

  print(currentDate);
  print(currentHour);
  print(currentDateHour);
}