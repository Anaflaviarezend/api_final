// import 'dart:convert';
// import 'package:http/http.dart' as http;

// class ModelPokemon {
//   List<Abilities> abilities;
//   int baseExperience;
//   List<Forms> forms;
//   List<GameIndices> gameIndices;
//   int height;
//   List<dynamic> heldItems;
//   int id;
//   bool isDefault;
//   String locationAreaEncounters;
//   List<Moves> moves;
//   String name;
//   int order;
//   List<dynamic> pastTypes;
//   Species species;
//   Sprites sprites;
//   List<Stats> stats;
//   List<Types> types;
//   int weight;

//   ModelPokemon({
//     this.abilities,
//     this.baseExperience,
//     this.forms,
//     this.gameIndices,
//     this.height,
//     this.heldItems,
//     this.id,
//     this.isDefault,
//     this.locationAreaEncounters,
//     this.moves,
//     this.name,
//     this.order,
//     this.pastTypes,
//     this.species,
//     this.sprites,
//     this.stats,
//     this.types,
//     this.weight,
//   });

//   ModelPokemon.fromJson(Map<String, dynamic> json) {
//     abilities = (json['abilities'] as List)
//         .map((dynamic e) => Abilities.fromJson(e as Map<String, dynamic>))
//         .toList();
//     baseExperience = json['base_experience'] as int;
//     forms = (json['forms'] as List)
//         .map((dynamic e) => Forms.fromJson(e as Map<String, dynamic>))
//         .toList();
//     gameIndices = (json['game_indices'] as List)
//         .map((dynamic e) => GameIndices.fromJson(e as Map<String, dynamic>))
//         .toList();
//     height = json['height'] as int;
//     heldItems = json['held_items'] as List;
//     id = json['id'] as int;
//     isDefault = json['is_default'] as bool;
//     locationAreaEncounters = json['location_area_encounters'] as String;
//     moves = (json['moves'] as List)
//         .map((dynamic e) => Moves.fromJson(e as Map<String, dynamic>))
//         .toList();
//     name = json['name'] as String;
//     order = json['order'] as int;
//     pastTypes = json['past_types'] as List;
//     species = (json['species'] as Map<String, dynamic>) != null
//          Species.fromJson(json['species'] as Map<String, dynamic>)
//         : null;
//     sprites = (json['sprites'] as Map<String, dynamic>) != null
//          Sprites.fromJson(json['sprites'] as Map<String, dynamic>)
//         : null;
//     stats = (json['stats'] as List)
//         .map((dynamic e) => Stats.fromJson(e as Map<String, dynamic>))
//         .toList();
//     types = (json['types'] as List)
//         .map((dynamic e) => Types.fromJson(e as Map<String, dynamic>))
//         .toList();
//     weight = json['weight'] as int;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['abilities'] = abilities.map((e) => e.toJson()).toList();
//     json['base_experience'] = baseExperience;
//     json['forms'] = forms.map((e) => e.toJson()).toList();
//     json['game_indices'] = gameIndices.map((e) => e.toJson()).toList();
//     json['height'] = height;
//     json['held_items'] = heldItems;
//     json['id'] = id;
//     json['is_default'] = isDefault;
//     json['location_area_encounters'] = locationAreaEncounters;
//     json['moves'] = moves.map((e) => e.toJson()).toList();
//     json['name'] = name;
//     json['order'] = order;
//     json['past_types'] = pastTypes;
//     json['species'] = species.toJson();
//     json['sprites'] = sprites.toJson();
//     json['stats'] = stats.map((e) => e.toJson()).toList();
//     json['types'] = types.map((e) => e.toJson()).toList();
//     json['weight'] = weight;
//     return json;
//   }

//   static Future<ModelPokemon> obterDados(String nome) async {
//     var url = Uri.parse('https://pokeapi.co/api/v2/pokemon/' + nome);
//     var resposta = await http.get(url);
//     var json = jsonDecode(resposta.body);
//     return ModelPokemon.fromJson(json);
//   }
// }

// class Abilities {
//   Ability ability;
//   bool isHidden;
//   int slot;

//   Abilities({
//     this.ability,
//     this.isHidden,
//     this.slot,
//   });

//   Abilities.fromJson(Map<String, dynamic> json) {
//     ability = (json['ability'] as Map<String, dynamic>) != null
//          Ability.fromJson(json['ability'] as Map<String, dynamic>)
//         : null;
//     isHidden = json['is_hidden'] as bool;
//     slot = json['slot'] as int;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['ability'] = ability.toJson();
//     json['is_hidden'] = isHidden;
//     json['slot'] = slot;
//     return json;
//   }
// }

// class Ability {
//   String name;
//   String url;

//   Ability({
//     this.name,
//     this.url,
//   });

//   Ability.fromJson(Map<String, dynamic> json) {
//     name = json['name'] as String;
//     url = json['url'] as String;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['name'] = name;
//     json['url'] = url;
//     return json;
//   }
// }

// class Forms {
//   String name;
//   String url;

//   Forms({
//     this.name,
//     this.url,
//   });

//   Forms.fromJson(Map<String, dynamic> json) {
//     name = json['name'] as String;
//     url = json['url'] as String;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['name'] = name;
//     json['url'] = url;
//     return json;
//   }
// }

