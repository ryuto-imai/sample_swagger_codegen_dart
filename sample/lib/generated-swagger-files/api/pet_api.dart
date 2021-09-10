//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' hide Headers;
import '../models.dart';

part 'pet_api.g.dart';

@RestApi(baseUrl: 'this url will be ignored if baseUrl is passed')
abstract class PetApi {
  factory PetApi(Dio dio, {String baseUrl}) = _PetApi;

  /// Add a new pet to the store
  ///
  /// 
  @POST('/pet')
  @Headers(<String, dynamic>{'Content-Type': 'application/json'})
  Future addPet(
    @Body() Pet body,
  );
  /// Deletes a pet
  ///
  /// 
  @DELETE('/pet/{petId}'.replaceAll('{' r'petId' '}', petId.toString()))
  @Headers(<String, dynamic>{'Content-Type': 'application/json'})
  Future deletePet(
    @Path() int petId,
    @Header('api_key') String? apiKey,
  );
  /// Finds Pets by status
  ///
  /// Multiple status values can be provided with comma separated strings
  @GET('/pet/findByStatus')
  @Headers(<String, dynamic>{'Content-Type': 'application/json'})
  Future<List<Pet>> findPetsByStatus(
    @Query('status') List<String> status,
  );
  /// Finds Pets by tags
  ///
  /// Muliple tags can be provided with comma separated strings. Use         tag1, tag2, tag3 for testing.
  @GET('/pet/findByTags')
  @Headers(<String, dynamic>{'Content-Type': 'application/json'})
  Future<List<Pet>> findPetsByTags(
    @Query('tags') List<String> tags,
  );
  /// Find pet by ID
  ///
  /// Returns a single pet
  @GET('/pet/{petId}'.replaceAll('{' r'petId' '}', petId.toString()))
  @Headers(<String, dynamic>{'Content-Type': 'application/json'})
  Future<Pet> getPetById(
    @Header('api_key') String? apiKey,
    @Path() int petId,
  );
  /// Update an existing pet
  ///
  /// 
  @PUT('/pet')
  @Headers(<String, dynamic>{'Content-Type': 'application/json'})
  Future updatePet(
    @Body() Pet body,
  );
  /// Updates a pet in the store with form data
  ///
  /// 
  @POST('/pet/{petId}'.replaceAll('{' r'petId' '}', petId.toString()))
  @Headers(<String, dynamic>{'Content-Type': 'application/json'})
  Future updatePetWithForm(
    @Path() int petId,
  );
  /// uploads an image
  ///
  /// 
  @POST('/pet/{petId}/uploadImage'.replaceAll('{' r'petId' '}', petId.toString()))
  @Headers(<String, dynamic>{'Content-Type': 'application/json'})
  Future<ApiResponse> uploadFile(
    @Path() int petId,
  );
}

