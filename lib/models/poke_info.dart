import 'package:json_annotation/json_annotation.dart'; 
  
part 'poke_info.g.dart';


@JsonSerializable()
  class PokeInfo extends Object {

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'order')
  int order;

  @JsonKey(name: 'past_types')
  List<dynamic> pastTypes;

  @JsonKey(name: 'species')
  Species species;

  @JsonKey(name: 'height')
  int height;

  @JsonKey(name: 'weight')
  int weight;

  @JsonKey(name: 'held_items')
  List<dynamic> heldItems;

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'location_area_encounters')
  String locationAreaEncounters;

  @JsonKey(name: 'sprites')
  Sprites sprites;

  @JsonKey(name: 'abilities')
  List<Abilities> abilities;

  @JsonKey(name: 'moves')
  List<Moves> moves;

  @JsonKey(name: 'stats')
  List<Stats> stats;

  @JsonKey(name: 'types')
  List<Types> types;

  PokeInfo(this.name,this.order,this.pastTypes,this.species,this.height,this.weight,this.heldItems,this.id,this.locationAreaEncounters,this.sprites,this.abilities,this.moves,this.stats,this.types,);

  factory PokeInfo.fromJson(Map<String, dynamic> srcJson) => _$PokeInfoFromJson(srcJson);

  Map<String, dynamic> toJson() => _$PokeInfoToJson(this);

}

  
@JsonSerializable()
  class Species extends Object {

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'url')
  String url;

  Species(this.name,this.url,);

  factory Species.fromJson(Map<String, dynamic> srcJson) => _$SpeciesFromJson(srcJson);

  Map<String, dynamic> toJson() => _$SpeciesToJson(this);

}

  
@JsonSerializable()
  class Sprites extends Object {

  @JsonKey(name: 'front_shiny')
  String frontShiny;

  Sprites(this.frontShiny,);

  factory Sprites.fromJson(Map<String, dynamic> srcJson) => _$SpritesFromJson(srcJson);

  Map<String, dynamic> toJson() => _$SpritesToJson(this);

}

  
@JsonSerializable()
  class Abilities extends Object {

  @JsonKey(name: 'ability')
  Ability ability;

  Abilities(this.ability,);

  factory Abilities.fromJson(Map<String, dynamic> srcJson) => _$AbilitiesFromJson(srcJson);

  Map<String, dynamic> toJson() => _$AbilitiesToJson(this);

}

  
@JsonSerializable()
  class Ability extends Object {

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'url')
  String url;

  Ability(this.name,this.url,);

  factory Ability.fromJson(Map<String, dynamic> srcJson) => _$AbilityFromJson(srcJson);

  Map<String, dynamic> toJson() => _$AbilityToJson(this);

}

  
@JsonSerializable()
  class Moves extends Object {

  @JsonKey(name: 'move')
  Move move;

  Moves(this.move,);

  factory Moves.fromJson(Map<String, dynamic> srcJson) => _$MovesFromJson(srcJson);

  Map<String, dynamic> toJson() => _$MovesToJson(this);

}

  
@JsonSerializable()
  class Move extends Object {

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'url')
  String url;

  Move(this.name,this.url,);

  factory Move.fromJson(Map<String, dynamic> srcJson) => _$MoveFromJson(srcJson);

  Map<String, dynamic> toJson() => _$MoveToJson(this);

}

  
@JsonSerializable()
  class Stats extends Object {

  @JsonKey(name: 'base_stat')
  int baseStat;

  @JsonKey(name: 'stat')
  Stat stat;

  Stats(this.baseStat,this.stat,);

  factory Stats.fromJson(Map<String, dynamic> srcJson) => _$StatsFromJson(srcJson);

  Map<String, dynamic> toJson() => _$StatsToJson(this);

}

  
@JsonSerializable()
  class Stat extends Object {

  @JsonKey(name: 'name')
  String name;

  Stat(this.name,);

  factory Stat.fromJson(Map<String, dynamic> srcJson) => _$StatFromJson(srcJson);

  Map<String, dynamic> toJson() => _$StatToJson(this);

}

  
@JsonSerializable()
  class Types extends Object {

  @JsonKey(name: 'type')
  Type type;

  Types(this.type,);

  factory Types.fromJson(Map<String, dynamic> srcJson) => _$TypesFromJson(srcJson);

  Map<String, dynamic> toJson() => _$TypesToJson(this);

}

  
@JsonSerializable()
  class Type extends Object {

  @JsonKey(name: 'name')
  String name;

  Type(this.name,);

  factory Type.fromJson(Map<String, dynamic> srcJson) => _$TypeFromJson(srcJson);

  Map<String, dynamic> toJson() => _$TypeToJson(this);

}

  
