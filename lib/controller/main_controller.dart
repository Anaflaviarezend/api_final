import 'dart:developer';

import 'package:api_final/main.dart';
import 'package:flutter/material.dart';
import 'package:pokeapi_dart/pokeapi_dart.dart';

class PokemonController {
  String pokemon;
  String nomepokemon;
  var campoEntrada = TextEditingController();
  String linkimagem =
      "https://raw.githubusercontent.com/PokeAPI/media/master/logo/pokeapi_256.png";

  String tituloAlert;
  String msgAlert;

  final api = PokeApi();

  Future<void> consultapokemon() async {
    try {
      if (campoEntrada.text.length == 0) {
        tituloAlert = "ERRO!!";
        msgAlert = "Verifique o Pokemon Informando";
        linkimagem =
            "https://raw.githubusercontent.com/PokeAPI/media/master/logo/pokeapi_256.png";
      } else {
        nomepokemon = campoEntrada.text;
        final pokemon1 = await api.pokemon.get(name: nomepokemon);

        tituloAlert = pokemon1.name.toUpperCase();

        // msgAlert ="ID: ${pokemon1.id}\n Habilidade Principal: ${pokemon1.abilities[0].ability.name}\n Tipo: ${pokemon1.types[0].type.name}\n Movimentos: ${pokemon1.moves[0].move.name}";
        msgAlert = "ID: ${pokemon1.id}\nHabilidades: ";
        for (var item in pokemon1.abilities) {
          msgAlert += item.ability.name + ",";
        }
        msgAlert +=
            "\nTipos: ${pokemon1.types[0].type.name}\nMovimentos: ${pokemon1.moves[0].move.name} ";
        //log(msgAlert);
        linkimagem = pokemon1.sprites.other.officialArtwork.frontDefault;
      }
    } catch (e) {
      tituloAlert = "ERRO!!";
      msgAlert = "Pokemon Não Encontrado";
      linkimagem =
          "https://raw.githubusercontent.com/PokeAPI/media/master/logo/pokeapi_256.png";
    }
  }
}
