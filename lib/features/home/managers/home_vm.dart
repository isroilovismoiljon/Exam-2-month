import 'package:flutter/cupertino.dart';

import '../../../core/client.dart';
import '../../../data/models/recipes/recenly_added_recipe.dart';
import '../../../data/models/recipes/trending_recipe.dart';
import '../../../data/models/recipes/your_recipe_model.dart';
import '../../../data/models/users/chef_model.dart';

class HomeViewModel extends ChangeNotifier{
  TrendingRecipeModel? trendingRecipe;
  bool isLoadingTrendingRecipe = true;
  List<YourRecipeModel> yourRecipes = [];
  bool isLoadingYourRecipes = true;
  List<RecentlyAddedRecipeModel> recentlyRecipes = [];
  bool isLoadingRecentlyRecipes = true;
  List<ChefModel> chefs = [];
  bool isLoadingChefs = true;
  String errorYourRecipes = '';


  void getRecipes(int id)async{
    isLoadingYourRecipes = true;
    notifyListeners();
    var response = await dio.get("/recipes/list?Page=1&Limit=2");
    if (response.statusCode != 200) {
      errorYourRecipes = "Error: ${response.data}";
    } else{
      errorYourRecipes = '';
      yourRecipes = (response.data as List)
          .map((x) => YourRecipeModel.fromJson(x))
          .toList();

    }
    isLoadingYourRecipes = false;
    notifyListeners();
  }
}