import 'package:social_media_app/socail_media_app/domain/entities/response_entity.dart';

abstract class AuthRepository {
  Future<ResponseEntity> register({
    required String username,
    required String email,
    required String password,
  });
}
