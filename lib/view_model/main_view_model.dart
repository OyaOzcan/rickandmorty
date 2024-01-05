import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/model.dart';
import 'package:http/http.dart' as http;

class MainViewModel with ChangeNotifier {
  final String _apiUrl= "https://rickandmortyapi.com/api/character";

  List<Character> _characters = [];

  List<Character> get characters => _characters;

  MainViewModel(){
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _getCharacters();
    });
  }

  void _getCharacters() async {
    Uri uri = Uri.parse(_apiUrl);
    http.Response response = await http.get(uri);

     Map<String, dynamic> allCharacters = jsonDecode(response.body);
    
    List<Map<String, dynamic>> allCharacter = List<Map<String, dynamic>>.from(allCharacters['results']);

    for (Map<String, dynamic> characterMap in allCharacter)
    {
      Character character = Character.fromJson(characterMap);
      _characters.add(character);
    }
    notifyListeners();
  }
}


