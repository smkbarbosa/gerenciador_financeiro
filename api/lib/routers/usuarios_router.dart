import 'package:api/api.dart';
import 'package:api/controllers/login/login_controller.dart';

class UsuariosRouter {
  
  static void configurar(Router router, ManagedContext context) {
    router
    .route('/login')
    .link(() => LoginController(context));
  }
}