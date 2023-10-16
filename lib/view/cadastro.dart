import 'package:bania/form_adicionar.dart';
import 'package:flutter/material.dart';

class CadastroPage extends StatelessWidget {
  const CadastroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cadastro de alunos"),
      ),
      body: const FormAdicionar(),


    );
  }
}