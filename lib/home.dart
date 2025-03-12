import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int vrPontoNos = 0;
  int vrPontoEles = 0;

  // funcoes

  pontuar(int qtdPontos, String who) {
    if (who == "Nós") {
      switch (qtdPontos) {
        case 1:
          setState(() {
            vrPontoNos++;
          });

          break;
        case 3:
          setState(() {
            vrPontoNos += 3;
          });
          break;

        case 0:
          setState(() {
            vrPontoNos = 0;
          });
        default:
      }
    } else {
      switch (qtdPontos) {
        case 1:
          setState(() {
            vrPontoEles++;
          });

          break;
        case 3:
          setState(() {
            vrPontoEles += 3;
          });
          break;

        case 0:
          setState(() {
            vrPontoEles = 0;
          });
        default:
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.7,
            color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Nós",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Eles",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      vrPontoNos.toString(),
                      style: TextStyle(
                        fontSize: 56,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      vrPontoEles.toString(),
                      style: TextStyle(
                        fontSize: 56,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Botões de 1 ponto
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  pontuar(1, "Nós");
                },
                child: Card(
                  elevation: 10,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    padding: EdgeInsets.all(15),
                    // color: Colors.green,
                    child: Text(
                      "Simples (1)",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  pontuar(1, "Eles");
                },
                child: Card(
                  elevation: 10,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    padding: EdgeInsets.all(15),
                    // color: Colors.green,
                    child: Text(
                      "Simples (1)",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              // Text("Simples (1)"),
            ],
          ),

          //3 pontos

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: (){
                  pontuar(3, "Nós");
                },
                child: Card(
                  elevation: 10,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    padding: EdgeInsets.all(15),
                    // color: Colors.green,
                    child: Text(
                      "Truco (3)",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  pontuar(3, "Eles");
                },
                child: Card(
                  elevation: 10,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    padding: EdgeInsets.all(15),
                    // color: Colors.green,
                    child: Text(
                      "Truco (3)",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),

          //Zerar Pontuação
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: (){
                  pontuar(0, "Nós");
                },
                child: Card(
                  elevation: 10,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    padding: EdgeInsets.all(15),
                    // color: Colors.green,
                    child: Text(
                      "Zerar",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  pontuar(0,"Eles");
                },
                child: Card(
                  elevation: 10,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    padding: EdgeInsets.all(15),
                    // color: Colors.green,
                    child: Text(
                      "Zerar",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
