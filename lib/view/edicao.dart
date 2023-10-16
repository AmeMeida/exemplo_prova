import 'package:bania/aluno.dart';
import 'package:bania/form_editar.dart';
import 'package:flutter/material.dart';

class EdicaoPage extends StatelessWidget {
  final int index;
  final Aluno aluno;

  const EdicaoPage({super.key, required this.index, required this.aluno});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edição de alunos"),
      ),
      body: FormEditar(index: index, aluno: aluno),


    );
  }
}