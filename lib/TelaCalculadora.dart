import 'package:flutter/material.dart';

class TelaCalculadora extends StatefulWidget {
  @override
  _TelaCalculadoraState createState() => _TelaCalculadoraState();
}

class _TelaCalculadoraState extends State<TelaCalculadora> {
  String tela = "Visor";
  var num = 0;
  var string = '';
  String imprimir(valor) {
    var v = valor;
    var saida = '';
    if (v is int) {
      saida = 'Numero: $v';
    } else {
      switch (v) {
        case 'c':
          saida = 'Limpar';
          break;
        case 'd':
          saida = 'Apagar';
          break;
        case '=':
          saida = 'Resultado';
          break;
        case '%':
          saida = 'Porcentagem';
          break;
        case '/':
          saida = 'Divisão';
          break;
        case '*':
          saida = 'Multiplicação';
          break;
        case '+':
          saida = 'Somar';
          break;
        case '-':
          saida = 'Subitrair';
          break;
        default:
          saida = '.';
      }
    }
    return saida;
  }

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 30),
      primary: Color(0xFF37474f),
      minimumSize: const Size(64, 64),
    );

    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'Calculadora',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            //color: Colors.white,
            width: 400,
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            height: 140,
            child: Center(
              child: Text(
                '$tela',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Color(0xFF37474f),
                width: 8,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          Container(
            height: 420,
            width: 400,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.5),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(
                          style: style,
                          onPressed: () {
                            setState(() {
                              string = 'c';
                              tela = imprimir(string);
                            });
                          },
                          child: const Text(
                            'C',
                            style: TextStyle(color: Color(0xFFff3d00)),
                          ),
                        ),
                      ),
                      SizedBox(width: 5.5),
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(
                          style: style,
                          onPressed: () {
                            setState(() {
                              string = 'd';
                              tela = imprimir(string);
                            });
                          },
                          child: const Text(
                            'DEL',
                            style: TextStyle(color: Color(0xFFff3d00)),
                          ),
                        ),
                      ),
                      SizedBox(width: 5.5),
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(
                          style: style,
                          onPressed: () {
                            setState(() {
                              string = '%';
                              tela = imprimir(string);
                            });
                          },
                          child: const Text(
                            '%',
                            style: TextStyle(color: Color(0xFFff3d00)),
                          ),
                        ),
                      ),
                      SizedBox(width: 5.5),
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(
                          style: style,
                          onPressed: () {
                            setState(() {
                              string = '/';
                              tela = imprimir(string);
                            });
                          },
                          child: const Text(
                            '/',
                            style: TextStyle(color: Color(0xFFff3d00)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: ElevatedButton(
                        style: style,
                        onPressed: () {
                          setState(() {
                              num = 7;
                              tela = imprimir(num);
                            });
                        },
                        child: const Text('7'),
                      ),
                    ),
                    SizedBox(width: 5.5),
                    Expanded(
                      flex: 1,
                      child: ElevatedButton(
                        style: style,
                        onPressed: () {
                          setState(() {
                              num = 8;
                              tela = imprimir(num);
                            });
                        },
                        child: const Text('8'),
                      ),
                    ),
                    SizedBox(width: 5.5),
                    Expanded(
                      flex: 1,
                      child: ElevatedButton(
                        style: style,
                        onPressed: () {
                          setState(() {
                              num = 9;
                              tela = imprimir(num);
                            });
                        },
                        child: const Text('9'),
                      ),
                    ),
                    SizedBox(width: 5.5),
                    Expanded(
                      flex: 1,
                      child: ElevatedButton(
                        style: style,
                        onPressed: () {
                          setState(() {
                              string = '*';
                              tela = imprimir(string);
                            });
                        },
                        child: const Text(
                          '*',
                          style: TextStyle(color: Color(0xFFff3d00)),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.5),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(
                          style: style,
                          onPressed: () {
                            setState(() {
                              num = 4;
                              tela = imprimir(num);
                            });
                          },
                          child: const Text('4'),
                        ),
                      ),
                      SizedBox(width: 5.5),
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(
                          style: style,
                          onPressed: () {
                            setState(() {
                              num = 5;
                              tela = imprimir(num);
                            });
                          },
                          child: const Text('5'),
                        ),
                      ),
                      SizedBox(width: 5.5),
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(
                          style: style,
                          onPressed: () {
                            setState(() {
                              num = 6;
                              tela = imprimir(num);
                            });
                          },
                          child: const Text('6'),
                        ),
                      ),
                      SizedBox(width: 5.5),
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(
                          style: style,
                          onPressed: () {
                            setState(() {
                              string = '+';
                              tela = imprimir(string);
                            });
                          },
                          child: const Text(
                            '+',
                            style: TextStyle(color: Color(0xFFff3d00)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: ElevatedButton(
                        style: style,
                        onPressed: () {
                          setState(() {
                              num = 1;
                              tela = imprimir(num);
                            });
                        },
                        child: const Text('1'),
                      ),
                    ),
                    SizedBox(width: 5.5),
                    Expanded(
                      flex: 1,
                      child: ElevatedButton(
                        style: style,
                        onPressed: () {
                          setState(() {
                              num = 2;
                              tela = imprimir(num);
                            });
                        },
                        child: const Text('2'),
                      ),
                    ),
                    SizedBox(width: 5.5),
                    Expanded(
                      flex: 1,
                      child: ElevatedButton(
                        style: style,
                        onPressed: () {
                          setState(() {
                              num = 3;
                              tela = imprimir(num);
                            });
                        },
                        child: const Text('3'),
                      ),
                    ),
                    SizedBox(width: 5.5),
                    Expanded(
                      flex: 1,
                      child: ElevatedButton(
                        style: style,
                        onPressed: () {
                          setState(() {
                              string = '-';
                              tela = imprimir(string);
                            });
                        },
                        child: const Text(
                          '-',
                          style: TextStyle(color: Color(0xFFff3d00)),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.5),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(
                          style: style,
                          onPressed: () {
                            setState(() {
                              num = 0;
                              tela = imprimir(0);
                            });
                          },
                          child: const Text('0'),
                        ),
                      ),
                      SizedBox(width: 5.5),
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(
                          style: style,
                          onPressed: () {
                            setState(() {
                              string = '.';
                              tela = imprimir(string);
                            });
                          },
                          child: const Text('.'),
                        ),
                      ),
                      SizedBox(width: 5.5),
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(
                          style: style,
                          onPressed: () {
                            setState(() {
                              string = '=';
                              tela = imprimir(string);
                            });
                          },
                          child: const Text(
                            '=',
                            style: TextStyle(color: Color(0xFFff3d00)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
