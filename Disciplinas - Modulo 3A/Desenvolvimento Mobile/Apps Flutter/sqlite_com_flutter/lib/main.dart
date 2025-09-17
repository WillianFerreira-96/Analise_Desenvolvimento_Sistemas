import 'package:flutter/material.dart';

//1. Adicionar dependência sqflite: ^2.3.3 ao pubspec.yaml
//      Permite usar o banco de dados SQLite no Flutter
//2. Adicionar dependência path: ^1.8.0 ao pubspec.yaml
//      Ajuda a manipular caminhos de arquivos de forma segura e compatível entre sistemas (Windows, Linux, Android, iOS).
//3. importar o import 'package:sqflite/sqflite.dart';
//4. importar o import 'package:path/path.dart';

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SQLite no Flutter',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        scaffoldBackgroundColor: Colors.grey[100],
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _controller = TextEditingController();

  List<Map<String, dynamic>> _items = [];

  int? _selectedId;

  String buttonText = 'Inserir';

  @override
  void initState() {
    super.initState();
    _loadItems();
  }

  Future<Database> initializeDB() async {
    String path = await getDatabasesPath();
    return openDatabase(
      join(path, 'exemplo.db'),
      onCreate: (database, version) async {
        await database.execute(
          'CREATE TABLE items(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT)',
        );
      },
      version: 1,
    );
  }

  Future<void> saveItem(String name) async {
    final db = await initializeDB();

    if (_selectedId == null) {
      await db.insert('Items', {
        'name': name,
      }, conflictAlgorithm: ConflictAlgorithm.replace);
    }else{
      await db.update('Items', {
        'name': name,
        },
        where: 'id = ?',
        whereArgs: [_selectedId]
      );

      setState(() {
        _selectedId = null;
        buttonText = 'Inserir';
      });
    }

    _controller.clear();

    _loadItems();
  }

  Future<void> deleteItem(int id) async {
    final db = await initializeDB();

    await db.delete(
      'Items', 
      where: 'id = ?',
      whereArgs: [id]
    );

    _loadItems();
  }
  
  Future<void> _loadItems() async {
    final db = await initializeDB();
    final data = await db.query('Items');
    setState(() {
      _items = data;
    });
  }

  void selectForUpdate(int id, String name){
    setState(() {
      _controller.text = name;
      _selectedId = id;
      buttonText = 'Atualizar';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SQLite no Flutter'),
        backgroundColor: Colors.lightGreen,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Digite um nome',
                labelStyle: TextStyle(color: Colors.lightGreen[700]),
                filled: true,
                fillColor: Colors.lightGreen[100],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.lightGreen),
                ),
              ),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                saveItem(_controller.text);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: _selectedId == null ? Colors.lightGreen : Colors.orangeAccent,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text(
                buttonText,
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),

            SizedBox(height: 20),

            Expanded(
              child: ListView.builder(
                itemCount: _items.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    color: Colors.lightGreen[50],
                    child: ListTile(
                      leading: Icon(Icons.person, color: Colors.lightGreen[700]),
                      title: Text(
                        _items[index]['name'],
                        style: TextStyle(fontSize: 18, color: Colors.black87),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(onPressed: (){
                            selectForUpdate(
                              _items[index]['id'],
                              _items[index]['name']
                            );
                          }, icon: Icon(
                              Icons.edit,
                              color: Colors.grey[600],
                            )
                          ),

                          IconButton(onPressed: (){
                            deleteItem(
                              _items[index]['id'],
                            );
                          }, icon: Icon(
                              Icons.delete,
                              color: Colors.red[300],
                            )
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
