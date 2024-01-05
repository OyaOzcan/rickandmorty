import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/model.dart';
import 'package:flutter_application_1/view/details_page.dart';
import 'package:flutter_application_1/view_model/main_view_model.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          //title: Text('Rick and Morty')
          title: Image.asset(
        'assets/rick.png',
        scale: 2,
      )),
      body: _buildCharacterList(context),
    );
  }
}

Widget _buildCharacterList(BuildContext context) {
  return Consumer<MainViewModel>(
      builder: (context, viewModel, child) => ListView.builder(
          itemCount: viewModel.characters.length,
          itemBuilder: (context, index) {
            Character character = viewModel.characters[index];
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: GestureDetector(
                onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailsPage(character)),
              ),
                child: Container(
                  decoration: BoxDecoration(
                  color: Color.fromARGB(255, 33, 168, 163),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.yellow,
                  width: 2),
                  ),
                  child: ListTile(
                    title: Column(
                      children: [
                        Text(
                          character.name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                        Text(
                          character.status,
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          character.species,
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          character.gender,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    leading: Container(
                      child: Image.network(character.image),
                    ),
                  ),
                ),
              ),
            );
          }));
}
