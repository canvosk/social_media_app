import 'package:social_media_app/socail_media_app/data/data_sources/remote/auth_service.dart';
import 'package:social_media_app/socail_media_app/domain/entities/response_entity.dart';
import 'package:social_media_app/socail_media_app/domain/repository/auth_repository.dart';

class AuthRepositoryImp implements AuthRepository {
  final AuthServices _authServices;

  const AuthRepositoryImp(this._authServices);

  @override
  Future<ResponseEntity> register(
      {required String username,
      required String email,
      required String password}) async {
    return await _authServices.register(
      username: username,
      email: email,
      password: password,
    );
  }
}