// class GameIndices {
//   int gameIndex;
//   Version version;

//   GameIndices({
//     this.gameIndex,
//     this.version,
//   });

//   GameIndices.fromJson(Map<String, dynamic> json) {
//     gameIndex = json['game_index'] as int;
//     version = (json['version'] as Map<String, dynamic>) != null
//          Version.fromJson(json['version'] as Map<String, dynamic>)
//         : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['game_index'] = gameIndex;
//     json['version'] = version.toJson();
//     return json;
//   }
// }

// class Version {
//   String name;
//   String url;

//   Version({
//     this.name,
//     this.url,
//   });

//   Version.fromJson(Map<String, dynamic> json) {
//     name = json['name'] as String;
//     url = json['url'] as String;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['name'] = name;
//     json['url'] = url;
//     return json;
//   }
// }

// class Moves {
//   Move move;
//   List<VersionGroupDetails> versionGroupDetails;

//   Moves({
//     this.move,
//     this.versionGroupDetails,
//   });

//   Moves.fromJson(Map<String, dynamic> json) {
//     move = (json['move'] as Map<String, dynamic>) != null
//          Move.fromJson(json['move'] as Map<String, dynamic>)
//         : null;
//     versionGroupDetails = (json['version_group_details'] as List)
//         .map((dynamic e) =>
//             VersionGroupDetails.fromJson(e as Map<String, dynamic>))
//         .toList();
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['move'] = move.toJson();
//     json['version_group_details'] =
//         versionGroupDetails.map((e) => e.toJson()).toList();
//     return json;
//   }
// }

// class Move {
//   String name;
//   String url;

//   Move({
//     this.name,
//     this.url,
//   });

//   Move.fromJson(Map<String, dynamic> json) {
//     name = json['name'] as String;
//     url = json['url'] as String;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['name'] = name;
//     json['url'] = url;
//     return json;
//   }
// }

// class VersionGroupDetails {
//   int levelLearnedAt;
//   MoveLearnMethod moveLearnMethod;
//   VersionGroup versionGroup;

//   VersionGroupDetails({
//     this.levelLearnedAt,
//     this.moveLearnMethod,
//     this.versionGroup,
//   });

//   VersionGroupDetails.fromJson(Map<String, dynamic> json) {
//     levelLearnedAt = json['level_learned_at'] as int;
//     moveLearnMethod =
//         (json['move_learn_method'] as Map<String, dynamic>) != null
//              MoveLearnMethod.fromJson(
//                 json['move_learn_method'] as Map<String, dynamic>)
//             : null;
//     versionGroup = (json['version_group'] as Map<String, dynamic>) != null
//          VersionGroup.fromJson(json['version_group'] as Map<String, dynamic>)
//         : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['level_learned_at'] = levelLearnedAt;
//     json['move_learn_method'] = moveLearnMethod.toJson();
//     json['version_group'] = versionGroup.toJson();
//     return json;
//   }
// }

// class MoveLearnMethod {
//   String name;
//   String url;

//   MoveLearnMethod({
//     this.name,
//     this.url,
//   });

//   MoveLearnMethod.fromJson(Map<String, dynamic> json) {
//     name = json['name'] as String;
//     url = json['url'] as String;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['name'] = name;
//     json['url'] = url;
//     return json;
//   }
// }

// class VersionGroup {
//   String name;
//   String url;

//   VersionGroup({
//     this.name,
//     this.url,
//   });

//   VersionGroup.fromJson(Map<String, dynamic> json) {
//     name = json['name'] as String;
//     url = json['url'] as String;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['name'] = name;
//     json['url'] = url;
//     return json;
//   }
// }

// class Species {
//   String name;
//   String url;

//   Species({
//     this.name,
//     this.url,
//   });

//   Species.fromJson(Map<String, dynamic> json) {
//     name = json['name'] as String;
//     url = json['url'] as String;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['name'] = name;
//     json['url'] = url;
//     return json;
//   }
// }

// class Sprites {
//   String backDefault;
//   dynamic backFemale;
//   String backShiny;
//   dynamic backShinyFemale;
//   String frontDefault;
//   dynamic frontFemale;
//   String frontShiny;
//   dynamic frontShinyFemale;
//   Other other;
//   Versions versions;

//   Sprites({
//     this.backDefault,
//     this.backFemale,
//     this.backShiny,
//     this.backShinyFemale,
//     this.frontDefault,
//     this.frontFemale,
//     this.frontShiny,
//     this.frontShinyFemale,
//     this.other,
//     this.versions,
//   });

