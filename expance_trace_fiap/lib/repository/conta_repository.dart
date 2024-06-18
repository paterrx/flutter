import 'package:expense_tracker/models/conta.dart';

class ContasRepository {
  final List<Conta> contas = [
    Conta(
      id: '1',
      bancoId: '001',
      descricao: 'Conta Corrente Banco A',
      tipoConta: TipoConta.contaCorrente,
    ),
    Conta(
      id: '2',
      bancoId: '002',
      descricao: 'Conta Poupança Banco B',
      tipoConta: TipoConta.contaPoupanca,
    ),
    Conta(
      id: '3',
      bancoId: '003',
      descricao: 'Conta Investimento Banco C',
      tipoConta: TipoConta.contaInvestimento,
    ),
  ];
}
