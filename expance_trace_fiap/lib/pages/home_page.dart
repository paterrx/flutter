import 'package:expense_tracker/pages/categorias_page.dart';
import 'package:expense_tracker/pages/contas_page.dart';
import 'package:expense_tracker/pages/dashboard_page.dart';
import 'package:expense_tracker/pages/transacoes_page.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      bottomNavigationBar: getFooter(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: pageIndex,
      children: const [
        DashBoardPage(),
        TransacoesPage(),
        ContasPage(),
        CategoriasPage(),
      ],
    );
  }

  Widget getFooter() {
    List<BottomNavigationBarItem> items = const [
      BottomNavigationBarItem(
        icon: Icon(Ionicons.bar_chart_outline),
        label: 'Dashboard',
      ),
      BottomNavigationBarItem(
        icon: Icon(Ionicons.swap_horizontal_outline),
        label: 'Transações',
      ),
      BottomNavigationBarItem(
          icon: Icon(Ionicons.wallet_outline), label: 'Contas'),
      BottomNavigationBarItem(
          icon: Icon(Ionicons.list_outline), label: 'Categorias'),
    ];

    return BottomNavigationBar(
      items: items,
      type: BottomNavigationBarType.fixed,
      currentIndex: pageIndex,
      onTap: (index) {
        setState(() {
          pageIndex = index;
        });
      },
    );
  }
}