//   Sprites.fromJson(Map<String, dynamic> json) {
//     backDefault = json['back_default'] as String;
//     backFemale = json['back_female'];
//     backShiny = json['back_shiny'] as String;
//     backShinyFemale = json['back_shiny_female'];
//     frontDefault = json['front_default'] as String;
//     frontFemale = json['front_female'];
//     frontShiny = json['front_shiny'] as String;
//     frontShinyFemale = json['front_shiny_female'];
//     other = (json['other'] as Map<String, dynamic>) != null
//          Other.fromJson(json['other'] as Map<String, dynamic>)
//         : null;
//     versions = (json['versions'] as Map<String, dynamic>) != null
//          Versions.fromJson(json['versions'] as Map<String, dynamic>)
//         : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['back_default'] = backDefault;
//     json['back_female'] = backFemale;
//     json['back_shiny'] = backShiny;
//     json['back_shiny_female'] = backShinyFemale;
//     json['front_default'] = frontDefault;
//     json['front_female'] = frontFemale;
//     json['front_shiny'] = frontShiny;
//     json['front_shiny_female'] = frontShinyFemale;
//     json['other'] = other.toJson();
//     json['versions'] = versions.toJson();
//     return json;
//   }
// }

// class Other {
//   DreamWorld dreamWorld;
//   Home home;
//   Officialartwork officialartwork;

//   Other({
//     this.dreamWorld,
//     this.home,
//     this.officialartwork,
//   });

//   Other.fromJson(Map<String, dynamic> json) {
//     dreamWorld = (json['dream_world'] as Map<String, dynamic>) != null
//          DreamWorld.fromJson(json['dream_world'] as Map<String, dynamic>)
//         : null;
//     home = (json['home'] as Map<String, dynamic>) != null
//          Home.fromJson(json['home'] as Map<String, dynamic>)
//         : null;
//     officialartwork = (json['officialartwork'] as Map<String, dynamic>) != null
//          Officialartwork.fromJson(
//             json['officialartwork'] as Map<String, dynamic>)
//         : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['dream_world'] = dreamWorld.toJson();
//     json['home'] = home.toJson();
//     json['officialartwork'] = officialartwork.toJson();
//     return json;
//   }
// }

// class DreamWorld {
//   String frontDefault;
//   dynamic frontFemale;

//   DreamWorld({
//     this.frontDefault,
//     this.frontFemale,
//   });

//   DreamWorld.fromJson(Map<String, dynamic> json) {
//     frontDefault = json['front_default'] as String;
//     frontFemale = json['front_female'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['front_default'] = frontDefault;
//     json['front_female'] = frontFemale;
//     return json;
//   }
// }

// class Home {
//   String frontDefault;
//   dynamic frontFemale;
//   String frontShiny;
//   dynamic frontShinyFemale;

//   Home({
//     this.frontDefault,
//     this.frontFemale,
//     this.frontShiny,
//     this.frontShinyFemale,
//   });

//   Home.fromJson(Map<String, dynamic> json) {
//     frontDefault = json['front_default'] as String;
//     frontFemale = json['front_female'];
//     frontShiny = json['front_shiny'] as String;
//     frontShinyFemale = json['front_shiny_female'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['front_default'] = frontDefault;
//     json['front_female'] = frontFemale;
//     json['front_shiny'] = frontShiny;
//     json['front_shiny_female'] = frontShinyFemale;
//     return json;
//   }
// }

// class Officialartwork {
//   String frontDefault;

//   Officialartwork({
//     this.frontDefault,
//   });

//   Officialartwork.fromJson(Map<String, dynamic> json) {
//     frontDefault = json['front_default'] as String;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['front_default'] = frontDefault;
//     return json;
//   }
// }

// class Versions {
//   Generationi generationi;
//   Generationii generationii;
//   Generationiii generationiii;
//   Generationiv generationiv;
//   Generationv generationv;
//   Generationvi generationvi;
//   Generationvii generationvii;
//   Generationviii generationviii;

//   Versions({
//     this.generationi,
//     this.generationii,
//     this.generationiii,
//     this.generationiv,
//     this.generationv,
//     this.generationvi,
//     this.generationvii,
//     this.generationviii,
//   });

//   Versions.fromJson(Map<String, dynamic> json) {
//     generationi = (json['generationi'] as Map<String, dynamic>) != null
//          Generationi.fromJson(json['generationi'] as Map<String, dynamic>)
//         : null;
//     generationii = (json['generationii'] as Map<String, dynamic>) != null
//          Generationii.fromJson(json['generationii'] as Map<String, dynamic>)
//         : null;
//     generationiii = (json['generationiii'] as Map<String, dynamic>) != null
//          Generationiii.fromJson(json['generationiii'] as Map<String, dynamic>)
//         : null;
//     generationiv = (json['generationiv'] as Map<String, dynamic>) != null
//          Generationiv.fromJson(json['generationiv'] as Map<String, dynamic>)
//         : null;
//     generationv = (json['generationv'] as Map<String, dynamic>) != null
//          Generationv.fromJson(json['generationv'] as Map<String, dynamic>)
//         : null;
//     generationvi = (json['generationvi'] as Map<String, dynamic>) != null
//          Generationvi.fromJson(json['generationvi'] as Map<String, dynamic>)
//         : null;
//     generationvii = (json['generationvii'] as Map<String, dynamic>) != null
//          Generationvii.fromJson(json['generationvii'] as Map<String, dynamic>)
//         : null;
//     generationviii = (json['generationviii'] as Map<String, dynamic>) != null
//          Generationviii.fromJson(
//             json['generationviii'] as Map<String, dynamic>)
//         : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['generationi'] = generationi.toJson();
//     json['generationii'] = generationii.toJson();
//     json['generationiii'] = generationiii.toJson();
//     json['generationiv'] = generationiv.toJson();
//     json['generationv'] = generationv.toJson();
//     json['generationvi'] = generationvi.toJson();
//     json['generationvii'] = generationvii.toJson();
//     json['generationviii'] = generationviii.toJson();
//     return json;
//   }
// }

