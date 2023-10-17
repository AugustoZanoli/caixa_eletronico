import 'contas.dart';
import 'caixa_eletronico.dart';
import 'dart:io';

void main() {
  //Criação da conta
  ContaBancaria conta1 = ContaBancaria('', 0, 0.0);
  print('Bem vindo!\n');
  print('Primeiro vamos criar sua conta!\nQual seu nome?: ');
  conta1.titular = stdin.readLineSync().toString();
  print('Registar número da conta bancária: ');
  conta1.conta = int.parse(stdin.readLineSync().toString());

  //Criação do caixa eletronico
  CaixaEletronico caixa1 = CaixaEletronico();

  while (true) {
    print('\nEscolha uma opção para realizar: ');
    print('\n1- Realziar depósito');
    print('\n2- Realizar saque');
    print('\n3- Consultar saldo');
    print('\n4- Consultar dados');
    print('\n5- Sair\n');

    var opcao = int.parse(stdin.readLineSync().toString());

    switch (opcao) {
      case 1:
        print('Informe o valor do depósito: ');
        var valorDeposito = double.parse(stdin.readLineSync().toString());
        caixa1.depositarDinheiro(conta1, valorDeposito);
        break;

      case 2:
        print('Informe o valor do saque: ');
        var valorSaque = double.parse(stdin.readLineSync().toString());
        caixa1.sacarDinheiro(conta1, valorSaque);
        break;

      case 3:
        caixa1.consultarSaldo(conta1);
        break;

      case 4:
        caixa1.consultarDados(conta1);
        break;

      case 5:
        print('Finalizando...\nFinalizado! Tenha um bom dia!');
        return;

      default:
        print('Opção inválida! Tente novamente');
        break;
    }
  }
}
