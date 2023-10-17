import 'contas.dart';

class CaixaEletronico {
  void depositarDinheiro(ContaBancaria conta, double valor) {
    conta.depositarDinheiro(valor);
  }

  bool sacarDinheiro(ContaBancaria conta, double valor) {
    return conta.sacarDinheiro(valor);
  }

  void consultarSaldo(ContaBancaria conta) {
    conta.consultarSaldo();
  }
}
