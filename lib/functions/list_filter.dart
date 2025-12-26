List<int> numberList = [1,2,3,4,5,6,7,8,9,10];


bool isBigger4(int numero){
  return numero > 4;
}

bool logicaPar(int number){
  return number.isEven;
}

List<int> filterList(List<int> lista, bool Function(int) logica){
  final List<int> newList = [];
  for(int number in lista){
    if(logica(number)){
      newList.add(number);
    }
  }
  return newList;
}

void main(){

  // Declarando a função dentro da função.
  final listFilter = filterList(numberList, logicaPar);
  final listFilterBigger4 = filterList(listFilter, isBigger4);

  print(listFilter);
  print(listFilterBigger4);  
 
  // Como é uma lógica simples, podemos passar ela diratamente assim.
  // sendo uma função anonima ou lambda.
  final lambdaFilterList = filterList(numberList, (n) => n.isEven);
  final lambdaFiltterBigger4 = filterList(lambdaFilterList, (n) => n > 4);

  print(lambdaFilterList);
  print(lambdaFiltterBigger4);
  
  // Usando o where,não precisamos criar funções para percorrer a lista
  // visto que o where já faz esse loop para gente passar a logica.
  final evenList = numberList.where((number) => number.isEven).toList();
  final bigger4 = numberList.where((number) => number > 4).toList();

  print(evenList);
  print(bigger4);

}