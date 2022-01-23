import 'package:bytebank_app/screens/transferencia/lista.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ByteBankApp());
}

class ByteBankApp extends StatelessWidget {
  const ByteBankApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.green[900],
          accentColor: Colors.blueAccent[200],
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.green[900],
            foregroundColor: Colors.white,
          ),
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.blueAccent[200],
            textTheme: ButtonTextTheme.primary,
          )),
      home: ListaTransferencias(),
    );
  }
}
