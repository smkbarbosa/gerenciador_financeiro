import 'package:api/api.dart';

class LoginRequest extends Serializable {

  String login;
  String senha;

  @override
  Map<String, dynamic> asMap() {
    return {
      'login': login,
      'senha': senha
    };
  }

  @override
  void readFromMap(Map<String, dynamic > object) {
    login = object['login'] as String;
    senha = object['senha'] as String;
  }

  // validar se os login e senha estão corretos
  Map<String, String> validate() {
    final Map<String, String> validateResult = {};
      
    if(login == null || login.isEmpty) {
      validateResult ['login'] = 'Login Obrigatório';
    }

    if(senha == null || senha.isEmpty) {
      validateResult ['senha'] = 'Senha Obrigatória';
    }

    return validateResult;

  }

}