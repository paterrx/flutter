void main() {
  var nome = 'Gabriel';
  String sobreNome = 'Paterra';
  var nomeCompleto = '$nome $sobreNome';
  var idade = 22;
  double altura = 1.8;

  print(nomeCompleto);
  print(idade.runtimeType);

  var lista = [1, 2, 3, 'A', true];

  print(lista.runtimeType);
  print(lista.length);
  print(lista[0]);

  // final vs const

  const pi = 3.14;
  //pi = 3.1415;

  final hoje = DateTime.now();
  //hoje = DateTime.utc(2024, 12, 31);

  void greet(String nome) {
    var hello = 'Hello $nome!';
    print(hello);
  }

  greet('Gabriel');

  bool isEmpty(String texto) => texto.length == 0;
  isEmpty('abc');

  print(isEmpty('abc'));

  int? stringLength(String? nullableString) {
    return nullableString?.length;
  }

  print(stringLength(null));
}
