// 1º adicionar a dependência [integration_test: sdk: flutter] ao dev_dependencies no pubspect.yaml
// 2º fazer o package:flutter_driver/driver_extension.dart
// Execute no terminal, para rodar o teste: flutter drive --target= <Caminho do arquivo>
//         flutter drive --target=test_driver/teste_integrado_test.dart

//Obs: 
//  ° Um arquivo de test precisa terminar com: _test.dart
//  ° O flutter drive irá procurar pelos arquivos dentro da pasta test_driver

//NÃO ESTÁ FUNCIONANDO!!!

import 'package:flutter_driver/driver_extension.dart';
import 'package:test_integrado/main.dart' as app;

void main() {
    //habilita a extensão para o flutter driver
  enableFlutterDriverExtension();

  //chama a função main() do aplicativo
  app.main();
}

