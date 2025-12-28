enum DaysWeek{
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday,
  none
}


DaysWeek selectDayWeek(int numberDayWeek){
  return switch(numberDayWeek){
    1 => DaysWeek.monday,
    2 => DaysWeek.tuesday,
    3 => DaysWeek.wednesday,
    4 => DaysWeek.thursday,
    5 => DaysWeek.friday,
    6 => DaysWeek.saturday,
    7 => DaysWeek.sunday,
    _ => DaysWeek.none,
  };
}

void main(){
  print(selectDayWeek(2));
  print(selectDayWeek(8));
}