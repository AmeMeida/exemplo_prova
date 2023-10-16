import 'package:bania/aluno.dart';
import 'package:bania/aluno_control.dart';
import 'package:bania/view/edicao.dart';
import 'package:flutter/material.dart';

class AlunoTile extends StatelessWidget {
  final Aluno aluno;
  final int index;

  const AlunoTile({super.key, required this.index, required this.aluno});

  @override
  Widget build(BuildContext context) {
    return ListTile();
  }
}
