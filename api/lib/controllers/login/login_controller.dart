import 'package:api/api.dart';
import 'package:api/controllers/login/dto/login_request.dart';
import 'package:api/services/usuario_service.dart';

class LoginController extends ResourceController {
  // No dart, ele pede que o construtor seja colocado antes do atributo da classe
  LoginController(this.context) : usuarioService = UsuarioService(context);

  // imutável
  final ManagedContext context;
  final UsuarioService usuarioService;

  @Operation.post()
  Future<Response> login(@Bind.body() LoginRequest request) async {
    final token = await usuarioService.login(request);
    return Response.ok({'autenticado': token != null, 'token': token});
  }
  
}