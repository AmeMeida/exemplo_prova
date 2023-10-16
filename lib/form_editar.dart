import 'package:bania/aluno.dart';
import 'package:bania/aluno_control.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormEditar extends StatefulWidget {
  final Aluno aluno;
  final int index;

  const FormEditar({super.key, required this.index, required this.aluno});

  @override
  State<FormEditar> createState() => _FormEditarState();
}

class _FormEditarState extends State<FormEditar> {
  final nomeControl = TextEditingController();
  final raControl = TextEditingController();
  final bolsistaControl = TextEditingController();

  final key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: key,
      child: Column(
        children: [
          TextFormField(
            controller: nomeControl,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Por favor, insira um valor.";
              }

              if (value.length < 3 || value.length > 30) {
                return "Insira um nome entre 3 e 30 caracteres.";
              }

              return null;
            },
            decoration: const InputDecoration(
              hintText: "Nome",
              labelText: "Nome"
            )
          ),
          TextFormField(
            controller: raControl,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            keyboardType: TextInputType.number,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Por favor, insira um RA.";
              }

              if (value.length != 6) {
                return "Um RA válido deve conter 6 dígitos.";
              }

              return null;
            },
            decoration: const InputDecoration(
              hintText: "Ra",
              labelText: "Ra"
            )
          ),
          TextFormField(
            controller: bolsistaControl,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Por favor, informe sua condição.";
              }

              if (value != "bolsista" || value != "normal") {
                return "Informe 'bolsista' ou 'normal'.";
              }

              return null;
            },
            decoration: const InputDecoration(
              hintText: "Bolsista",
              labelText: "Bolsista ou normal"
            )
          ),

          ElevatedButton(
            onPressed: () {
              if (key.currentState!.validate()) {
                final aluno = Aluno(
                  isBolsista: bolsistaControl.text == "bolsista",
                  ra: int.parse(raControl.text),
                  nome: nomeControl.text,
                );

                alunoControl.editar(widget.index, aluno);
              }
            }, 
            child: const Text("Enviar"))


        ]
      )
    );
  }
}