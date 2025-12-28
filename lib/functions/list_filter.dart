List<int> numberList = [1,2,3,4,5,6,7,8,9,10];
List<String> nameList = ['Ana', 'Pedro', 'João', 'Ana'];


bool isBigger4(int numero){
  return numero > 4;
}

bool logicaPar(int number){
  return number.isEven;
}

List<T> filterList<T>(List<T> list, bool Function(T) logica){
  final List<T> newList = [];
  for(T item in list){
    if(logica(item)){
      newList.add(item);
    }
  }
  return newList;
}

void main(){

  // Refatorando a Tipagem da Função para um tipo generico, na qual ela poderá
  // receber qualquer tipo sem ter que criar outra função especifica para tal. 
  final filterListName = filterList(nameList, (name) => name.contains("Ana"));
  print(filterListName);

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