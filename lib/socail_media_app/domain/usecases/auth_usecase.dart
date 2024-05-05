import 'package:social_media_app/socail_media_app/domain/entities/response_entity.dart';
import 'package:social_media_app/socail_media_app/domain/repository/auth_repository.dart';

class AuthUseCase {
  final AuthRepository _authRepository;

  const AuthUseCase(this._authRepository);

  Future<ResponseEntity> register({
    required String username,
    required String email,
    required String password,
  }) async {
    return await _authRepository.register(
      username: username,
      email: email,
      password: password,
    );
  }
}
