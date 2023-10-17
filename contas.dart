import 'dart:io';

class ContaBancaria {
  String titular;
  var conta;
  double saldo;

  ContaBancaria(this.titular, this.conta, this.saldo);

  //Criação da função depositar dinheiro
  void depositarDinheiro(double valor) {
    saldo += valor;
    print('Depósito realizado! Deseja ver o novo saldo?\n1- sim\n2- não');

    var opcao = int.parse(stdin.readLineSync().toString());

    switch (opcao) {
      case 1:
        print('Novo saldo: $saldo');
        break;

      default:
        print('Finalizando...\nFinalizado!');
    }
  }
}
