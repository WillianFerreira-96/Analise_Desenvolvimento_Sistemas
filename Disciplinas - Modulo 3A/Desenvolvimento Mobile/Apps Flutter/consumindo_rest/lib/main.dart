//1º adicionar a dependência http: ^1.2.2 ao pubspec.yaml
//2º importar o 'package:http/http.dart'
//3º importe o 'dart:convert' para o dart aceitar formato JSON

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _statusMessage = '';
  final TextEditingController controllerID = TextEditingController();

  void fetchData(idInput) async {
    try {
      final response = await http.get(
        Uri.parse(
          'https://de-little-a-big-acai.fly.dev/estoque/buscarNomeOuID?nomeOuID=$idInput',
        ),
      );
      final data = jsonDecode(response.body);
      final id = data[0]['idItem'];
      final nome = data[0]['nomeItem'];
      setState(() {
        _statusMessage = "ID: $id\n Nome: $nome";
      });
    } catch (e) {
      setState(() {
        _statusMessage = "Erro: Falha na requisição\n $e";
      });
    }
  }
  
  /*
  void createData() async {
  final url = Uri.parse(
    'https://de-little-a-big-acai.fly.dev/estoque/adicionarItem',
  );
  final headers = {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer TOKEN',
  };
  final body = jsonEncode({
    "nomeItem": "abacaxi",
    "marca": "coroinha",
    "categoria": "frutas",
  });

  try {
    final response = await http.post(url, headers: headers, body: body);

    if (response.statusCode == 200 || response.statusCode == 201) {
      setState(() {
        _statusMessage = 'Item Criado com Sucesso!';
      });
      print('Sucesso: ${response.body}');
    } else {
      print('Erro: ${response.statusCode} - ${response.body}');
    }
  } catch (e) {
    setState(() {
      _statusMessage = "Erro ao Criar Item\n$e";
    });
  }
}
*/

  void createData() async {
    var request = http.MultipartRequest(
      'POST',
      Uri.parse('https://de-little-a-big-acai.fly.dev/estoque/adicionarItem'),
    );

    // Campos obrigatórios
    request.fields['nomeItem'] = 'abacaxi';
    request.fields['marca'] = 'coroinha';
    request.fields['categoria'] = 'frutas';

    var response = await request.send();
    final respStr = await response.stream.bytesToString();

    print(response.statusCode);
    print(respStr);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _statusMessage,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: TextField(
                controller: controllerID,
                keyboardType: TextInputType.numberWithOptions(decimal: false),
                decoration: InputDecoration(
                  labelText: 'ID',
                  labelStyle: TextStyle(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      width: 2,
                    ),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                final idInput = controllerID.text;
                fetchData(idInput);
              },
              child: Text("Buscar"),
            ),
            ElevatedButton(
              onPressed: createData,
              child: Text("Cadastrar Item"),
            ),
          ],
        ),
      ),
    );
  }
}
