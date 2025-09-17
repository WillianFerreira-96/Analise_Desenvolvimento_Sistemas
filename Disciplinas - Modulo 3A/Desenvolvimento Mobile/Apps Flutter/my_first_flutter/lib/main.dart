import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

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
          children: [
            passo1(),
            passo2(),
            passo3(),
            passo4(),
            passo5(),
            passo6(),
            passo7(),
            passo8(),
          ],
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
class _Passo5Animacao extends StatefulWidget {
  @override
  State<_Passo5Animacao> createState() => _Passo5AnimacaoState();
}

//3º guarda a animação
class _Passo5AnimacaoState extends State<_Passo5Animacao> {
  bool _isExpanded = false;
  bool _isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 300,
              height: 100,

              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Passo 5:\nAnimações",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),

            //Linha divisória
            Divider(),

            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            "AnimatedContainer",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _isExpanded = !_isExpanded;
                            });
                          },

                          child: AnimatedContainer(
                            width: _isExpanded ? 300 : 200,
                            height: _isExpanded ? 800 : 200,
                            alignment: _isExpanded
                                ? Alignment.center
                                : Alignment.topCenter,
                            duration: Duration(seconds: 1),
                            //color: _isExpanded ? Colors.lightBlueAccent : Colors.blueGrey,
                            //color é um atalho para decoration: BoxDecoration(color: ...).
                            //Se o decoration for definido manualmente, o color não pode ser usado como atalho separadamente
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: _isExpanded
                                  ? Colors.lightBlueAccent
                                  : Colors.blueGrey,
                            ),

                            child: Padding(
                              padding: EdgeInsets.all(30),
                              child: Text(
                                "Toque aqui!",
                                style: TextStyle(
                                  fontWeight: _isExpanded
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                                  fontSize: _isExpanded ? 22 : 18,
                                  color: _isExpanded
                                      ? Colors.black
                                      : Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // GestureDetector detecta toques na tela e ativa a animação

                  //Linha divisória
                  Divider(),

                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      "AnimatedOpacity",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  AnimatedOpacity(
                    opacity: _isVisible ? 1.0 : 0.0,
                    duration: Duration(seconds: 1),
                    child: Text(
                      "Visível/Invisível",
                      style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  SizedBox(height: 20), // Espaçamento

                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _isVisible = !_isVisible;
                      });
                    },
                    child: Text("Visibilidade"),
                  ),
                ], //children
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//-----------------------------------------------------------------------------

Widget passo6() => Column(
  //Precisa importar o import 'package:video_player/video_player.dart';
  //E adicionar o video_player: ^2.9.1 as dependencias do pubspec.yaml
  children: [
    Container(
      width: 300,
      height: 100,

      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 150, 69, 255),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Passo 6:\nVideos",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 23,
              color: Colors.white,
            ),
          ),
        ],
      ),
    ),

    const VideoPlayerWidget(),
  ],
);

class VideoPlayerWidget extends StatefulWidget {
  const VideoPlayerWidget({super.key});

  @override
  _VideoPlayerWidgetState createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();

    _controller =
        VideoPlayerController.networkUrl(
            Uri.parse(
              'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
            ),
          )
          ..initialize().then((_) {
            setState(() {});
          });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          _controller.value.isInitialized
              ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                )
              : CircularProgressIndicator(),

          SizedBox(height: 20),

          FloatingActionButton(
            onPressed: () {
              setState(() {
                _controller.value.isPlaying
                    ? _controller.pause()
                    : _controller.play();
              });
            },

            child: Icon(
              _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();

    _controller.dispose();
  }
}

//-----------------------------------------------------------------------------

Widget passo7() => Column(
  //Precisa importar o import 'package:youtube_player_flutter/youtube_player_flutter.dart';
  //E adicionar o youtube_player_flutter: ^9.0.1 as dependencias do pubspec.yaml
  children: [
    Container(
      width: 300,
      height: 100,

      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 17, 0),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Passo 7:\nYouTube",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 27,
              color: Colors.white,
            ),
          ),
        ],
      ),
    ),

    const YouTubeVideoPlayer(),
  ],
);

class YouTubeVideoPlayer extends StatefulWidget {
  const YouTubeVideoPlayer({super.key});

  @override
  State<YouTubeVideoPlayer> createState() => _YouTubeVideoPlayerState();
}

class _YouTubeVideoPlayerState extends State<YouTubeVideoPlayer> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: 'dQw4w9WgXcQ', // Só o ID do vídeo
      flags: const YoutubePlayerFlags(autoPlay: false, mute: false),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: true,
      ),
    );
  }
}

//-----------------------------------------------------------------------------

Widget passo8() => MaterialApp(
  // O theme  precisa esta dentro do MaterialApp()
  // O theme não esta funcionando
  theme: ThemeData(
    primarySwatch: Colors.blue,
    textTheme: TextTheme(bodyLarge: TextStyle(color: Colors.deepPurple, fontSize: 20)),
  ),

  home: Padding(
    padding: EdgeInsets.all(20),
    child: Column(
      children: [
        Text("Texto com tema personalizado!"),
        ElevatedButton(onPressed: (){}, child: Text("Test"))
      ],
    ),
  ),
);