// class Generationi {
//   Redblue redblue;
//   Yellow yellow;

//   Generationi({
//     this.redblue,
//     this.yellow,
//   });

//   Generationi.fromJson(Map<String, dynamic> json) {
//     redblue = (json['redblue'] as Map<String, dynamic>) != null
//          Redblue.fromJson(json['redblue'] as Map<String, dynamic>)
//         : null;
//     yellow = (json['yellow'] as Map<String, dynamic>) != null
//          Yellow.fromJson(json['yellow'] as Map<String, dynamic>)
//         : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['redblue'] = redblue.toJson();
//     json['yellow'] = yellow.toJson();
//     return json;
//   }
// }

// class Redblue {
//   String backDefault;
//   String backGray;
//   String backTransparent;
//   String frontDefault;
//   String frontGray;
//   String frontTransparent;

//   Redblue({
//     this.backDefault,
//     this.backGray,
//     this.backTransparent,
//     this.frontDefault,
//     this.frontGray,
//     this.frontTransparent,
//   });

//   Redblue.fromJson(Map<String, dynamic> json) {
//     backDefault = json['back_default'] as String;
//     backGray = json['back_gray'] as String;
//     backTransparent = json['back_transparent'] as String;
//     frontDefault = json['front_default'] as String;
//     frontGray = json['front_gray'] as String;
//     frontTransparent = json['front_transparent'] as String;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['back_default'] = backDefault;
//     json['back_gray'] = backGray;
//     json['back_transparent'] = backTransparent;
//     json['front_default'] = frontDefault;
//     json['front_gray'] = frontGray;
//     json['front_transparent'] = frontTransparent;
//     return json;
//   }
// }

// class Yellow {
//   String backDefault;
//   String backGray;
//   String backTransparent;
//   String frontDefault;
//   String frontGray;
//   String frontTransparent;

//   Yellow({
//     this.backDefault,
//     this.backGray,
//     this.backTransparent,
//     this.frontDefault,
//     this.frontGray,
//     this.frontTransparent,
//   });

//   Yellow.fromJson(Map<String, dynamic> json) {
//     backDefault = json['back_default'] as String;
//     backGray = json['back_gray'] as String;
//     backTransparent = json['back_transparent'] as String;
//     frontDefault = json['front_default'] as String;
//     frontGray = json['front_gray'] as String;
//     frontTransparent = json['front_transparent'] as String;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['back_default'] = backDefault;
//     json['back_gray'] = backGray;
//     json['back_transparent'] = backTransparent;
//     json['front_default'] = frontDefault;
//     json['front_gray'] = frontGray;
//     json['front_transparent'] = frontTransparent;
//     return json;
//   }
// }

// class Generationii {
//   Crystal crystal;
//   Gold gold;
//   Silver silver;

//   Generationii({
//     this.crystal,
//     this.gold,
//     this.silver,
//   });

//   Generationii.fromJson(Map<String, dynamic> json) {
//     crystal = (json['crystal'] as Map<String, dynamic>) != null
//          Crystal.fromJson(json['crystal'] as Map<String, dynamic>)
//         : null;
//     gold = (json['gold'] as Map<String, dynamic>) != null
//          Gold.fromJson(json['gold'] as Map<String, dynamic>)
//         : null;
//     silver = (json['silver'] as Map<String, dynamic>) != null
//          Silver.fromJson(json['silver'] as Map<String, dynamic>)
//         : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['crystal'] = crystal.toJson();
//     json['gold'] = gold.toJson();
//     json['silver'] = silver.toJson();
//     return json;
//   }
// }

// class Crystal {
//   String backDefault;
//   String backShiny;
//   String backShinyTransparent;
//   String backTransparent;
//   String frontDefault;
//   String frontShiny;
//   String frontShinyTransparent;
//   String frontTransparent;

//   Crystal({
//     this.backDefault,
//     this.backShiny,
//     this.backShinyTransparent,
//     this.backTransparent,
//     this.frontDefault,
//     this.frontShiny,
//     this.frontShinyTransparent,
//     this.frontTransparent,
//   });

//   Crystal.fromJson(Map<String, dynamic> json) {
//     backDefault = json['back_default'] as String;
//     backShiny = json['back_shiny'] as String;
//     backShinyTransparent = json['back_shiny_transparent'] as String;
//     backTransparent = json['back_transparent'] as String;
//     frontDefault = json['front_default'] as String;
//     frontShiny = json['front_shiny'] as String;
//     frontShinyTransparent = json['front_shiny_transparent'] as String;
//     frontTransparent = json['front_transparent'] as String;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['back_default'] = backDefault;
//     json['back_shiny'] = backShiny;
//     json['back_shiny_transparent'] = backShinyTransparent;
//     json['back_transparent'] = backTransparent;
//     json['front_default'] = frontDefault;
//     json['front_shiny'] = frontShiny;
//     json['front_shiny_transparent'] = frontShinyTransparent;
//     json['front_transparent'] = frontTransparent;
//     return json;
//   }
// }

