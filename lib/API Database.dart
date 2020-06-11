/*
import 'package:flutter/material.dart';
import 'dart:convert';
//import 'package:http/http.dart';

class RecipeList extends StatefulWidget {
  @override
  _RecipeListState createState() => _RecipeListState();
}

class _RecipeListState extends State<RecipeList> {
  List data;

  @override
  void initState(){
    super.initState();
    this.getRecipes();
  }
  Future<String> getRecipes() async {
    //Response response = await get('https://recipesapi.herokuapp.com/',);
    setState(() {
      print('${response.body}');
      var recipesList = jsonDecode(response.body);
      data = recipesList['recipes'];
    });
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe List Demo'),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context,index){
          return new ListTile(
            title: Text(data[index]['title']),
            //leading: Image.network(data[index]['image_url']),
          );
        },
      ),
    );
  }
}
*/







/*
class LoadAPI{
  String url;
  LoadAPI(this.url);
}*/
