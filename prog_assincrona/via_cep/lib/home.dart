import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _result = "";
  TextEditingController _controllerCep = TextEditingController();

  //função assincrona
  _recuperarCep() async {
    String cepInformado = _controllerCep.text;
    String url = "https://viacep.com.br/ws/${cepInformado}/json/";
    http.Response response;
    response = await http.get(Uri.parse(url));

    Map<String, dynamic> obj = jsonDecode(response.body);
    String cep = obj["cep"];
    String logradouro = obj["logradouro"];
    String bairro = obj["bairro"];
    String localidade = obj["localidade"];
    setState(() {
      _result = "${cep},${logradouro}, ${bairro}, ${localidade}";
    });
    print(
        "Resposta\n cep: ${cep}\n logradouro: ${logradouro}\n bairro: ${bairro}\n localidade ${localidade} ");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Consumo de Serviço Web'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(40),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Digite o cep. Ex: 67133025"
              ),
              style: TextStyle(fontSize: 16),
              controller: _controllerCep,
            ),
            TextButton(
                onPressed: () => _recuperarCep(), child: Text("Clique aqui")),
            Text(_result),
          ]),
        ),
      ),
    );
  }
}