// class Gold {
//   String backDefault;
//   String backShiny;
//   String frontDefault;
//   String frontShiny;
//   String frontTransparent;

//   Gold({
//     this.backDefault,
//     this.backShiny,
//     this.frontDefault,
//     this.frontShiny,
//     this.frontTransparent,
//   });

//   Gold.fromJson(Map<String, dynamic> json) {
//     backDefault = json['back_default'] as String;
//     backShiny = json['back_shiny'] as String;
//     frontDefault = json['front_default'] as String;
//     frontShiny = json['front_shiny'] as String;
//     frontTransparent = json['front_transparent'] as String;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['back_default'] = backDefault;
//     json['back_shiny'] = backShiny;
//     json['front_default'] = frontDefault;
//     json['front_shiny'] = frontShiny;
//     json['front_transparent'] = frontTransparent;
//     return json;
//   }
// }

// class Silver {
//   String backDefault;
//   String backShiny;
//   String frontDefault;
//   String frontShiny;
//   String frontTransparent;

//   Silver({
//     this.backDefault,
//     this.backShiny,
//     this.frontDefault,
//     this.frontShiny,
//     this.frontTransparent,
//   });

//   Silver.fromJson(Map<String, dynamic> json) {
//     backDefault = json['back_default'] as String;
//     backShiny = json['back_shiny'] as String;
//     frontDefault = json['front_default'] as String;
//     frontShiny = json['front_shiny'] as String;
//     frontTransparent = json['front_transparent'] as String;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['back_default'] = backDefault;
//     json['back_shiny'] = backShiny;
//     json['front_default'] = frontDefault;
//     json['front_shiny'] = frontShiny;
//     json['front_transparent'] = frontTransparent;
//     return json;
//   }
// }

// class Generationiii {
//   Emerald emerald;
//   Fireredleafgreen fireredleafgreen;
//   Rubysapphire rubysapphire;

//   Generationiii({
//     this.emerald,
//     this.fireredleafgreen,
//     this.rubysapphire,
//   });

//   Generationiii.fromJson(Map<String, dynamic> json) {
//     emerald = (json['emerald'] as Map<String, dynamic>) != null
//          Emerald.fromJson(json['emerald'] as Map<String, dynamic>)
//         : null;
//     fireredleafgreen =
//         (json['fireredleafgreen'] as Map<String, dynamic>) != null
//              Fireredleafgreen.fromJson(
//                 json['fireredleafgreen'] as Map<String, dynamic>)
//             : null;
//     rubysapphire = (json['rubysapphire'] as Map<String, dynamic>) != null
//          Rubysapphire.fromJson(json['rubysapphire'] as Map<String, dynamic>)
//         : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['emerald'] = emerald.toJson();
//     json['fireredleafgreen'] = fireredleafgreen.toJson();
//     json['rubysapphire'] = rubysapphire.toJson();
//     return json;
//   }
// }

// class Emerald {
//   String frontDefault;
//   String frontShiny;

//   Emerald({
//     this.frontDefault,
//     this.frontShiny,
//   });

//   Emerald.fromJson(Map<String, dynamic> json) {
//     frontDefault = json['front_default'] as String;
//     frontShiny = json['front_shiny'] as String;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['front_default'] = frontDefault;
//     json['front_shiny'] = frontShiny;
//     return json;
//   }
// }

// class Fireredleafgreen {
//   String backDefault;
//   String backShiny;
//   String frontDefault;
//   String frontShiny;

//   Fireredleafgreen({
//     this.backDefault,
//     this.backShiny,
//     this.frontDefault,
//     this.frontShiny,
//   });

//   Fireredleafgreen.fromJson(Map<String, dynamic> json) {
//     backDefault = json['back_default'] as String;
//     backShiny = json['back_shiny'] as String;
//     frontDefault = json['front_default'] as String;
//     frontShiny = json['front_shiny'] as String;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['back_default'] = backDefault;
//     json['back_shiny'] = backShiny;
//     json['front_default'] = frontDefault;
//     json['front_shiny'] = frontShiny;
//     return json;
//   }
// }

// class Rubysapphire {
//   String backDefault;
//   String backShiny;
//   String frontDefault;
//   String frontShiny;

//   Rubysapphire({
//     this.backDefault,
//     this.backShiny,
//     this.frontDefault,
//     this.frontShiny,
//   });

//   Rubysapphire.fromJson(Map<String, dynamic> json) {
//     backDefault = json['back_default'] as String;
//     backShiny = json['back_shiny'] as String;
//     frontDefault = json['front_default'] as String;
//     frontShiny = json['front_shiny'] as String;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['back_default'] = backDefault;
//     json['back_shiny'] = backShiny;
//     json['front_default'] = frontDefault;
//     json['front_shiny'] = frontShiny;
//     return json;
//   }
// }

// class Generationiv {
//   Diamondpearl diamondpearl;
//   Heartgoldsoulsilver heartgoldsoulsilver;
//   Platinum platinum;

//   Generationiv({
//     this.diamondpearl,
//     this.heartgoldsoulsilver,
//     this.platinum,
//   });

