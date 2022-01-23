import 'package:bytebank_app/components/editor.dart';
import 'package:bytebank_app/models/transferencia.dart';
import 'package:flutter/material.dart';

const _appBarTitle = 'Nova Transferência';

const _tagNumConta = 'Número da Conta';
const _hintNumConta = '0000';

const _tagValor = 'Valor';
const _hintValor = '100.0';

const _tagButton = 'Transferir';

class FormularioTransferencia extends StatefulWidget {
  @override
  State<FormularioTransferencia> createState() =>
      _FormularioTransferenciaState();
}

class _FormularioTransferenciaState extends State<FormularioTransferencia> {
  final TextEditingController _numContaController = TextEditingController();

  final TextEditingController _valorController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitle),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Editor(_numContaController, _tagNumConta, _hintNumConta,
                Icons.account_balance_wallet),
            Editor(
                _valorController, _tagValor, _hintValor, Icons.monetization_on),
            RaisedButton(
              onPressed: () => _criaTransferencia(context),
              child: Text(_tagButton),
            ),
          ],
        ),
      ),
    );
  }

  void _criaTransferencia(BuildContext context) {
    final int? numConta = int.tryParse(_numContaController.text);
    final double? valor = double.tryParse(_valorController.text);

    if (numConta != null && valor != null) {
      final transferenciaCriada = Transferencia(valor, numConta);
      debugPrint('Criando transferência...');
      debugPrint('$transferenciaCriada');
      Navigator.pop(context, transferenciaCriada);
    }
  }
}
