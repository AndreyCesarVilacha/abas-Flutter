import 'package:flutter/material.dart';

class TerceiraPagina extends StatefulWidget {
  const TerceiraPagina({Key? key}) : super(key: key);

  @override
  _TerceiraPaginaState createState() => _TerceiraPaginaState();
}

class _TerceiraPaginaState extends State<TerceiraPagina> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Terceira pagina (Conta)"),
    );
  }
}