//   Generationiv.fromJson(Map<String, dynamic> json) {
//     diamondpearl = (json['diamondpearl'] as Map<String, dynamic>) != null
//          Diamondpearl.fromJson(json['diamondpearl'] as Map<String, dynamic>)
//         : null;
//     heartgoldsoulsilver =
//         (json['heartgoldsoulsilver'] as Map<String, dynamic>) != null
//              Heartgoldsoulsilver.fromJson(
//                 json['heartgoldsoulsilver'] as Map<String, dynamic>)
//             : null;
//     platinum = (json['platinum'] as Map<String, dynamic>) != null
//          Platinum.fromJson(json['platinum'] as Map<String, dynamic>)
//         : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['diamondpearl'] = diamondpearl.toJson();
//     json['heartgoldsoulsilver'] = heartgoldsoulsilver.toJson();
//     json['platinum'] = platinum.toJson();
//     return json;
//   }
// }

// class Diamondpearl {
//   String backDefault;
//   dynamic backFemale;
//   String backShiny;
//   dynamic backShinyFemale;
//   String frontDefault;
//   dynamic frontFemale;
//   String frontShiny;
//   dynamic frontShinyFemale;

//   Diamondpearl({
//     this.backDefault,
//     this.backFemale,
//     this.backShiny,
//     this.backShinyFemale,
//     this.frontDefault,
//     this.frontFemale,
//     this.frontShiny,
//     this.frontShinyFemale,
//   });

//   Diamondpearl.fromJson(Map<String, dynamic> json) {
//     backDefault = json['back_default'] as String;
//     backFemale = json['back_female'];
//     backShiny = json['back_shiny'] as String;
//     backShinyFemale = json['back_shiny_female'];
//     frontDefault = json['front_default'] as String;
//     frontFemale = json['front_female'];
//     frontShiny = json['front_shiny'] as String;
//     frontShinyFemale = json['front_shiny_female'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['back_default'] = backDefault;
//     json['back_female'] = backFemale;
//     json['back_shiny'] = backShiny;
//     json['back_shiny_female'] = backShinyFemale;
//     json['front_default'] = frontDefault;
//     json['front_female'] = frontFemale;
//     json['front_shiny'] = frontShiny;
//     json['front_shiny_female'] = frontShinyFemale;
//     return json;
//   }
// }

// class Heartgoldsoulsilver {
//   String backDefault;
//   dynamic backFemale;
//   String backShiny;
//   dynamic backShinyFemale;
//   String frontDefault;
//   dynamic frontFemale;
//   String frontShiny;
//   dynamic frontShinyFemale;

//   Heartgoldsoulsilver({
//     this.backDefault,
//     this.backFemale,
//     this.backShiny,
//     this.backShinyFemale,
//     this.frontDefault,
//     this.frontFemale,
//     this.frontShiny,
//     this.frontShinyFemale,
//   });

//   Heartgoldsoulsilver.fromJson(Map<String, dynamic> json) {
//     backDefault = json['back_default'] as String;
//     backFemale = json['back_female'];
//     backShiny = json['back_shiny'] as String;
//     backShinyFemale = json['back_shiny_female'];
//     frontDefault = json['front_default'] as String;
//     frontFemale = json['front_female'];
//     frontShiny = json['front_shiny'] as String;
//     frontShinyFemale = json['front_shiny_female'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['back_default'] = backDefault;
//     json['back_female'] = backFemale;
//     json['back_shiny'] = backShiny;
//     json['back_shiny_female'] = backShinyFemale;
//     json['front_default'] = frontDefault;
//     json['front_female'] = frontFemale;
//     json['front_shiny'] = frontShiny;
//     json['front_shiny_female'] = frontShinyFemale;
//     return json;
//   }
// }

// class Platinum {
//   String backDefault;
//   dynamic backFemale;
//   String backShiny;
//   dynamic backShinyFemale;
//   String frontDefault;
//   dynamic frontFemale;
//   String frontShiny;
//   dynamic frontShinyFemale;

//   Platinum({
//     this.backDefault,
//     this.backFemale,
//     this.backShiny,
//     this.backShinyFemale,
//     this.frontDefault,
//     this.frontFemale,
//     this.frontShiny,
//     this.frontShinyFemale,
//   });

//   Platinum.fromJson(Map<String, dynamic> json) {
//     backDefault = json['back_default'] as String;
//     backFemale = json['back_female'];
//     backShiny = json['back_shiny'] as String;
//     backShinyFemale = json['back_shiny_female'];
//     frontDefault = json['front_default'] as String;
//     frontFemale = json['front_female'];
//     frontShiny = json['front_shiny'] as String;
//     frontShinyFemale = json['front_shiny_female'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['back_default'] = backDefault;
//     json['back_female'] = backFemale;
//     json['back_shiny'] = backShiny;
//     json['back_shiny_female'] = backShinyFemale;
//     json['front_default'] = frontDefault;
//     json['front_female'] = frontFemale;
//     json['front_shiny'] = frontShiny;
//     json['front_shiny_female'] = frontShinyFemale;
//     return json;
//   }
// }

// class Generationv {
//   Blackwhite blackwhite;

