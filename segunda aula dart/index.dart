import 'dart:ffi';

void main() {
  void enviarEmail({
    required String remetente,
    required String destinatario,
    String? assunto,
    String? msg,
  }) {
    print('Remetente: $remetente');
    print('Destinatário: $destinatario');
    print('Assunto: $assunto');
    print('Mensagem: $msg');
  }

  enviarEmail(
    destinatario: 'rm93688@fiap.com.br',
    remetente: 'rm93266@fiap.com.br',
    assunto: 'Boas vindas',
    msg: 'Bem-vindo ao curso de flutter',
  );

  int listar({
    List<int>? lista,
    required int x,
  }) {
    int contagemDeX = 0;
    if (lista != null) {
      for (int valor in lista) {
        if (valor == x) {
          contagemDeX++;
        }
      }
      return contagemDeX;
    }
    return 0;
  }

  List<int> lista = [1, 2, 3, 4, 5];
  int x = 5;
  int contagemDeX = listar(lista: lista, x: x);

  print(
      'A quantidade de vezes que o valor $x aparece na lista é de: $contagemDeX');
}
