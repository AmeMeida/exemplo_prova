import 'package:bania/aluno_list.dart';
import 'package:flutter/material.dart';

class ConsultaPage extends StatefulWidget {
  const ConsultaPage({super.key});

  @override
  State<ConsultaPage> createState() => _ConsultaPageState();
}

class _ConsultaPageState extends State<ConsultaPage> {
  String? nome;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Consultar"),
      ),
      body: Expanded(child: AlunoList(nome: nome))
    );
  }
}