//   Generationv({
//     this.blackwhite,
//   });

//   Generationv.fromJson(Map<String, dynamic> json) {
//     blackwhite = (json['blackwhite'] as Map<String, dynamic>) != null
//          Blackwhite.fromJson(json['blackwhite'] as Map<String, dynamic>)
//         : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['blackwhite'] = blackwhite.toJson();
//     return json;
//   }
// }

// class Blackwhite {
//   Animated animated;
//   String backDefault;
//   dynamic backFemale;
//   String backShiny;
//   dynamic backShinyFemale;
//   String frontDefault;
//   dynamic frontFemale;
//   String frontShiny;
//   dynamic frontShinyFemale;

//   Blackwhite({
//     this.animated,
//     this.backDefault,
//     this.backFemale,
//     this.backShiny,
//     this.backShinyFemale,
//     this.frontDefault,
//     this.frontFemale,
//     this.frontShiny,
//     this.frontShinyFemale,
//   });

//   Blackwhite.fromJson(Map<String, dynamic> json) {
//     animated = (json['animated'] as Map<String, dynamic>) != null
//          Animated.fromJson(json['animated'] as Map<String, dynamic>)
//         : null;
//     backDefault = json['back_default'] as String;
//     backFemale = json['back_female'];
//     backShiny = json['back_shiny'] as String;
//     backShinyFemale = json['back_shiny_female'];
//     frontDefault = json['front_default'] as String;
//     frontFemale = json['front_female'];
//     frontShiny = json['front_shiny'] as String;
//     frontShinyFemale = json['front_shiny_female'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['animated'] = animated.toJson();
//     json['back_default'] = backDefault;
//     json['back_female'] = backFemale;
//     json['back_shiny'] = backShiny;
//     json['back_shiny_female'] = backShinyFemale;
//     json['front_default'] = frontDefault;
//     json['front_female'] = frontFemale;
//     json['front_shiny'] = frontShiny;
//     json['front_shiny_female'] = frontShinyFemale;
//     return json;
//   }
// }

// class Animated {
//   String backDefault;
//   dynamic backFemale;
//   String backShiny;
//   dynamic backShinyFemale;
//   String frontDefault;
//   dynamic frontFemale;
//   String frontShiny;
//   dynamic frontShinyFemale;

//   Animated({
//     this.backDefault,
//     this.backFemale,
//     this.backShiny,
//     this.backShinyFemale,
//     this.frontDefault,
//     this.frontFemale,
//     this.frontShiny,
//     this.frontShinyFemale,
//   });

//   Animated.fromJson(Map<String, dynamic> json) {
//     backDefault = json['back_default'] as String;
//     backFemale = json['back_female'];
//     backShiny = json['back_shiny'] as String;
//     backShinyFemale = json['back_shiny_female'];
//     frontDefault = json['front_default'] as String;
//     frontFemale = json['front_female'];
//     frontShiny = json['front_shiny'] as String;
//     frontShinyFemale = json['front_shiny_female'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['back_default'] = backDefault;
//     json['back_female'] = backFemale;
//     json['back_shiny'] = backShiny;
//     json['back_shiny_female'] = backShinyFemale;
//     json['front_default'] = frontDefault;
//     json['front_female'] = frontFemale;
//     json['front_shiny'] = frontShiny;
//     json['front_shiny_female'] = frontShinyFemale;
//     return json;
//   }
// }

// class Generationvi {
//   Omegarubyalphasapphire omegarubyalphasapphire;
//   Xy xy;

//   Generationvi({
//     this.omegarubyalphasapphire,
//     this.xy,
//   });

//   Generationvi.fromJson(Map<String, dynamic> json) {
//     omegarubyalphasapphire =
//         (json['omegarubyalphasapphire'] as Map<String, dynamic>) != null
//              Omegarubyalphasapphire.fromJson(
//                 json['omegarubyalphasapphire'] as Map<String, dynamic>)
//             : null;
//     xy = (json['xy'] as Map<String, dynamic>) != null
//          Xy.fromJson(json['xy'] as Map<String, dynamic>)
//         : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['omegarubyalphasapphire'] = omegarubyalphasapphire.toJson();
//     json['xy'] = xy.toJson();
//     return json;
//   }
// }

// class Omegarubyalphasapphire {
//   String frontDefault;
//   dynamic frontFemale;
//   String frontShiny;
//   dynamic frontShinyFemale;

//   Omegarubyalphasapphire({
//     this.frontDefault,
//     this.frontFemale,
//     this.frontShiny,
//     this.frontShinyFemale,
//   });

//   Omegarubyalphasapphire.fromJson(Map<String, dynamic> json) {
//     frontDefault = json['front_default'] as String;
//     frontFemale = json['front_female'];
//     frontShiny = json['front_shiny'] as String;
//     frontShinyFemale = json['front_shiny_female'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['front_default'] = frontDefault;
//     json['front_female'] = frontFemale;
//     json['front_shiny'] = frontShiny;
//     json['front_shiny_female'] = frontShinyFemale;
//     return json;
//   }
// }

// class Xy {
//   String frontDefault;
//   dynamic frontFemale;
//   String frontShiny;
//   dynamic frontShinyFemale;

