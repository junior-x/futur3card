import 'package:flutter/material.dart';
import 'package:consumindo_api/views/widgets/recipe_card.dart';
import 'package:consumindo_api/models/recipe.dart';
import 'package:consumindo_api/models/recipe.api.dart';

class HomePage extends StatefulWidget {
  //const HomePage({Key? key}) : super(key: key);
  const HomePage({
    Key? key,
    required this.name,
  }) : super(key: key);
  final String name;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<Recipe> _recipes;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();

    getRecipes();
  }

  Future<void> getRecipes() async {
    _recipes = await RecipeApi.getRecipe();
    setState(() {
      _isLoading = false;
    });

    ///print(_recipes);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 85, 66, 110),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.restaurant_menu),
              SizedBox(width: 10),
              Text('Food Recipes'),
              SizedBox(width: 1),
            ],
          ),
        ),
        body: _isLoading
            ? Center(child: CircularProgressIndicator())
            : SingleChildScrollView(
                child: Column(children: [
                  Container(
                    height: 100,
                    child: Row(children: [
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 30),
                        margin: const EdgeInsets.symmetric(horizontal: 16),
                        child: const Text(
                          '👋',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                      Text(
                        widget.name,
                        style: const TextStyle(fontSize: 30, color: Colors.black),
                      )
                    ]),
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1, childAspectRatio: (1 / .4)),
                    itemCount: _recipes.length,
                    itemBuilder: (context, index) {
                      return RecipeCard(
                        title: _recipes[index].name,
                        cookTime: _recipes[index].totalTime,
                        rating: _recipes[index].rating.toString(),
                        thumbnailUrl: _recipes[index].images,
                      );
                    },
                  ),
                ]),
              ));
  }
}
