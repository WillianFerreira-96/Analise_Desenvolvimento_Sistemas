// 1º adicionar a dependência [integration_test: sdk: flutter] ao dev_dependencies no pubspect.yaml
// 2º fazer o package:flutter_test/flutter_test.dart
// Execute no terminal, para rodar o teste: flutter test

import 'package:flutter_test/flutter_test.dart';

void main() {
  test('test Sinmples', (){
    var result = 2 + 3; 
    expect(result, 5 /* "5" é o resultado esperado pelo teste */);
  });
}
