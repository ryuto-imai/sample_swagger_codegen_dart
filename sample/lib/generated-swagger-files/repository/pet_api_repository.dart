//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import '../models.dart';
import '../apis.dart';
import '../result.dart';
import 'api_auth_repository.dart';
import 'package:dio/dio.dart';

abstract class PetApiRepository {
  late Dio dio;
  late String baseUrl;
  late ApiAuthRepository authRepository;

  Future addPet(
    Pet body,
  );

  Future deletePet(
    int petId,
    String? apiKey,
  );

  Future<Result<List<Pet>>> findPetsByStatus(
    List<String> status,
  );

  Future<Result<List<Pet>>> findPetsByTags(
    List<String> tags,
  );

  Future<Result<Pet>> getPetById(
    int petId,
  );

  Future updatePet(
    Pet body,
  );

  Future updatePetWithForm(
    int petId,
  );

  Future<Result<ApiResponse>> uploadFile(
    int petId,
  );

}
