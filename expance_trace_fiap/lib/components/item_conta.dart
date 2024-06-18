import 'package:expense_tracker/models/conta.dart';
import 'package:flutter/material.dart';

class ItemConta extends StatelessWidget {
  final Conta conta;

  const ItemConta({Key? key, required this.conta}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16.0),
        title: Text(
          conta.descricao,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text('Banco ID: ${conta.bancoId}'),
        trailing: Icon(_getIcon(conta.tipoConta)),
      ),
    );
  }

  IconData _getIcon(TipoConta tipoConta) {
    switch (tipoConta) {
      case TipoConta.contaCorrente:
        return Icons.account_balance;
      case TipoConta.contaPoupanca:
        return Icons.savings;
      case TipoConta.contaInvestimento:
        return Icons.trending_up;
      default:
        return Icons.account_balance_wallet;
    }
  }
}
