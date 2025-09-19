
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';


void main() async {
  
  WidgetsFlutterBinding.ensureInitialized();
  
  
  await Firebase.initializeApp();

  
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Push Notification Test', 
      theme: ThemeData(
        primarySwatch: Colors.blue, 
      ),
      home: const PushNotificationScreen(), 
    );
  }
}


class PushNotificationScreen extends StatefulWidget {
  const PushNotificationScreen({super.key});

  @override
  _PushNotificationScreenState createState() => _PushNotificationScreenState();
}


class _PushNotificationScreenState extends State<PushNotificationScreen> {
  
  
  String message = "Aguardando Mensagens Push...";

  
  bool _isResponseFieldVisible = false;

  
  final TextEditingController _responseController = TextEditingController();

  @override
  void initState() {
    super.initState();
    
    _initializeFirebaseMessaging();
  }

  
  void _initializeFirebaseMessaging() async {
    FirebaseMessaging messaging = FirebaseMessaging.instance;

    
    NotificationSettings settings = await messaging.requestPermission(
      alert: true,  
      badge: true,  
      sound: true,  
    );

    
    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print('Permissão concedida para enviar notificações');
    }

    
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      
      setState(() {
        this.message = "Mensagem recebida:\n${message.notification?.title}\n${message.notification?.body}";
        _isResponseFieldVisible = true;  
      });
    });
  }

  
  void _onButtonPressed() {
    setState(() {
      message = "Teste\nTestando";  
      _isResponseFieldVisible = true; 
    });
  }

  
  void _sendResponse() {
    String response = _responseController.text;
    if (response.isNotEmpty) {
      
      print("Resposta enviada: $response");
      setState(() {
        message = "Resposta enviada"; 
        _responseController.clear();  
        _isResponseFieldVisible = false;  
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Push Notification Test"), 
      ),
      body: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [
            
            Text(
              message,
              textAlign: TextAlign.center, 
              style: const TextStyle(fontSize: 20), 
            ),
            const SizedBox(height: 20), 
            
            ElevatedButton(
              onPressed: _onButtonPressed, 
              child: const Text("Clique para Testar"), 
            ),
            const SizedBox(height: 20), 

            
            if (_isResponseFieldVisible)
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    
                    TextField(
                      controller: _responseController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Escreva sua resposta',
                      ),
                    ),
                    const SizedBox(height: 10),  
                    
                    ElevatedButton(
                      onPressed: _sendResponse,  
                      child: const Text('Enviar Resposta'),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
