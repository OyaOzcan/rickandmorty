import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/model.dart';
import 'package:flutter_application_1/view_model/main_view_model.dart';
import 'package:provider/provider.dart';

class DetailsPage extends StatelessWidget {
  Character character;

  DetailsPage(this.character, {super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 2, 75, 73),
             title: Text(
              character.name,
              style: TextStyle(fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 25),
            ),

      ),
        backgroundColor: Color.fromARGB(255, 2, 75, 73),
        body: SafeArea(
          child: Column(
            children: [
            SizedBox(height: 20),
              Center(child: Image.network(character.image)),
              SizedBox(height: 10),
              Text(
                character.status,
                style: TextStyle(fontSize: 20,
                color: Colors.white),
              ),
              SizedBox(height: 10),
              Text(
                character.gender,
                style: TextStyle(fontSize: 20,
                color: Colors.white),
              ),
            ],
          ),
        ));
  }
}
