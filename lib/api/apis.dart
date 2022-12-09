import 'package:http/http.dart';

class HttpInstance {

 String baseUrlString = 'pokeapi.co';

  static HttpInstance? httpInstance;
  static Future<HttpInstance> sharedInstance() async {
    if (httpInstance == null) {
      httpInstance = HttpInstance();
    }
    return httpInstance!;
  }

  Future getAllPokemon(int limit, int offset) {
    return get(
        Uri.https(baseUrlString, 'api/v2/pokemon', { 'limit': limit, 'offset': offset }.map((key, value) => MapEntry(key, value.toString()))));
  }
 Future getSelectedPokemon(int id) {
    return get(
        Uri.https(baseUrlString, 'api/v2/pokemon/$id'));
  }
  Future getSelectedPokemonByURL(String url) {
    return get(Uri.parse(url));
  }
  
}
