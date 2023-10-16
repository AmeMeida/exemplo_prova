import 'package:bania/aluno.dart';

class AlunoControl {
  List<Aluno> alunos = [];

  void adicionar(Aluno aluno) {
    alunos.add(aluno);
  }

  void remover(Aluno aluno) {
    alunos.remove(aluno);
  }

  void editar(int index, Aluno aluno) {
    alunos[index] = aluno;
  }
}

final alunoControl = AlunoControl(); 
