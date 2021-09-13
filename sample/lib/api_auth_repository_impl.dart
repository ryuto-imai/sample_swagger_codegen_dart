import 'generated-swagger-files/repositories.dart';

class ApiAuthRepositoryImpl with ApiAuthRepository {
  Future<String?> apiKey = Future<String?>.value("special-key");
  late Future<String?> petstoreAuth = Future<String?>.value("");
}
