class Produto {
  final String nome;
  final double preco;

  Produto(this.nome, this.preco);

  @override
  String toString() => '$nome (R\$ $preco)';
}

void main() {
  final carrinho = [
    Produto("Notebook", 3500.0),
    Produto("Mouse", 30.0),
    Produto("Teclado", 80.0),
    Produto("Cabo HDMI", 25.0),
    Produto("Monitor", 900.0),
  ];

  List<String> produtosBaratos = carrinho.where((item) => item.preco < 50).map((item) => item.nome).toList();
  num produtosCaros = carrinho.where((item) => item.preco > 500).fold(0.0,(somaTotal, item) => somaTotal + item.preco);

  print(produtosBaratos);
  print(produtosCaros);
}