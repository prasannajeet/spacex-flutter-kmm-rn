import 'spacex_api_client.dart';

abstract class IUseCase<T> {
  final IRepository remoteService;
  IUseCase(this.remoteService);
  Future<T> call();
}
