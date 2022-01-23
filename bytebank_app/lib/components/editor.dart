import 'package:flutter/material.dart';

class Editor extends StatelessWidget {
  final TextEditingController _controlador;
  final String _rotulo, _dica;
  final IconData _icone;

  Editor(this._controlador, this._rotulo, this._dica, this._icone);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: _controlador,
        style: TextStyle(
          fontSize: 15,
          color: Colors.blueGrey,
        ),
        decoration: InputDecoration(
          icon: Icon(_icone),
          labelText: _rotulo,
          hintText: _dica,
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}
