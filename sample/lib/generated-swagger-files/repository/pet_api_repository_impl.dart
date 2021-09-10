//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'pet_api_repository.dart';
import '../models.dart';
import '../apis.dart';
import '../result.dart';
import 'api_auth_repository.dart';
import 'package:dio/dio.dart';

class PetApiRepositoryImpl with PetApiRepository {
  final Dio dio;
  final String baseUrl;
  final ApiAuthRepository authRepository;

  PetApiRepositoryImpl({
    required this.dio,
    required this.baseUrl,
    required this.authRepository
  });

  @override
  Future addPet(
    Pet body,
  ) async {
    final petstoreAuth = await this.authRepository.petstoreAuth;

    return PetApi(this.dio, baseUrl: this.baseUrl)
      .addPet(
        petstoreAuth,
        body,  
      )
      .then((response) => Result.success(response))
      .catchError((error) => Result.failure(error));
  }

  @override
  Future deletePet(
    int petId,
    String? apiKey,
  ) async {
    final petstoreAuth = await this.authRepository.petstoreAuth;

    return PetApi(this.dio, baseUrl: this.baseUrl)
      .deletePet(
        petstoreAuth,
        petId,
        apiKey,  
      )
      .then((response) => Result.success(response))
      .catchError((error) => Result.failure(error));
  }

  @override
  Future<Result<List<Pet>>> findPetsByStatus(
    List<String> status,
  ) async {
    final petstoreAuth = await this.authRepository.petstoreAuth;

    return PetApi(this.dio, baseUrl: this.baseUrl)
      .findPetsByStatus(
        petstoreAuth,
        status,  
      )
      .then((response) => Result<List<Pet>>.success(response))
      .catchError((error) => Result<List<Pet>>.failure(error));
  }

  @override
  Future<Result<List<Pet>>> findPetsByTags(
    List<String> tags,
  ) async {
    final petstoreAuth = await this.authRepository.petstoreAuth;

    return PetApi(this.dio, baseUrl: this.baseUrl)
      .findPetsByTags(
        petstoreAuth,
        tags,  
      )
      .then((response) => Result<List<Pet>>.success(response))
      .catchError((error) => Result<List<Pet>>.failure(error));
  }

  @override
  Future<Result<Pet>> getPetById(
    int petId,
  ) async {
    final apiKey = await this.authRepository.apiKey;

    return PetApi(this.dio, baseUrl: this.baseUrl)
      .getPetById(
        apiKey,
        petId,  
      )
      .then((response) => Result<Pet>.success(response))
      .catchError((error) => Result<Pet>.failure(error));
  }

  @override
  Future updatePet(
    Pet body,
  ) async {
    final petstoreAuth = await this.authRepository.petstoreAuth;

    return PetApi(this.dio, baseUrl: this.baseUrl)
      .updatePet(
        petstoreAuth,
        body,  
      )
      .then((response) => Result.success(response))
      .catchError((error) => Result.failure(error));
  }

  @override
  Future updatePetWithForm(
    int petId,
  ) async {
    final petstoreAuth = await this.authRepository.petstoreAuth;

    return PetApi(this.dio, baseUrl: this.baseUrl)
      .updatePetWithForm(
        petstoreAuth,
        petId,  
      )
      .then((response) => Result.success(response))
      .catchError((error) => Result.failure(error));
  }

  @override
  Future<Result<ApiResponse>> uploadFile(
    int petId,
  ) async {
    final petstoreAuth = await this.authRepository.petstoreAuth;

    return PetApi(this.dio, baseUrl: this.baseUrl)
      .uploadFile(
        petstoreAuth,
        petId,  
      )
      .then((response) => Result<ApiResponse>.success(response))
      .catchError((error) => Result<ApiResponse>.failure(error));
  }

}
