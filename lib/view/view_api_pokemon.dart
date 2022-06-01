import 'package:api_final/controller/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Api_Pokemon extends StatefulWidget {
  const Api_Pokemon({Key key}) : super(key: key);

  @override
  _Api_PokemonState createState() => _Api_PokemonState();
}

class _Api_PokemonState extends State<Api_Pokemon> {
  PokemonController controller = PokemonController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Pokemon")),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(children: [
                  Image.network(
                      "https://raw.githubusercontent.com/PokeAPI/media/master/logo/pokeapi_256.png"),
                  TextField(
                    controller: controller.campoEntrada,
                    maxLength: 8,
                    keyboardType: TextInputType.text,
                    decoration:
                        InputDecoration(hintText: "Digite o nome do Pokemon"),
                  ),
                  ElevatedButton.icon(
                      onPressed: (() async {
                        await controller.consultapokemon();
                        setState(() {});
                        Alert(
                            context: context,
                            buttons: [
                              DialogButton(
                                child: Text(
                                  "Ok",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                onPressed: () => Navigator.pop(context),
                                width: 120,
                              )
                            ],
                            title: controller.tituloAlert,
                            content: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Image(
                                    image: NetworkImage(controller.linkimagem),
                                    width: 100,
                                  ),
                                ),
                                Text(
                                  controller.msgAlert,
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            )).show();
                      }),
                      icon: Icon(Icons.search),
                      label: Text("Buscar"))
                ]))));
  }
}
