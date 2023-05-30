import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import '../response/drink_response.dart';
part 'rest_api.g.dart';

@RestApi(baseUrl: "https://www.thecocktaildb.com/api/json/v1/1/")
abstract class ApiClient{
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;
  @GET("search.php")
  Future<DrinkResponse> searchDrinks(@Query("s") String searchKeyword);



}