import 'package:http/http.dart';

class HttpInstance {

 String baseUrlString = 'https://pokeapi.co/api/v2';

  static HttpInstance? httpInstance;
  static Future<HttpInstance> sharedInstance() async {
    if (httpInstance == null) {
      httpInstance = HttpInstance();
    }
    return httpInstance!;
  }

  Future getAllPokemon(int limit, int offset) {
    return get(
        Uri.https(baseUrlString, 'pokemon', { 'limit': limit, 'offset': offset }));
  }
 Future getSelectedPokemon(int id) {
    return get(
        Uri.https(baseUrlString, 'pokemon/$id'));
  }
  
}
