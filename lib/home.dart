import 'package:abas_teste/primeiraPagina.dart';
import 'package:abas_teste/segundaPagina.dart';
import 'package:abas_teste/terceiraPagina.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

//O SingleTickerProviderStateMixin é obirgatório para o vsync
class _HomeState extends State<Home> with SingleTickerProviderStateMixin {

  //Criando um controller
  late TabController _tabController;

  //O estado inicial do app
  @override
  void initState() {

    super.initState();
    //Implementando o TabController com o tamanho 3, o vsync vai ser controlado pela classe
    //e ele vai começar na aba 0 (home)
    _tabController = TabController(length: 3, vsync: this, initialIndex: 0);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Abas"),
        //O TabBar é responsavel por criar as abas
        bottom: TabBar(
          controller: _tabController,
          //Criamos cada aba
          tabs: [
            //Uma aba pode ter texto e/ou um icone
            Tab(
              text: "Home",
              icon: Icon(Icons.home),
            ),
            Tab(
              text: "Email",
              icon: Icon(Icons.email),
            ),
            Tab(
              text: "Conta",
              icon: Icon(Icons.account_circle),
            ),
          ],
        ),
      ),
      //O conteúdo de cada aba
      body: TabBarView(
        //O controller da aba
        controller: _tabController,
        //Os widgets que são chamados ao clickar na aba
        children: [
          PrimeiraPagina(),
          SegundaPagina(),
          TerceiraPagina(),
        ],
      ),
    );
  }
}
