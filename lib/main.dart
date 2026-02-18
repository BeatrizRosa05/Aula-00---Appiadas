import 'package:flutter/material.dart';

///Ponto de entrada do APP(MAIN)
void main() {

    //(runApp) inicia o app Flutter
    runApp(const MyApp());
}

//STATELESS WIDGET (STL) -------------------------------
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appiadas',
      home: AppiadasHome(),
    );
  }
}

//STATEFUL WIDGET (STF) ----------------------------
class AppiadasHome extends StatefulWidget {
  const AppiadasHome({super.key});

  @override
  State<AppiadasHome> createState() => _AppiadasHomeState();
}

class _AppiadasHomeState extends State<AppiadasHome> {
  @override
  Widget build(BuildContext context) {
    ///SCAFFOLD (WIDGET RESPONSÁVEL POR CRIAR A ESTRUTURA VISUAL PRINCIPAL DE UMA TELA NO FLUTTER)
    return Scaffold(
      appBar: AppBar(title: Text("Appiadas")),
      ///CONTAINER (WIDGET USADO PARA AGRUPAR, ESTILIZAR E POSICIONAR OUTROS WIDGETS)
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("images/background_joker.png"),
          fit: BoxFit.cover
          ),
        ),
        child: Column(
          //mainAxisAlignment (CONTROLA O ALINHAMENTO VERTICAL DOS ITENS)
          //crossAxisAlignment (CONTROLA O ALINHAMENTO HORIZONTAL DOS ITENS)
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
              Text(
              'Aqui será exibida a piada',
              style: TextStyle(
                fontSize: 24,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                color: Colors.orange.shade100,
                letterSpacing: 0,
                wordSpacing: 10,
                decoration: TextDecoration.none,
                decorationColor: Colors.green.shade900,
                ),
                ),
          ],
        ),
      ),
    );
  }
}

//Teste git alteração

