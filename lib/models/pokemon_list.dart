import 'package:json_annotation/json_annotation.dart'; 
  
part 'pokemon_list.g.dart';


@JsonSerializable()
  class PokemonList extends Object {

  @JsonKey(name: 'count')
  int count;

  @JsonKey(name: 'next')
  String next;

  @JsonKey(name: 'results')
  List<Results> results;

  PokemonList(this.count,this.next,this.results,);

  factory PokemonList.fromJson(Map<String, dynamic> srcJson) => _$PokemonListFromJson(srcJson);

  Map<String, dynamic> toJson() => _$PokemonListToJson(this);

}

  
@JsonSerializable()
  class Results extends Object {

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'url')
  String url;

  Results(this.name,this.url,);

  factory Results.fromJson(Map<String, dynamic> srcJson) => _$ResultsFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ResultsToJson(this);

}

  
