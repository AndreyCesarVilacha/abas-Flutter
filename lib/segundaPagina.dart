import 'package:flutter/material.dart';

class SegundaPagina extends StatefulWidget {
  const SegundaPagina({Key? key}) : super(key: key);

  @override
  _SegundaPaginaState createState() => _SegundaPaginaState();
}

class _SegundaPaginaState extends State<SegundaPagina> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Segunda pagina (Email)"),
    );
  }
}
