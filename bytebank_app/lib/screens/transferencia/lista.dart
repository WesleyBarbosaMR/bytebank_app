import 'package:bytebank_app/models/transferencia.dart';
import 'package:bytebank_app/screens/transferencia/formulario.dart';
import 'package:flutter/material.dart';

const _appBarTitle = 'Transferências';

class ListaTransferencias extends StatefulWidget {
  final List<Transferencia> _transferencias = [];

  @override
  State<StatefulWidget> createState() => _ListaTransferenciasState();
}

class _ListaTransferenciasState extends State<ListaTransferencias> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitle),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: widget._transferencias.length,
        itemBuilder: (context, indice) {
          final transferencia = widget._transferencias[indice];
          return ItemTransfencia(transferencia);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return FormularioTransferencia();
          })).then(
            (transferenciaRecebida) => _atualiza(transferenciaRecebida),
          );
        },
        backgroundColor: Colors.green,
        child: Icon(Icons.add),
      ),
    );
  }

  void _atualiza(transferenciaRecebida) {
    Future.delayed(Duration(milliseconds: 500), () {
      debugPrint('chegou');
      debugPrint('$transferenciaRecebida');
      if (transferenciaRecebida != null) {
        setState() {
          widget._transferencias.add(transferenciaRecebida);
        }
      }
    });
  }
}

class ItemTransfencia extends StatelessWidget {
  final Transferencia _transferencia;
  ItemTransfencia(this._transferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_transferencia.valor.toString()),
        subtitle: Text(_transferencia.numConta.toString()),
      ),
    );
  }
}
