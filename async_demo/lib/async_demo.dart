//canva utilizado para realização do exercício: https://www.canva.com/design/DAGNIbktRwY/C1zoZlmtZnOMtwK-R7Cx_Q/edit

import 'dart:async';

void main() async {
  // Substitua os valores de email e senha conforme necessário
  String email = 'email@email.com';
  String senha = '123';

  try {
    // 1. Execute o método de login informando o e-mail e a senha
    String token = await login(email, senha);
    print('Login bem-sucedido. Token: $token');
    
    // 2. Consulte o saldo do usuário informando o token e printando o resultado no console
    num saldo = await consultarSaldo(token);
    print('Saldo do usuário: $saldo');
  } catch (e) {
    // 3. Caso o email ou senha sejão inválidos, printe a mensagem de erro
    print(e);
  }
}
 
Future<String> login(String email, String senha) async {
  // Simulando um atraso de download de 2 segundos
  await Future.delayed(Duration(seconds: 2));
  
  if (email != 'email@email.com' || senha != '123') {
    throw Exception('email ou senha inválida');
  }

  // Simulando informações de token de acesso do usuário
  final token = 'bas89e8ahdkkdassd';

  return token;
}

Future<num> consultarSaldo(String token) async {
  // Simulando um atraso de download de 3 segundos
  await Future.delayed(Duration(seconds: 3));
  
  return 2000;
}
