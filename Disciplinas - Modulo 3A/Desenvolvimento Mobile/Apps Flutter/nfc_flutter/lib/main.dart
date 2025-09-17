/*
1. Adicionar a Dependência nfc_manager: ^3.0.0 ao pubspec.yaml

2. Adicionar Permições ao main/AndroidManifest.xml
  <uses-permission android:name="android.permission.NFC" />
  <uses-feature android:name="android.hardware.nfc" android:required="true" />

3.	Criar o arquivo android/app/src/main/res/xml/nfc_tech_filter.xml
  Este arquivo define os tipos de tags NFC que seu aplicativo pode ler.
    <resources xmlns:xliff="urn:oasis:names:tc:xliff:document:1.2">
      <tech-list>
          <tech>android.nfc.tech.NfcA</tech>
          <tech>android.nfc.tech.NfcB</tech>
          <tech>android.nfc.tech.NfcF</tech>
          <tech>android.nfc.tech.NfcV</tech>
          <tech>android.nfc.tech.Ndef</tech>
          <tech>android.nfc.tech.NdefFormatable</tech>
          <tech>android.nfc.tech.MifareClassic</tech>
          <tech>android.nfc.tech.MifareUltralight</tech>
      </tech-list>
    </resources>

4. Adicionar o import 'package:nfc_manager/nfc_manager.dart';
  E o import 'package:flutter/foundation.dart';
*/

import 'package:flutter/material.dart';
import 'package:nfc_manager/nfc_manager.dart';
import 'package:nfc_manager/platform_tags.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.lightBlue[50],
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.blueAccent,
          ),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blueAccent,
        ),
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
  String _message = 'Pronto para gravar em Tag NFC';

  Future<void> _writeNfcTag() async {
    setState(() => _message = 'Aproxime a tag NFC...');

    NfcManager.instance.startSession(
      pollingOptions: {NfcPollingOption.iso14443}, // obrigatório na v4
      onDiscovered: (NfcTag tag) async {
        final ndef = Ndef.from(tag);

        if (ndef == null) {
          setState(() => _message = 'Tag não é compatível com NDEF');
          NfcManager.instance.stopSession();
          return;
        }

        final message = NdefMessage([
          NdefRecord.createText('Olá, NFC!'),
        ]);

        try {
          await ndef.write(message);
          setState(() => _message = 'Mensagem gravada com sucesso!');
        } catch (e) {
          setState(() => _message = 'Falha na escrita: $e');
        }

        NfcManager.instance.stopSession();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Escrita em Tags NFC')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _message,
              style: const TextStyle(fontSize: 18, color: Colors.blueAccent),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _writeNfcTag,
              child: const Text('Escrever em Tag NFC'),
            ),
          ],
        ),
      ),
    );
  }
}
