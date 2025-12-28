class AgeRules{
  final int teenageStart;
  final int adultStart;
  final int elderlyStart;

  const AgeRules({
   required this.teenageStart,
   required this.adultStart,
   required this.elderlyStart
  });
}

enum StageLife {
  child,
  teenage,
  adult,
  elderly,
}

StageLife classifyAge({required int age, required AgeRules rules}){
  return switch(age){
    _ when age < rules.teenageStart => StageLife.child,
    _ when age < rules.adultStart   => StageLife.teenage,
    _ when age < rules.elderlyStart => StageLife.adult,
    _ => StageLife.elderly
  };
}




void main(){
  print(classifyAge(age: 22, rules: AgeRules(teenageStart: 12, adultStart: 18, elderlyStart: 55)));
  print(classifyAge(age: 11, rules: AgeRules(teenageStart: 12, adultStart: 16, elderlyStart: 55)));
  print(classifyAge(age: 15, rules: AgeRules(teenageStart: 12, adultStart: 18, elderlyStart: 55)));
  print(classifyAge(age: 60, rules: AgeRules(teenageStart: 12, adultStart: 21, elderlyStart: 55)));
  print(classifyAge(age: 22, rules: AgeRules(teenageStart: 12, adultStart: 21, elderlyStart: 55)));
  print(classifyAge(age: -22, rules: AgeRules(teenageStart: 12, adultStart: 21, elderlyStart: 55)));
}
