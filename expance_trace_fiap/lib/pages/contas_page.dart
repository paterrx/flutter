import 'package:expense_tracker/repository/conta_repository.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/components/item_conta.dart';

class ContasPage extends StatefulWidget {
  const ContasPage({super.key});

  @override
  State<ContasPage> createState() => _ContasPageState();
}

class _ContasPageState extends State<ContasPage> {
  final ContasRepository repository = ContasRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contas'),
      ),
      body: ListView.builder(
        itemCount: repository.contas.length,
        itemBuilder: (context, index) {
          final conta = repository.contas[index];
          return ItemConta(conta: conta);
        },
      ),
    );
  }
}
