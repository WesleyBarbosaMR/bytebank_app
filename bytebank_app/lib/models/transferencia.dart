class Transferencia {
  final double valor;
  final int numConta;

  Transferencia(this.valor, this.numConta);

  @override
  String toString() {
    return 'Transferência Registrada {Número da Conta: $numConta | Valor: $valor}';
  }
}
