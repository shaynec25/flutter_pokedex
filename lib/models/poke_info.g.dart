// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poke_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokeInfo _$PokeInfoFromJson(Map<String, dynamic> json) {
  return PokeInfo(
    json['name'] as String,
    json['order'] as int,
    json['past_types'] as List<dynamic>,
    Species.fromJson(json['species'] as Map<String, dynamic>),
    json['height'] as int,
    json['weight'] as int,
    json['held_items'] as List<dynamic>,
    json['id'] as int,
    json['location_area_encounters'] as String,
    Sprites.fromJson(json['sprites'] as Map<String, dynamic>),
    (json['abilities'] as List<dynamic>)
        .map((e) => Abilities.fromJson(e as Map<String, dynamic>))
        .toList(),
    (json['moves'] as List<dynamic>)
        .map((e) => Moves.fromJson(e as Map<String, dynamic>))
        .toList(),
    (json['stats'] as List<dynamic>)
        .map((e) => Stats.fromJson(e as Map<String, dynamic>))
        .toList(),
    (json['types'] as List<dynamic>)
        .map((e) => Types.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$PokeInfoToJson(PokeInfo instance) => <String, dynamic>{
      'name': instance.name,
      'order': instance.order,
      'past_types': instance.pastTypes,
      'species': instance.species,
      'height': instance.height,
      'weight': instance.weight,
      'held_items': instance.heldItems,
      'id': instance.id,
      'location_area_encounters': instance.locationAreaEncounters,
      'sprites': instance.sprites,
      'abilities': instance.abilities,
      'moves': instance.moves,
      'stats': instance.stats,
      'types': instance.types,
    };

Species _$SpeciesFromJson(Map<String, dynamic> json) {
  return Species(
    json['name'] as String,
    json['url'] as String,
  );
}

Map<String, dynamic> _$SpeciesToJson(Species instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

Sprites _$SpritesFromJson(Map<String, dynamic> json) {
  return Sprites(
    json['front_shiny'] as String,
  );
}

Map<String, dynamic> _$SpritesToJson(Sprites instance) => <String, dynamic>{
      'front_shiny': instance.frontShiny,
    };

Abilities _$AbilitiesFromJson(Map<String, dynamic> json) {
  return Abilities(
    Ability.fromJson(json['ability'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AbilitiesToJson(Abilities instance) => <String, dynamic>{
      'ability': instance.ability,
    };

Ability _$AbilityFromJson(Map<String, dynamic> json) {
  return Ability(
    json['name'] as String,
    json['url'] as String,
  );
}

Map<String, dynamic> _$AbilityToJson(Ability instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

Moves _$MovesFromJson(Map<String, dynamic> json) {
  return Moves(
    Move.fromJson(json['move'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MovesToJson(Moves instance) => <String, dynamic>{
      'move': instance.move,
    };

Move _$MoveFromJson(Map<String, dynamic> json) {
  return Move(
    json['name'] as String,
    json['url'] as String,
  );
}

Map<String, dynamic> _$MoveToJson(Move instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

Stats _$StatsFromJson(Map<String, dynamic> json) {
  return Stats(
    json['base_stat'] as int,
    Stat.fromJson(json['stat'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$StatsToJson(Stats instance) => <String, dynamic>{
      'base_stat': instance.baseStat,
      'stat': instance.stat,
    };

Stat _$StatFromJson(Map<String, dynamic> json) {
  return Stat(
    json['name'] as String,
  );
}

Map<String, dynamic> _$StatToJson(Stat instance) => <String, dynamic>{
      'name': instance.name,
    };

Types _$TypesFromJson(Map<String, dynamic> json) {
  return Types(
    Type.fromJson(json['type'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TypesToJson(Types instance) => <String, dynamic>{
      'type': instance.type,
    };

Type _$TypeFromJson(Map<String, dynamic> json) {
  return Type(
    json['name'] as String,
  );
}

Map<String, dynamic> _$TypeToJson(Type instance) => <String, dynamic>{
      'name': instance.name,
    };
