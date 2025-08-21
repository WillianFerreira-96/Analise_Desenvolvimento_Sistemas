import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

//1. Adicionar dependência shared_preferences: ^2.2.2 ao pubspec.yaml que permite o amarzenamento de dados no proprio dispositivo, sem a necessidade de um banco de dados
//2. Importar o pacote shared_preferences no arquivo Dart [import 'package:shared_preferences/shared_preferences.dart']

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _controller = TextEditingController();

  String _savedData = 'Nenhum dado salvo';

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _saveData(String value) async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setString('my_key', value);

    setState(() {
      _savedData = value;
    });
  }

  Future<void> _loadData() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() {
      _savedData = prefs.getString('my_key') ?? 'Nenhum dado salvo';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Shared Preferences")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _controller,
              decoration: InputDecoration(labelText: 'Digite um texto'),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                _saveData(_controller.text);
              },
              child: Text('Salvar dados'),
            ),

            SizedBox(height: 20),

            Text('Dado Salvo: $_savedData'),
          ],
        ),
      ),
    );
  }
}
