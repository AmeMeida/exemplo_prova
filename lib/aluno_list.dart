import 'package:bania/aluno.dart';
import 'package:bania/aluno_control.dart';
import 'package:bania/aluno_tile.dart';
import 'package:flutter/material.dart';

class AlunoList extends StatelessWidget {
  final String? nome;

  const AlunoList({super.key, this.nome});

  @override
  Widget build(BuildContext context) {
    List<Aluno> alunos = [];

    if (nome == null || nome!.isEmpty) {
      alunos = alunoControl.alunos;
    } else {
      for (var aluno in alunoControl.alunos) {
        if (aluno.nome.toLowerCase().startsWith(nome!.toLowerCase())) {
          alunos.add(aluno);
        }
      }
    }

    return ListView.builder(
      shrinkWrap: true,
      itemCount: alunos.length,
      itemBuilder: (context, index) {
        return AlunoTile(index: index, aluno: alunos[index]);
      }
    );
  }
}