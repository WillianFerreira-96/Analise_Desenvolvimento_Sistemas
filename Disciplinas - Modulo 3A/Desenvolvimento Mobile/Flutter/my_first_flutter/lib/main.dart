import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("My First Flutter")),
        body: PageView(
          children: [passo1(), passo2(), passo3(), passo4(), passo5()],
        ),
      ),
    );
  }
}

//-----------------------------------------------------------------------------
Widget passo1() => Center(
  child: Text(
    'Passo 1:\nHello World',
    textAlign: TextAlign.center,
    style: TextStyle(fontSize: 20),
  ),
);

//-----------------------------------------------------------------------------
Widget passo2() => Center(
  child: Container(
    padding: EdgeInsets.all(16),
    margin: EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 106, 215, 9),
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: Colors.black, width: 2),
    ),
    child: Text(
      'Passo 2:\nContainer, Padding e estilização de Text',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: const Color.fromARGB(255, 7, 3, 115),
      ),
    ),
  ),
);

//-----------------------------------------------------------------------------
Widget passo3() => Padding(
  padding: EdgeInsets.all(16),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        margin: EdgeInsets.only(bottom: 100),
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
          color: const Color.fromARGB(88, 3, 168, 244),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Passo 3:\nRow e Column",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 23),
            ),
          ],
        ),
      ),
      Text('Coluna de Itens:', style: TextStyle(fontSize: 20)),
      SizedBox(height: 10),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.star, color: Colors.amber),
          Text('Item 1'),
          ElevatedButton(onPressed: () {}, child: Text("Ok")),
        ],
      ),
      SizedBox(height: 10),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.star, color: Colors.red),
          Text("Item 2"),
          ElevatedButton(onPressed: () {}, child: Text("Ok")),
        ],
      ),
    ],
  ),
);

//-----------------------------------------------------------------------------
Widget passo4() => Center(
  child: Column(
    children: [
      SizedBox(height: 40),
      Container(
        width: 300,
        height: 150,
        decoration: BoxDecoration(
          color: Colors.lightGreenAccent,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Passo 4:\nimage, width, height,\nobject-fit",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ],
        ),
      ),
      SizedBox(height: 40),
      Text(
        "Imagem via internet",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 15),
      Container(
        width: 300,
        height: 200,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blueAccent, width: 4),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 8)],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(
            'https://buildfire.com/wp-content/uploads/2024/09/become-mobile-app-developer-1.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
      SizedBox(height: 30),
      Text(
        "Imagem local",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 15),
      Container(
        width: 300,
        height: 200,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blueAccent, width: 4),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 8)],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          //No Flutter, ao carregar imagens com Image.asset, não se usa a barra inicial / no caminho do asset
          //E o caminho precisa esta declarado no "asset:" do pubspec.yaml. dento do "flutter:", após o "uses-material-design: true"
          child: Image.asset("assets/img/Android-iOS.jpg", fit: BoxFit.cover),
        ),
      ),
    ],
  ),
);

//-----------------------------------------------------------------------------
//1º o passo5() retorna a classe _Passo5Animacao()
Widget passo5() => _Passo5Animacao();

//2º a classe _Passo5Animacao() cria e retorna uma instância da classe _Passo5AnimacaoState()
class _Passo5Animacao extends StatefulWidget{
  @override
  State<_Passo5Animacao> createState() => _Passo5AnimacaoState();
}

//3º 
class _Passo5AnimacaoState extends State<_Passo5Animacao>{
  bool _animado = false;

  @override
  Widget build(BuildContext context) {
    return Center();
  }
}

