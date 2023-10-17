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
        print('Novo saldo: $saldo\n');
        break;

      default:
        print('Finalizando...\nFinalizado!');
        break;
    }
  }

  //Criação da função de sacar
  bool sacarDinheiro(double valor) {
    if (saldo >= valor) {
      saldo -= valor;
      print(
          'Saque realizado!\nValor de saque:${valor}\nDeseja ver o novo saldo?\n1- sim\n2- não');

      var opcao = int.parse(stdin.readLineSync().toString());

      switch (opcao) {
        case 1:
          print('Novo saldo: $saldo\n');
          break;

        default:
          print('Finalizando...\nFinalizado!');
          break;
      }

      return true;
    } else {
      print('Saldo insuficiente para saque.\n');
      return false;
    }
  }

  //Criação da função de consultar saldo
  void consultarSaldo() {
    print('\nSeu saldo em conta: $saldo\n');
  }

  //Criação da função consultar dados do usuário
  void consultarDados() {
    print(
        '\nNome do titular: $titular\nNúmero da conta: $conta\nSaldo atual: $saldo\n');
  }
}
