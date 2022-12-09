import 'dart:convert';

import 'package:pokedex/models/poke_info.dart';
import 'package:pokedex/models/pokemon_list.dart';

import 'apis.dart';

class PokeApiRepository {
  Future<PokeInfo> fetchSelectedPokemon(int id) async {
    final httpInstance = await HttpInstance.sharedInstance();
    final res = await httpInstance.getSelectedPokemon(id);
    if (res.statusCode == 200) {
      final realJson = json.decode(res.body);
      return PokeInfo.fromJson(realJson);
    }
    throw Exception('error');
  }

  Future<PokeInfo> fetchSelectedPokemonByURL(String url) async {
    final httpInstance = await HttpInstance.sharedInstance();
    final res = await httpInstance.getSelectedPokemonByURL(url);
    if (res.statusCode == 200) {
      final realJson = json.decode(res.body);
      return PokeInfo.fromJson(realJson);
    }
    throw Exception(res.statusCode);
  }

  Future<PokemonList> fetchAllPokemon(int offset) async {
    final httpInstance = await HttpInstance.sharedInstance();
    final res = await httpInstance.getAllPokemon(20, offset);
    if (res.statusCode == 200) {
      final realJson = json.decode(res.body);
      return PokemonList.fromJson(realJson);
    }
    throw Exception('error');
  }
}