//   Xy({
//     this.frontDefault,
//     this.frontFemale,
//     this.frontShiny,
//     this.frontShinyFemale,
//   });

//   Xy.fromJson(Map<String, dynamic> json) {
//     frontDefault = json['front_default'] as String;
//     frontFemale = json['front_female'];
//     frontShiny = json['front_shiny'] as String;
//     frontShinyFemale = json['front_shiny_female'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['front_default'] = frontDefault;
//     json['front_female'] = frontFemale;
//     json['front_shiny'] = frontShiny;
//     json['front_shiny_female'] = frontShinyFemale;
//     return json;
//   }
// }

// class Generationvii {
//   Icons icons;
//   Ultrasunultramoon ultrasunultramoon;

//   Generationvii({
//     this.icons,
//     this.ultrasunultramoon,
//   });

//   Generationvii.fromJson(Map<String, dynamic> json) {
//     icons = (json['icons'] as Map<String, dynamic>) != null
//          Icons.fromJson(json['icons'] as Map<String, dynamic>)
//         : null;
//     ultrasunultramoon =
//         (json['ultrasunultramoon'] as Map<String, dynamic>) != null
//              Ultrasunultramoon.fromJson(
//                 json['ultrasunultramoon'] as Map<String, dynamic>)
//             : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['icons'] = icons.toJson();
//     json['ultrasunultramoon'] = ultrasunultramoon.toJson();
//     return json;
//   }
// }

// class Icons {
//   String frontDefault;
//   dynamic frontFemale;

//   Icons({
//     this.frontDefault,
//     this.frontFemale,
//   });

//   Icons.fromJson(Map<String, dynamic> json) {
//     frontDefault = json['front_default'] as String;
//     frontFemale = json['front_female'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['front_default'] = frontDefault;
//     json['front_female'] = frontFemale;
//     return json;
//   }
// }

// class Ultrasunultramoon {
//   String frontDefault;
//   dynamic frontFemale;
//   String frontShiny;
//   dynamic frontShinyFemale;

//   Ultrasunultramoon({
//     this.frontDefault,
//     this.frontFemale,
//     this.frontShiny,
//     this.frontShinyFemale,
//   });

//   Ultrasunultramoon.fromJson(Map<String, dynamic> json) {
//     frontDefault = json['front_default'] as String;
//     frontFemale = json['front_female'];
//     frontShiny = json['front_shiny'] as String;
//     frontShinyFemale = json['front_shiny_female'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['front_default'] = frontDefault;
//     json['front_female'] = frontFemale;
//     json['front_shiny'] = frontShiny;
//     json['front_shiny_female'] = frontShinyFemale;
//     return json;
//   }
// }

// class Generationviii {
//   Icons icons;

//   Generationviii({
//     this.icons,
//   });

//   Generationviii.fromJson(Map<String, dynamic> json) {
//     icons = (json['icons'] as Map<String, dynamic>) != null
//          Icons.fromJson(json['icons'] as Map<String, dynamic>)
//         : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['icons'] = icons.toJson();
//     return json;
//   }
// }

// class Icons2 {
//   String frontDefault;
//   dynamic frontFemale;

//   Icons2({
//     this.frontDefault,
//     this.frontFemale,
//   });

//   Icons2.fromJson(Map<String, dynamic> json) {
//     frontDefault = json['front_default'] as String;
//     frontFemale = json['front_female'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['front_default'] = frontDefault;
//     json['front_female'] = frontFemale;
//     return json;
//   }
// }

// class Stats {
//   int baseStat;
//   int effort;
//   Stat stat;

//   Stats({
//     this.baseStat,
//     this.effort,
//     this.stat,
//   });

//   Stats.fromJson(Map<String, dynamic> json) {
//     baseStat = json['base_stat'] as int;
//     effort = json['effort'] as int;
//     stat = (json['stat'] as Map<String, dynamic>) != null
//          Stat.fromJson(json['stat'] as Map<String, dynamic>)
//         : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['base_stat'] = baseStat;
//     json['effort'] = effort;
//     json['stat'] = stat.toJson();
//     return json;
//   }
// }

// class Stat {
//   String name;
//   String url;

//   Stat({
//     this.name,
//     this.url,
//   });

//   Stat.fromJson(Map<String, dynamic> json) {
//     name = json['name'] as String;
//     url = json['url'] as String;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['name'] = name;
//     json['url'] = url;
//     return json;
//   }
// }

// class Types {
//   int slot;
//   Type type;

//   Types({
//     this.slot,
//     this.type,
//   });

//   Types.fromJson(Map<String, dynamic> json) {
//     slot = json['slot'] as int;
//     type = (json['type'] as Map<String, dynamic>) != null
//          Type.fromJson(json['type'] as Map<String, dynamic>)
//         : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['slot'] = slot;
//     json['type'] = type.toJson();
//     return json;
//   }
// }

// class Type {
//   String name;
//   String url;

//   Type({
//     this.name,
//     this.url,
//   });

//   Type.fromJson(Map<String, dynamic> json) {
//     name = json['name'] as String;
//     url = json['url'] as String;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['name'] = name;
//     json['url'] = url;
//     return json;
//   }
// }
