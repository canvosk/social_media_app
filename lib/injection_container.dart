import 'package:get_it/get_it.dart';
import 'package:social_media_app/socail_media_app/data/data_sources/remote/auth_service.dart';
import 'package:social_media_app/socail_media_app/data/repository/auth_repository_imp.dart';
import 'package:social_media_app/socail_media_app/domain/repository/auth_repository.dart';
import 'package:social_media_app/socail_media_app/domain/usecases/auth_usecase.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  //Services
  sl.registerSingleton<AuthServices>(AuthServices());

  //Repositories
  sl.registerSingleton<AuthRepository>(AuthRepositoryImp(sl()));

  //UseCases
  sl.registerSingleton<AuthUseCase>(AuthUseCase(sl()));

  //Blocs
}
