import 'package:flutter/material.dart';

class FuturePage extends StatefulWidget {
  const FuturePage({super.key});

  @override
  State<StatefulWidget> createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {

  Future<List<String>> getNames() async {
    await Future.delayed(const Duration(seconds: 5));
    return ['João', 'Maria', 'Gabriel', 'Ana'];
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getNames(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (snapshot.hasError) {
          return const Center(
            child: Text('Ocorreu um erro'),
          );
        }
        return ListView.builder(
          itemCount: snapshot.data!.length,
          itemBuilder: (context, index) {
            return Text(snapshot.data![index]);
          },
        );
      },
    );
  }
}