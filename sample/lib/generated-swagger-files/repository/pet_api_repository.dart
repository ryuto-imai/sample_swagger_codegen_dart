//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of '../repositories.dart';

abstract class PetApiRepository {
  late Dio dio;
  late String baseUrl;
  late ApiAuthRepository authRepository;

  Future<Result<void>> addPet(
    Pet body,
  );

  Future<Result<void>> deletePet(
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

  Future<Result<void>> updatePet(
    Pet body,
  );

  Future<Result<void>> updatePetWithForm(
    int petId,
  );

  Future<Result<ApiResponse>> uploadFile(
    int petId,
  );

}
